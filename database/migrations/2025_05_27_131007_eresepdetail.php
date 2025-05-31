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
        Schema::create('detail_e_resep', function (Blueprint $table) {
    $table->unsignedSmallInteger('id_resep');
    $table->unsignedSmallInteger('id_obat');
    $table->smallInteger('jumlah');
    $table->string('aturan_pakai', 50);

    $table->foreign('id_resep')->references('id_resep')->on('e_resep')->onDelete('cascade');
});

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
        Schema::dropIfExists('detail_e_resep');
    }
};
