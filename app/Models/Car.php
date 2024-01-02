<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\models\Category;
class Car extends Model
{
    use HasFactory ,SoftDeletes;
    protected $fillable = [
        'title',
        'description',
        'published',
        'image',
        'category_id',
        ];
        public function Category()
        {
        return $this->belongsTo (Category::class);
        }
}
