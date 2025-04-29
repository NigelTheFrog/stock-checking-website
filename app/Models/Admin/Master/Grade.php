<?php

namespace App\Models\Admin\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Grade extends Model
{
    use HasFactory;
    protected $keyType = 'string';
    public $incrementing = false;
    public $table = "dbmgrade";
    protected $primaryKey = "gradecode";
    protected $description = "description";
}
