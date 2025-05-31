<?php

namespace App\Filament\Resources\EresepDetailResource\Pages;

use App\Filament\Resources\EresepDetailResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditEresepDetail extends EditRecord
{
    protected static string $resource = EresepDetailResource::class;

    protected function getHeaderActions(): array
    {
        return [
        ];
    }

    //customize redirect after create
    public function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
