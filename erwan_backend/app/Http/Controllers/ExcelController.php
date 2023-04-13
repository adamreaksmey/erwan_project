<?php

namespace App\Http\Controllers;

use App\Imports\DataImport;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;
use Maatwebsite\Excel\Facades\Excel;
use ZipArchive;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use Illuminate\Support\Facades\Storage;

class ExcelController extends Controller
{
    public function import(Request $request)
    {
        try {
            DB::beginTransaction();

            $file = $request->file('file');
            Excel::import(new DataImport, $file);

            DB::commit();

            return redirect()->back()->with('success', 'File imported successfully.');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->with('error', 'An error occurred while importing the file.');
        }
    }

    public function export(Request $request)
    {
        // Get the uploaded file and the number of copies to make
        $file = $request->file('file');
        $num_copies = $request->input('num_copies');

        // Load the Excel file into a PHPExcel object
        $spreadsheet = IOFactory::load($file);

        // Set the value of cell A1 to "Hello world"
        $spreadsheet->getActiveSheet()->setCellValue('A1', 'Hello world');

        // Create a zip archive of the edited files
        $zip = new ZipArchive;
        $zip_name = Str::random(10) . '.zip';
        if ($zip->open(storage_path('app/' . $zip_name), ZipArchive::CREATE) === TRUE) {
            for ($i = 1; $i <= $num_copies; $i++) {
                // Generate a random name for the file in the zip folder
                $zip_file_name = Str::random(10) . '.xlsx';

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
