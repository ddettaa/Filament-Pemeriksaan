<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PerawatResource\Pages;
use App\Filament\Resources\PerawatResource\RelationManagers;
use App\Models\Perawat;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PerawatResource extends Resource
{
    protected static ?string $model = Perawat::class;

    protected static ?string $navigationIcon = 'heroicon-o-users';
    protected static ?string $navigationLabel = 'Perawat';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\select::make('id')
                    ->label('ID')
                    ->options(function () {
                        return \App\Models\User::whereHas('roles', function ($query) {
                            $query->where('name', 'perawat');
                        })->pluck('name', 'id');
                    })
                    ->searchable()
                    ->required(),
                Forms\Components\TextInput::make('nama_perawat')
                    ->required()
                    ->maxLength(50),
                Forms\Components\TextInput::make('no_hp_perawat')
                    ->required()
                    ->maxLength(15),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->label('ID')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('nama_perawat')
                    ->searchable(),
                Tables\Columns\TextColumn::make('no_hp_perawat')
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
            'index' => Pages\ListPerawats::route('/'),
            'create' => Pages\CreatePerawat::route('/create'),
            'edit' => Pages\EditPerawat::route('/{record}/edit'),
        ];
    }
    public static function shouldRegisterNavigation(): bool
{
    return auth()->user()->hasRole('super_admin'); // atau role lain yang boleh lihat
}

}
