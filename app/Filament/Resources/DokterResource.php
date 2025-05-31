<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DokterResource\Pages;
use App\Filament\Resources\DokterResource\RelationManagers;
use App\Models\Dokter;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Auth;

class DokterResource extends Resource
{
    protected static ?string $model = Dokter::class;
    protected static ?string $navigationIcon = 'heroicon-o-users';
    protected static ?string $navigationLabel = 'Dokter';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\select::make('id')
                    ->label('ID')
                    ->options(function () {
                        return \App\Models\User::whereHas('roles', function ($query) {
                            $query->where('name', 'dokter');
                        })->pluck('name', 'id');
                    })
                    ->searchable()
                    ->required(),
                Forms\Components\TextInput::make('nama_dokter')
                    ->required()
                    ->maxLength(50),
                Forms\Components\TextInput::make('no_hp_dokter')
                    ->required()
                    ->maxLength(15),
                Forms\Components\TextInput::make('spesialis')
                    ->required()
                    ->maxLength(50),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->label('id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('nama_dokter')
                    ->searchable(),
                Tables\Columns\TextColumn::make('no_hp_dokter')
                    ->searchable(),
                Tables\Columns\TextColumn::make('spesialis')
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
            'index' => Pages\ListDokters::route('/'),
            'create' => Pages\CreateDokter::route('/create'),
            'edit' => Pages\EditDokter::route('/{record}/edit'),
        ];
    }
    public static function shouldRegisterNavigation(): bool
{
    return auth()->user()->hasRole('super_admin'); // atau role lain yang boleh lihat
}

}
