<?php

namespace App\Models\Admin\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KeteranganCSOUlang extends Model
{
    use HasFactory;

    public $table = "dbmketerangan";
    protected $primaryKey = "keteranganid";
    // protected $keterangandesc = "keterangandesc";
}
