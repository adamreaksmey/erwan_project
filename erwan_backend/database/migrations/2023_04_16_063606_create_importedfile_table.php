<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateImportedfileTable extends Migration
{
    public function up()
    {
        Schema::dropIfExists('importedfile');
        Schema::create('importedfile', function (Blueprint $table) {
            $table->id();
            $table->string('guest_name')->nullable();
            $table->bigInteger('number_nights_stayed')->nullable();
            $table->float('total_revenue')->nullable();
            $table->bigInteger('reservation_number')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('importedfile');
    }
}