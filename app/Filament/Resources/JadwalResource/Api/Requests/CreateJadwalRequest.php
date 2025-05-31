<?php

namespace App\Filament\Resources\JadwalResource\Api\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateJadwalRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
			'id_jadwal' => 'required|integer',
			'id_perawat' => 'required|integer',
			'id_dokter' => 'required|integer',
			'hari' => 'required',
			'jam_mulai' => 'required',
			'jam_akhir' => 'required'
		];
    }
}
