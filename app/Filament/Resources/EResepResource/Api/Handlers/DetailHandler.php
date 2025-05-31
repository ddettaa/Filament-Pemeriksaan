<?php

namespace App\Filament\Resources\EresepResource\Api\Handlers;

use App\Filament\Resources\SettingResource;
use App\Filament\Resources\EresepResource;
use Rupadana\ApiService\Http\Handlers;
use Spatie\QueryBuilder\QueryBuilder;
use Illuminate\Http\Request;
use App\Filament\Resources\EresepResource\Api\Transformers\EresepTransformer;

class DetailHandler extends Handlers
{
    public static string | null $uri = '/{id}';
    public static string | null $resource = EresepResource::class;


    /**
     * Show Eresep
     *
     * @param Request $request
     * @return EresepTransformer
     */
    public function handler(Request $request)
    {
        $id = $request->route('id');
        
        $query = static::getEloquentQuery();

        $query = QueryBuilder::for(
            $query->where(static::getKeyName(), $id)
        )
            ->first();

        if (!$query) return static::sendNotFoundResponse();

        return new EresepTransformer($query);
    }
}
