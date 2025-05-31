<?php
namespace App\Filament\Resources\EresepResource\Api;

use Rupadana\ApiService\ApiService;
use App\Filament\Resources\EresepResource;
use Illuminate\Routing\Router;


class EresepApiService extends ApiService
{
    protected static string | null $resource = EresepResource::class;

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
