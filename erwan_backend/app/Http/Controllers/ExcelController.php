<?php

namespace App\Http\Controllers;

use App\Imports\DataImport;
use App\Models\Excelconfig;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Facades\Excel;
use ZipArchive;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use App\Models\ImportedFile;
use App\Models\User;
use Illuminate\Support\Str;

class ExcelController extends Controller
{
    public function import(Request $request, ImportedFile $filedata, User $user, Excelconfig $config)
    {
        try {
            $file = $request->file('file');
            if (!$file){
                return redirect()->back()->with('error', 'Please choose a file to import');
            }
            Excel::import(new DataImport, $file);
            $this->export($filedata, $user, $config);
            return redirect()->back()->with('success', 'File imported successfully.');
        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->back()->with('error', 'File import failed: ' . $e->getMessage());
        }
    }

    public function downloadSampleFile(){
        $filePath = base_path('ErwanTestingFile/2022_December_Sale_report.xls');
        return response()->download($filePath);
    }

    public function storeDefaultFile(Request $request, User $user, Excelconfig $config){
        $file = $request->file('file');
        $filename = Str::random(20). '.'.$file->getClientOriginalExtension(); 
        $file->move(base_path("/storage/app/main_file/"), $filename);

        $guest_name_row = $request->input('guest_name');
        $invoice_number_row = $request->input('invoice_number');
        $date_row = $request->input('date');
        $room_row = $request->input('room');
        $quantity = $request->input('quantity');
        $unit_price_row = $request->input('unit_price');
        $amount_row = $request->input('amount');

        $unit_price_row_total = $request->input('unit_total');
        $amount_price_row_total = $request->input('unit_amount');

        $config->where('id', 1)->update([
            "guest_name" => $guest_name_row,
            "invoice_number" => $invoice_number_row,
            "current_date" => $date_row,
            "room" => $room_row,
            "nights_stayed" => $quantity,
            "unit_price" => $unit_price_row,
            "amount_price" => $amount_row,
            "unit_price_total" => $unit_price_row_total,
            "amount_price_row_total" => $amount_price_row_total
        ]);

        $user->where('id', 1)->update([
            'default_file' => $filename,
        ]);

        return redirect()->back()->with('success', 'Configuration successful');
    }

    public function export($filedata, $user, $config)
    {
        $getfile_name = $user->where('id', 1)->pluck('default_file')[0];
        $file = base_path("/storage/app/main_file/$getfile_name");
        $num_copies = count($filedata::all()) - 1;

        $spreadsheet = IOFactory::load($file);

        $guest_names = $filedata::all()->pluck('guest_name');
        $invoice_number = $filedata::all()->pluck('reservation_number');
        $current_date = now()->format('d/m/Y');
        $room = "Room" . " " . rand(1, 19);
        
        $nights_stayed = $filedata::all()->pluck('number_nights_stayed');

        $price = $filedata::all()->pluck('total_revenue');

        // Create a zip archive of the edited files
        $zip = new ZipArchive;
        $zip_name = now()->format('Ymd_His') . '.zip';
        if ($zip->open(storage_path('app/' . $zip_name), ZipArchive::CREATE) === TRUE) {
            for ($i = 1; $i <= $num_copies; $i++) {
                // Generate a random name for the file in the zip folder
                $zip_file_name = 'Guest' . $i . '.xlsx';
                $worksheet = $spreadsheet->getActiveSheet();
                $worksheet->getRowDimension(12)->setRowHeight(42);

                // Set the height of column A13 to 23
                $worksheet->getRowDimension(13)->setRowHeight(23);
                
                // Set the height of column A34 to 17
                $worksheet->getRowDimension(34)->setRowHeight(17);

                // Specify column
                // $worksheet->getColumnDimension('Z')->getRowDimension(900)->setRowHeight(40);

                // Set the value of cell A1 to the appropriate message
                $message_index = $i - 1;

                $_guestNameRow = $config->where('id', 1)->pluck('guest_name')[0];
                $_invoiceNumRow = $config->where('id', 1)->pluck('invoice_number')[0];
                $_dateRow = $config->where('id', 1)->pluck('current_date')[0];
                $_roomRow = $config->where('id', 1)->pluck('room')[0];
                $_quantity = $config->where('id', 1)->pluck('nights_stayed')[0];
                $_unitPrice = $config->where('id', 1)->pluck('unit_price')[0];
                $_amountPrice = $config->where('id', 1)->pluck('amount_price')[0];

                $_amountTotal = $config->where('id', 1)->pluck('amount_price_row_total')[0];
                $_unitTotal = $config->where('id', 1)->pluck('unit_price_total')[0];


                $spreadsheet->getActiveSheet()->setCellValue($_guestNameRow, $guest_names[$message_index] ?? null);
                $spreadsheet->getActiveSheet()->setCellValue($_invoiceNumRow, $invoice_number[$message_index] ?? null);
                $spreadsheet->getActiveSheet()->setCellValue($_dateRow, $current_date);
                $spreadsheet->getActiveSheet()->setCellValue($_roomRow, $room);
                $spreadsheet->getActiveSheet()->setCellValue($_quantity, $nights_stayed[$message_index] ?? null);
                
                $spreadsheet->getActiveSheet()->setCellValue($_unitPrice, ((double)$price[$message_index] / (int)$nights_stayed[$message_index]) ?? null);

                $spreadsheet->getActiveSheet()->setCellValue($_amountPrice, $price[$message_index] ?? null);
                $spreadsheet->getActiveSheet()->setCellValue($_unitTotal, ((double)$price[$message_index] / (int)$nights_stayed[$message_index]) ?? null);
                $spreadsheet->getActiveSheet()->setCellValue($_amountTotal, $price[$message_index] ?? null);

                // Save the edited file to a PHP output stream
                $writer = new Xlsx($spreadsheet);
                ob_start();
                $writer->save('php://output');
                $file_contents = ob_get_clean();

                // Add the edited file to the zip folder with the random name
                $zip->addFromString($zip_file_name, $file_contents);
            }
            $zip->close();

            // Prompt the user to download the zip file
            header("Content-Type: application/zip");
            header("Content-Disposition: attachment; filename=$zip_name");
            header("Content-Length: " . filesize(storage_path('app/' . $zip_name)));
            readfile(storage_path('app/' . $zip_name));
            exit;
        }
    }
}
