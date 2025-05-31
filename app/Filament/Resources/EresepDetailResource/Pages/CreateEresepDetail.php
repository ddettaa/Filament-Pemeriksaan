<?php

namespace App\Filament\Resources\EresepDetailResource\Pages;

use App\Filament\Resources\EresepDetailResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateEresepDetail extends CreateRecord
{
    protected static string $resource = EresepDetailResource::class;
    protected static bool $canCreateAnother = false;

    //customize redirect after create
    public function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
