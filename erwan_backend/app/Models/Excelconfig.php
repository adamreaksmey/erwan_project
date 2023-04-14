<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Excelconfig extends Model
{
    use HasFactory;
    protected $table = 'excelconfig';
    protected $guard = [
        'id',
        'created_at',
        'deleted_at'
    ];
}
