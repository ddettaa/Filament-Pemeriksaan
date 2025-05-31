<?php

namespace App\Filament\Resources\EresepResource\Api\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateEresepRequest extends FormRequest
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
			'id_resep' => 'required|integer',
			'no_registrasi' => 'required|integer'
		];
    }
}
