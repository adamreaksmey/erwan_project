<?php

namespace App\Http\Controllers;

use App\Imports\DataImport;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Facades\Excel;
use ZipArchive;
use Illuminate\Support\Facades\File;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use App\Models\ImportedFile;
use App\Models\User;
use Illuminate\Support\Str;

class ExcelController extends Controller
{
    public function import(Request $request, ImportedFile $filedata)
    {
        try {
            $file = $request->file('file');
            if (!$file){
                return redirect()->back()->with('error', 'Please choose a file to import');
            }
            Excel::import(new DataImport, $file);
            $this->export($filedata);
            return redirect()->back()->with('success', 'File imported successfully.');
        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->back()->with('error', 'File import failed: ' . $e->getMessage());
        }
    }

    public function storeDefaultFile(Request $request, User $user){
        $file = $request->file('file');
        $filename = Str::random(20). '.'.$file->getClientOriginalExtension(); 
        $file->move(base_path("/storage/app/main_file/"), $filename);

        // fetch column values ...continue

        $user->where('id', 1)->update([
            'default_file' => $filename,
        ]);

        return response()->json('sucsess');
    }

    public function export($filedata)
    {
        $file = base_path("/storage/app/main_file/20220001685.xls");
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
                $spreadsheet->getActiveSheet()->setCellValue('A21', $guest_names[$message_index] ?? null);
                $spreadsheet->getActiveSheet()->setCellValue('B15', $invoice_number[$message_index] ?? null);
                $spreadsheet->getActiveSheet()->setCellValue('B17', $current_date);
                $spreadsheet->getActiveSheet()->setCellValue('B21', $room);
                $spreadsheet->getActiveSheet()->setCellValue('C21', $nights_stayed[$message_index] ?? null);
                
                $spreadsheet->getActiveSheet()->setCellValue('D21', $price[$message_index] ?? null);
                $spreadsheet->getActiveSheet()->setCellValue('E21', $price[$message_index] ?? null);
                $spreadsheet->getActiveSheet()->setCellValue('D34', $price[$message_index] ?? null);
                $spreadsheet->getActiveSheet()->setCellValue('E34', $price[$message_index] ?? null);

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
