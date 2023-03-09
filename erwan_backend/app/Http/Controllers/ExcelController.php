<?php

namespace App\Http\Controllers;

use App\Imports\DataImport;
use App\Models\ImportedFile;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use ZipArchive;

class ExcelController extends Controller
{
    public function import(Request $request)
    {
        $file = $request->file('file');
        Excel::import(new DataImport, $file);
        return redirect()->back()->with('success', 'File imported successfully.');
    }

    private function editFileWithExportedData($filePath, $data)
    {

        $spreadsheet = \PhpOffice\PhpSpreadsheet\IOFactory::load($filePath);
        $worksheet = $spreadsheet->getActiveSheet();

        // Write the exported data to the worksheet
        $startRow = 6;
        foreach ($data as $key => $row) {
            $rowIndex = $key + $startRow;
            $worksheet->setCellValue('A' . $rowIndex, $row->id);
            $worksheet->setCellValue('B' . $rowIndex, $row->created_at);
            $worksheet->setCellValue('C' . $rowIndex, $row->guest_name);
            $worksheet->setCellValue('D' . $rowIndex, $row->guest_email);
            $worksheet->setCellValue('E' . $rowIndex, $row->guest_phone_number);
            $worksheet->setCellValue('F' . $rowIndex, $row->number_nights_stayed);
        }


        $tempFilePath = storage_path('app/temp/' . uniqid('edited_file_') . '.csv');
        $writer = new \PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
        $writer->save($tempFilePath);


        $zipFilePath = storage_path('app/temp/' . uniqid('edited_file_') . '.zip');
        $zip = new ZipArchive();
        $zip->open($zipFilePath, ZipArchive::CREATE);
        $zip->addFile($tempFilePath, 'data.csv');
        $zip->close();


        unlink($tempFilePath);

        return $zipFilePath;
    } 

    public function export(Request $request)
    {
        // Get the path of the existing file
        $filePath = $request->file('file')->getPathname();

        // Get the data to export from the ImportedFile model
        $data = ImportedFile::all();

        // Edit the existing file with the exported data
        $zipFilePath = $this->editFileWithExportedData($filePath, $data);

        // Download the edited file as a zip
        return response()->download($zipFilePath)->deleteFileAfterSend(true);
    }
} 

