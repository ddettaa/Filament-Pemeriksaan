<?php

namespace App\Filament\Resources;

use App\Filament\Resources\JadwalResource\Pages;
use App\Filament\Resources\JadwalResource\RelationManagers;
use App\Models\Jadwal;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\TimePicker;

class JadwalResource extends Resource
{
    protected static ?string $model = Jadwal::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\select::make('id_perawat')
                    ->required()
                    ->label('ID Perawat')
                    ->options(function () {
                        return \App\Models\Perawat::pluck('nama_perawat', 'id_perawat');
                    })
                    ->searchable(),
                Forms\Components\select::make('id_dokter')
                    ->required()
                    ->label('ID Dokter')
                    ->options(function () {
                        return \App\Models\Dokter::pluck('nama_dokter', 'id_dokter');
                    })
                    ->searchable(),
                Forms\Components\select::make('hari')
                    ->options([
                        'Senin' => 'Senin',
                        'Selasa' => 'Selasa',
                        'Rabu' => 'Rabu',
                        'Kamis' => 'Kamis',
                        'Jumat' => 'Jumat',
                        'Sabtu' => 'Sabtu',
                        'Minggu' => 'Minggu',
                    ])
                    ->required(),
                Forms\Components\TimePicker::make('jam_mulai')
                    ->required(),
                Forms\Components\TimePicker::make('jam_akhir')
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('perawat.nama_perawat')
                    ->label('Nama Perawat')
                    ->sortable(),
                Tables\Columns\TextColumn::make('dokter.nama_dokter')
                    ->label('Nama Dokter')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('hari'),
                Tables\Columns\TextColumn::make('jam_mulai'),
                Tables\Columns\TextColumn::make('jam_akhir'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
   Tables\Actions\DeleteAction::make(),

            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListJadwals::route('/'),
            'create' => Pages\CreateJadwal::route('/create'),
            'edit' => Pages\EditJadwal::route('/{record}/edit'),
        ];
    }
    public static function shouldRegisterNavigation(): bool
{
    return auth()->user()->hasRole('super_admin'); // atau role lain yang boleh lihat
}

}
