<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PoliResource\Pages;
use App\Filament\Resources\PoliResource\RelationManagers;
use App\Models\Poli;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PoliResource extends Resource
{
    protected static ?string $model = Poli::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationLabel = 'Poli';

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
                Forms\Components\TextInput::make('nama_poli')
                    ->required()
                    ->maxLength(50),
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
                    ->sortable(),
                Tables\Columns\TextColumn::make('nama_poli')
                    ->searchable(),
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
            'index' => Pages\ListPolis::route('/'),
            'create' => Pages\CreatePoli::route('/create'),
            'edit' => Pages\EditPoli::route('/{record}/edit'),
        ];
    }
    public static function shouldRegisterNavigation(): bool
{
    return auth()->user()->hasRole('super_admin'); // atau role lain yang boleh lihat
}

}
