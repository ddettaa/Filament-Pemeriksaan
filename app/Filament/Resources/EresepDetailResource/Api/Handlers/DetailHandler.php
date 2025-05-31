<?php

namespace App\Filament\Resources\EresepDetailResource\Api\Handlers;

use App\Filament\Resources\SettingResource;
use App\Filament\Resources\EresepDetailResource;
use Rupadana\ApiService\Http\Handlers;
use Spatie\QueryBuilder\QueryBuilder;
use Illuminate\Http\Request;
use App\Filament\Resources\EresepDetailResource\Api\Transformers\EresepDetailTransformer;

class DetailHandler extends Handlers
{
    public static string | null $uri = '/{id}';
    public static string | null $resource = EresepDetailResource::class;


    /**
     * Show EresepDetail
     *
     * @param Request $request
     * @return EresepDetailTransformer
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

        return new EresepDetailTransformer($query);
    }
}
