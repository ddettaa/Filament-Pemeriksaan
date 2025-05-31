<?php

namespace App\Filament\Resources\PemeriksaanResource\Pages;

use App\Filament\Resources\PemeriksaanResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreatePemeriksaan extends CreateRecord
{
    protected static string $resource = PemeriksaanResource::class;
    protected static bool $canCreateAnother = false;

    //customize redirect after create
    public function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
