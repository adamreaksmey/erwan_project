<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use App\Models\ImportedFile;

class DataImport implements ToCollection
{
    public function collection(Collection $collection)
    {
        // Truncate the ImportedFile table
        ImportedFile::truncate();

        $startRow = 6; 
        foreach ($collection->slice($startRow - 1) as $row) {
            // dd($row);
            ImportedFile::create([
                'guest_name' => $row[2],
                'number_nights_stayed' => $row[5],
            ]);
        }
    }
}