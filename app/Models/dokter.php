<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class dokter extends Model
{
    //
    protected $table = 'dokter';
    protected $primaryKey = 'id_dokter';
    public $timestamps = false; // disable timestamps

    // add fillable
    protected $fillable = [
        'id_dokter',
        'id',
        'nama_dokter',
        'no_hp_dokter',
        'spesialis',

        
    ];
    public function user()
    {
        return $this->belongsTo(User::class, 'id',);
    }
    // add guaded
    protected $guarded = ['id'];
    // add hidden
    protected $hidden = ['created_at', 'updated_at'];
}
