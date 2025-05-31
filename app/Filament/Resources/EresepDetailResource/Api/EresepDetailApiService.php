<?php
namespace App\Filament\Resources\EresepDetailResource\Api;

use Rupadana\ApiService\ApiService;
use App\Filament\Resources\EresepDetailResource;
use Illuminate\Routing\Router;


class EresepDetailApiService extends ApiService
{
    protected static string | null $resource = EresepDetailResource::class;

    public static function handlers() : array
    {
        return [
            Handlers\CreateHandler::class,
            Handlers\UpdateHandler::class,
            Handlers\DeleteHandler::class,
            Handlers\PaginationHandler::class,
            Handlers\DetailHandler::class
        ];

    }
}
