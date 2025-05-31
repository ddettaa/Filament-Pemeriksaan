<?php
namespace App\Filament\Resources\JadwalResource\Api\Handlers;

use Illuminate\Http\Request;
use Rupadana\ApiService\Http\Handlers;
use App\Filament\Resources\JadwalResource;
use App\Filament\Resources\JadwalResource\Api\Requests\UpdateJadwalRequest;

class UpdateHandler extends Handlers {
    public static string | null $uri = '/{id}';
    public static string | null $resource = JadwalResource::class;

    public static function getMethod()
    {
        return Handlers::PUT;
    }

    public static function getModel() {
        return static::$resource::getModel();
    }


    /**
     * Update Jadwal
     *
     * @param UpdateJadwalRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function handler(UpdateJadwalRequest $request)
    {
        $id = $request->route('id');

        $model = static::getModel()::find($id);

        if (!$model) return static::sendNotFoundResponse();

        $model->fill($request->all());

        $model->save();

        return static::sendSuccessResponse($model, "Successfully Update Resource");
    }
}