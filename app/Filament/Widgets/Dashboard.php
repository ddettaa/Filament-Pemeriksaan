<?php

namespace App\Filament\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use App\Models\Dokter;
use App\Models\Perawat;
use App\Models\Pemeriksaan;
use App\Models\Poli;

class Dashboard extends BaseWidget
{
    protected function getStats(): array
    {
        return [
            Stat::make('Dokter', Dokter::count())
                ->color('success'),

            Stat::make('Perawat', Perawat::count())
                ->color('warning'),

            Stat::make('Pemeriksaan', Pemeriksaan::count())
                ->color('danger'),

            Stat::make('Poli', Poli::count())
                ->color('info'),
        ];
    }
}
