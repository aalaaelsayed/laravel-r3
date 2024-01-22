<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Email extends Model
{
    use HasFactory;
    protected $table = 'contact';
    protected $fillable = [
        'name',
        'email',
        'phone',
        'subject',
        'message',
        ];
}
