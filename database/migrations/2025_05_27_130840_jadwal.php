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
        //
        Schema::create('jadwal', function (Blueprint $table) {
    $table->smallIncrements('id_jadwal');
    $table->unsignedSmallInteger('id_perawat');
    $table->unsignedSmallInteger('id_dokter');
    $table->enum('hari', ['SENIN', 'SELASA', 'RABU', 'KAMIS', 'JUMAT', 'SABTU', 'MINGGU']);
    $table->time('jam_mulai');
    $table->time('jam_akhir');

    $table->foreign('id_perawat')->references('id_perawat')->on('perawat')->onDelete('cascade');
    $table->foreign('id_dokter')->references('id_dokter')->on('dokter')->onDelete('cascade');
});

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
        Schema::dropIfExists('jadwal');
    }
};
