<?php
namespace App\Filament\Resources\EresepDetailResource\Api\Handlers;

use Illuminate\Http\Request;
use Rupadana\ApiService\Http\Handlers;
use App\Filament\Resources\EresepDetailResource;
use App\Filament\Resources\EresepDetailResource\Api\Requests\CreateEresepDetailRequest;

class CreateHandler extends Handlers {
    public static string | null $uri = '/';
    public static string | null $resource = EresepDetailResource::class;

    public static function getMethod()
    {
        return Handlers::POST;
    }

    public static function getModel() {
        return static::$resource::getModel();
    }

    /**
     * Create EresepDetail
     *
     * @param CreateEresepDetailRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function handler(CreateEresepDetailRequest $request)
    {
        $model = new (static::getModel());

        $model->fill($request->all());

        $model->save();

        return static::sendSuccessResponse($model, "Successfully Create Resource");
    }
}