<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use Illuminate\Database\Eloquent\Model;

class pemeriksaan extends Model
{
    //
    use HasFactory;
    protected $table = 'pemeriksaan';
    protected $primaryKey = 'no_registrasi'; // assuming 'no_registrasi' is the primary key
    public $timestamps = false; // enable timestamps

    protected $fillable = [
        'no_registrasi',
        'id_dokter',
        'id_perawat',
        'rm',
        'suhu',
        'tensi',
        'tinggi_badan',
        'berat_badan',
        'diagnosa',
        'tindakan',
        'status'
    ];
    // add guarded
    protected $guarded = ['id'];
    // add hidden
    protected $hidden = ['created_at', 'updated_at'];

    public function dokter()
    {
        return $this->belongsTo(Dokter::class, 'id_dokter');
    }
    public function perawat()
    {
        return $this->belongsTo(Perawat::class, 'id_perawat');
    }
}
