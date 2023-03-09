<?php

namespace App\Http\Controllers;

use App\Models\ImportedFile;
use Illuminate\Http\Request;

class GuestsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(ImportedFile $file)
    {
        return $file::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(ImportedFile $fileImported)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ImportedFile $fileImported)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ImportedFile $fileImported)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ImportedFile $fileImported)
    {
        //
    }
}
