<?php

namespace App\Filament\Resources\PemeriksaanResource\Pages;

use App\Filament\Resources\PemeriksaanResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditPemeriksaan extends EditRecord
{
    protected static string $resource = PemeriksaanResource::class;

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
