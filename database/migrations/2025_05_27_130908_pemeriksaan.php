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
        Schema::create('pemeriksaan', function (Blueprint $table) {
    $table->smallIncrements('no_registrasi');
    $table->unsignedSmallInteger('id_dokter');
    $table->unsignedSmallInteger('id_perawat');
    $table->integer('rm');
    $table->smallInteger('suhu');
    $table->string('tensi', 10);
    $table->smallInteger('tinggi_badan');
    $table->smallInteger('berat_badan');
    $table->string('diagnosa', 50);
    $table->string('tindakan', 50);
    $table->enum('status', ['Menunggu', 'Diperiksa', 'Selesai Diperiksa', 'Sudah Bayar', 'Sudah ambil obat']);

    $table->foreign('id_dokter')->references('id_dokter')->on('dokter')->onDelete('cascade');
    $table->foreign('id_perawat')->references('id_perawat')->on('perawat')->onDelete('cascade');
});

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
        Schema::dropIfExists('pemeriksaan');
    }
};
