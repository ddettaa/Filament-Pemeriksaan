<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class jadwal extends Model
{
    //
    protected $table = 'jadwal';
    protected $primaryKey = 'id_jadwal';
    public $timestamps = false; // disable timestamps
    // define the relationship with Dokter
    public function dokter()
    {
        return $this->belongsTo(Dokter::class, 'id_dokter', 'id_dokter');
    }
    // define the relationship with Perawat
    public function perawat()
    {
        return $this->belongsTo(Perawat::class, 'id_perawat', 'id_perawat');
    }
    // define the relationship with User

    // add fillable
    protected $fillable = [
        'id_jadwal',
        'id_dokter',
        'id_perawat',
        'hari',
        'jam_mulai',
        'jam_akhir'
    ];
    // add guaded
    protected $guarded = ['id'];
    // add hidden
    protected $hidden = ['created_at', 'updated_at'];
}
