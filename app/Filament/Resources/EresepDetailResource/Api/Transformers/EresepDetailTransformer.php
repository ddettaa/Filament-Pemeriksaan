<?php
namespace App\Filament\Resources\EresepDetailResource\Api\Transformers;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Models\EresepDetail;

/**
 * @property EresepDetail $resource
 */
class EresepDetailTransformer extends JsonResource
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
