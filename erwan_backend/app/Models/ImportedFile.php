<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ImportedFile extends Model
{
    use HasFactory;

    protected $table = 'importedfile';

    protected $fillable = [
        'guest_name',
        'number_nights_stayed',
        'total_revenue',
        'reservation_number'
    ];
}
?>
