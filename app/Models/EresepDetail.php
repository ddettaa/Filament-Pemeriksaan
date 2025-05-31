<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use Illuminate\Database\Eloquent\Model;

class EresepDetail extends Model
{
    //
    use HasFactory;
    protected $table = 'detail_e_resep';
    public $timestamps = false; // disable timestamps

    // add fillable
    protected $fillable = [
        'id_resep',
        'id_obat',
        'jumlah',
        'aturan_pakai'
    ];
    // add guaded
    protected $guarded = ['id'];
    // add hidden
    protected $hidden = ['created_at', 'updated_at'];
}
