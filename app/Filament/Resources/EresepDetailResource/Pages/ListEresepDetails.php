<?php

namespace App\Filament\Resources\EresepDetailResource\Pages;

use App\Filament\Resources\EresepDetailResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListEresepDetails extends ListRecords
{
    protected static string $resource = EresepDetailResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
