<?php
namespace App\Filament\Resources\EresepResource\Api\Handlers;

use Illuminate\Http\Request;
use Rupadana\ApiService\Http\Handlers;
use App\Filament\Resources\EresepResource;
use App\Filament\Resources\EresepResource\Api\Requests\CreateEresepRequest;

class CreateHandler extends Handlers {
    public static string | null $uri = '/';
    public static string | null $resource = EresepResource::class;

    public static function getMethod()
    {
        return Handlers::POST;
    }

    public static function getModel() {
        return static::$resource::getModel();
    }

    /**
     * Create Eresep
     *
     * @param CreateEresepRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function handler(CreateEresepRequest $request)
    {
        $model = new (static::getModel());

        $model->fill($request->all());

        $model->save();

        return static::sendSuccessResponse($model, "Successfully Create Resource");
    }
}