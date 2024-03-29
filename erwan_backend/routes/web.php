<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ExcelController;
use App\Http\Controllers\GuestsController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::post('/import', [ExcelController::class, 'import'])->name('import');
Route::post('/export', [ExcelController::class, 'export'])->name('export');
Route::post('/storedefault', [ExcelController::class, 'storeDefaultFile'])->name('store');
Route::get('/downloadsample', [ExcelController::class, 'downloadSampleFile'])->name('sample');
Route::apiResource('/guest' , GuestsController::class);