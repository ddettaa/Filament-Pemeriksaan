<?php

namespace App\Filament\Resources;

use App\Filament\Resources\EResepResource\Pages;
use App\Filament\Resources\EResepResource\RelationManagers;
use App\Models\EResep;
use App\Models\EresepDetail;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class EResepResource extends Resource
{
    protected static ?string $model = EResep::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationLabel = 'E-Resep';


    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\select::make('no_registrasi')
                    ->required()
                    ->label('No Registrasi')
                    ->options(function () {
                        return \App\Models\Pemeriksaan::pluck('no_registrasi', 'no_registrasi');
                    }),
                Forms\Components\Repeater::make('detail_resep')
                    ->label('detail resep')
                    ->relationship()
                    ->schema([
                        Forms\Components\select::make('id_obat')
                            ->required()
                            ->label('Nama Obat')
                            ->options([
                                '1' => 'Paracetamol',
                                '2' => 'Amoxicillin',
                                '3' => 'Ibuprofen',
                                '4' => 'Cetirizine',
                                '5' => 'Omeprazole'
                            ])
                            ->searchable(),
                        Forms\Components\TextInput::make('jumlah')
                            ->required()
                            ->numeric(),
                        Forms\Components\TextInput::make('aturan_pakai')
                            ->required()
                            ->maxLength(100),
                    ])
                    ->columns(3)
                    ->createItemButtonLabel('Tambah Obat'),
            ]);

    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('no_registrasi')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('detail_resep.id_obat')
                    ->label('Nama Obat')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('detail_resep.jumlah')
                    ->label('Jumlah')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('detail_resep.aturan_pakai')
                    ->label('Aturan Pakai')
                    ->searchable()
                    ->sortable(),
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
            'index' => Pages\ListEReseps::route('/'),
            'create' => Pages\CreateEResep::route('/create'),
            'edit' => Pages\EditEResep::route('/{record}/edit'),
        ];
    }
    public static function shouldRegisterNavigation(): bool
{
    return auth()->user()->hasRole(['super_admin', 'dokter']); // atau role lain yang boleh lihat
}

}
