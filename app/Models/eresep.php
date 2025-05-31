<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class eresep extends Model
{
    //
    protected $table = 'e_resep';
    protected $primaryKey = 'id_resep';
    public $timestamps = false; // disable timestamps
    // add fillable
    protected $fillable = [
        'id_resep',
        'no_registrasi'
    ];
    // add guaded
    protected $guarded = ['id'];

    public function noRegistrasi()
    {
        return $this->belongsTo(Registrasi::class, 'no_registrasi', 'no_registrasi');
    }
    
    public function detail_resep()
    {
        return $this->hasMany(\App\Models\eresep_detail::class, 'id_resep');
    }


    // add hidden
    protected $hidden = ['created_at', 'updated_at'];
}
