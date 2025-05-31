<?php
namespace App\Filament\Resources\EresepResource\Api\Handlers;

use Illuminate\Http\Request;
use Rupadana\ApiService\Http\Handlers;
use App\Filament\Resources\EresepResource;
use App\Filament\Resources\EresepResource\Api\Requests\UpdateEresepRequest;

class UpdateHandler extends Handlers {
    public static string | null $uri = '/{id}';
    public static string | null $resource = EresepResource::class;

    public static function getMethod()
    {
        return Handlers::PUT;
    }

    public static function getModel() {
        return static::$resource::getModel();
    }


    /**
     * Update Eresep
     *
     * @param UpdateEresepRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function handler(UpdateEresepRequest $request)
    {
        $id = $request->route('id');

        $model = static::getModel()::find($id);

        if (!$model) return static::sendNotFoundResponse();

        $model->fill($request->all());

        $model->save();

        return static::sendSuccessResponse($model, "Successfully Update Resource");
    }
}