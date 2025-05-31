<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class poli extends Model
{
    //

    // add fillable
    protected $fillable = [
        'id_poli',
        'nama_poli',
        'id_dokter',
        'id_perawat',
    ];
    // add guaded
    protected $guarded = ['id'];

    public function dokter()
    {
        return $this->belongsTo(Dokter::class, 'id_dokter', 'id_dokter');
    }
    public function perawat()
    {
        return $this->belongsTo(Perawat::class, 'id_perawat', 'id_perawat');
    }
    protected $table = 'poli';
    protected $primaryKey = 'id_poli'; // assuming 'id_poli' is the primary key
    public $timestamps = false; // enable timestamps
    // add hidden
    protected $hidden = ['created_at', 'updated_at'];
}
