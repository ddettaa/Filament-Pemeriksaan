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
    Schema::create('perawat', function (Blueprint $table) {
    $table->smallIncrements('id_perawat');
    $table->unsignedBigInteger('id');
    $table->string('nama_perawat', 50);
    $table->char('no_hp_perawat', 15);

    $table->foreign('id')->references('id')->on('users')->onDelete('cascade');
});

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('perawat');
    }
};
