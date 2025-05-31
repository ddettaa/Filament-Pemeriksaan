<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class perawat extends Model
{
    //
    protected $table = 'perawat';
    protected $primaryKey = 'id_perawat';
    public $timestamps = false; // disable timestamps

    // add fillable
    protected $fillable = [
        'id_perawat',
        'id',
        'nama_perawat',
        'no_hp_perawat',
        'alamat_perawat'
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'id');
    }

    // add guaded
    protected $guarded = ['id'];
    // add hidden
    protected $hidden = ['created_at', 'updated_at'];
}
