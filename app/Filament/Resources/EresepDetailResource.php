<?php

namespace App\Filament\Resources;

use App\Filament\Resources\EresepDetailResource\Pages;
use App\Filament\Resources\EresepDetailResource\RelationManagers;
use App\Models\EresepDetail;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class EresepDetailResource extends Resource
{
    protected static ?string $model = EresepDetail::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([

                Forms\Components\Select::make('id_obat')
                    ->required()
                    ->label('Nama Obat')
                    ->options(function () {
                        return \App\Models\Obat::pluck('nama_obat', 'id_obat');
                    })
                    ->searchable(),
                Forms\Components\TextInput::make('jumlah')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('aturan_pakai')
                    ->required()
                    ->maxLength(100),
            ]);
                //
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                //
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
            'index' => Pages\ListEresepDetails::route('/'),
            'create' => Pages\CreateEresepDetail::route('/create'),
            'edit' => Pages\EditEresepDetail::route('/{record}/edit'),
        ];
    }
}
