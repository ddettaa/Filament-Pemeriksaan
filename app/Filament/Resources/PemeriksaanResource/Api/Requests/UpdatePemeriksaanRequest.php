<?php

namespace App\Filament\Resources\PemeriksaanResource\Api\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdatePemeriksaanRequest extends FormRequest
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
			'no_registrasi' => 'required|integer',
			'id_dokter' => 'required|integer',
			'id_perawat' => 'required|integer',
			'rm' => 'required|integer',
			'suhu' => 'required|integer',
			'tensi' => 'required|string',
			'tinggi_badan' => 'required|integer',
			'berat_badan' => 'required|integer',
			'diagnosa' => 'required|string',
			'tindakan' => 'required|string',
			'status' => 'required'
		];
    }
}
