<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Cache;


class ExecutionController extends Controller
{
    public function executeSqlFileOnce()
    {
        if (!Cache::has('sql_file_executed')) {
            $sql = file_get_contents(base_path('schema/erwan_project_db.sql'));
            DB::unprepared($sql);
            Cache::put('sql_file_executed', true, 1440);
        }
        return;
    }
}
