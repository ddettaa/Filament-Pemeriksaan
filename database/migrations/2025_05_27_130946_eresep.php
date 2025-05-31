<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('e_resep', function (Blueprint $table) {
    $table->smallIncrements('id_resep');
    $table->unsignedSmallInteger('no_registrasi');

    $table->foreign('no_registrasi')->references('no_registrasi')->on('pemeriksaan')->onDelete('cascade');
});

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
        Schema::dropIfExists('e_resep');
    }
};
