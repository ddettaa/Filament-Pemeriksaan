<?php
namespace App\Filament\Resources\EresepResource\Api\Transformers;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Models\EResep;

/**
 * @property Eresep $resource
 */
class EresepTransformer extends JsonResource
{

    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return $this->resource->toArray();
    }
}
