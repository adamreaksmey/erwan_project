<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use App\Models\ImportedFile;
use Illuminate\Support\Facades\DB;

class DataImport implements ToCollection
{
    public function collection(Collection $collection)
    {
        // Delete all records from the ImportedFile table
        DB::table('importedfile')->delete();

        $startRow = 6;
        foreach ($collection->slice($startRow - 1) as $row) {
            // dd($row);
            $total_revenue = $row[6];
            $reservation = (int)$row[0];
            if (!$total_revenue || is_string($total_revenue)){
                $total_revenue = 0.00;
            }

            if (!$reservation || !is_int($reservation)){
                $reservation = 0;
            }

            ImportedFile::create([
                'reservation_number' => $reservation,
                'guest_name' => $row[2],
                'number_nights_stayed' => $row[5],
                'total_revenue' => $total_revenue
            ]);
        }
    }
}
