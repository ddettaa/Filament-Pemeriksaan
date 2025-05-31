<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PemeriksaanResource\Pages;
use App\Models\Pemeriksaan;
use App\Models\Dokter;
use App\Models\Perawat;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Forms\Components\Select;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Builder; // ✅ pastikan ini ada




class PemeriksaanResource extends Resource
{
    protected static ?string $model = Pemeriksaan::class;
    protected static ?string $navigationIcon = 'heroicon-o-document-text';
    protected static ?string $navigationLabel = 'Pemeriksaan';

    public static function form(Form $form): Form
    {
        $user = Auth::user();
        return $form->schema([
            Select::make('id_dokter')
    ->relationship('dokter', 'nama_dokter') // ✅
    ->searchable()

    ->required(),


            Select::make('id_perawat')
    ->relationship('perawat', 'nama_perawat') // ✅ menampilkan nama
    ->searchable()
    ->required(),


            Forms\Components\TextInput::make('rm')
                ->numeric()
                ->required(),

            Forms\Components\TextInput::make('suhu')
                ->numeric()
                ->visible(fn () => Auth::user()->hasRole('perawat')),

            Forms\Components\TextInput::make('tensi')
                ->maxLength(10)
                ->visible(fn () => Auth::user()->hasRole('perawat')),

            Forms\Components\TextInput::make('tinggi_badan')
                ->numeric()
                ->visible(fn () => Auth::user()->hasRole('perawat')),

            Forms\Components\TextInput::make('berat_badan')
                ->numeric()
                ->visible(fn () => Auth::user()->hasRole('perawat')),

            Forms\Components\TextInput::make('diagnosa')
                ->maxLength(50)
                ->visible(fn () => Auth::user()->hasRole('dokter')),

            Forms\Components\TextInput::make('tindakan')
                ->maxLength(50)
                ->visible(fn () => Auth::user()->hasRole('dokter')),

            Forms\Components\Select::make('status')
                ->options([
                    'menunggu' => 'menunggu',
                    'diperiksa' => 'diperiksa',
                    'selesai diperiksa' => 'selesai diperiksa',
                    'sudah bayar' => 'sudah bayar',
                    'sudah ambil obat' => 'sudah ambil obat',
                ])
                ->default('menunggu'),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table

       ->modifyQueryUsing(function (Builder $query) {
    $user = Auth::user();

    if ($user->hasRole('dokter')) {
        $dokterId = \App\Models\Dokter::where('id', $user->id)->value('id_dokter');
        $query->where('id_dokter', $dokterId);
    } elseif ($user->hasRole('perawat')) {
        $perawatId = \App\Models\Perawat::where('id', $user->id)->value('id_perawat');
        $query->where('id_perawat', $perawatId);
    }
})

        ->columns([
            Tables\Columns\TextColumn::make('dokter.nama_dokter')
                ->label('Dokter')
                ->sortable(),

            Tables\Columns\TextColumn::make('perawat.nama_perawat')
                ->label('Perawat')
                ->sortable(),

            Tables\Columns\TextColumn::make('rm')->sortable(),
            Tables\Columns\TextColumn::make('suhu')->sortable(),
            Tables\Columns\TextColumn::make('tensi')->searchable(),
            Tables\Columns\TextColumn::make('tinggi_badan')->sortable(),
            Tables\Columns\TextColumn::make('berat_badan')->sortable(),
            Tables\Columns\TextColumn::make('diagnosa')->searchable(),
            Tables\Columns\TextColumn::make('tindakan')->searchable(),
            Tables\Columns\TextColumn::make('status'),
        ])
        ->actions([
            Tables\Actions\EditAction::make(),
            Tables\Actions\DeleteAction::make(),
        ])
        ->bulkActions([
            Tables\Actions\DeleteBulkAction::make(),
        ]);
    }

    public static function getRelations(): array
    {
        return [];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPemeriksaans::route('/'),
            'create' => Pages\CreatePemeriksaan::route('/create'),
            'edit' => Pages\EditPemeriksaan::route('/{record}/edit'),
        ];
    }

    public static function mutateFormDataBeforeCreate(array $data): array
    {
        $user = Auth::user();

       if ($user->hasRole('perawat')) {
    $data['status'] = 'Diperiksa';
} elseif ($user->hasRole('dokter')) {
    $data['status'] = 'Selesai Diperiksa';
}

        return $data;
    }

    public static function mutateFormDataBeforeSave(array $data): array
    {
        $user = Auth::user();

        if (strtolower($user->role) === 'dokter') {
            $data['status'] = 'Selesai Diperiksa';
        }

        return $data;
    }
}

