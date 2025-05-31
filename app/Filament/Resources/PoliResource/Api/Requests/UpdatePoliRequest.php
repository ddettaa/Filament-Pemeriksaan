<?php

namespace App\Filament\Resources\PoliResource\Api\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdatePoliRequest extends FormRequest
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
			'id_poli' => 'required|integer',
			'id_perawat' => 'required|integer',
			'id_dokter' => 'required|integer',
			'nama_poli' => 'required|string'
		];
    }
}
