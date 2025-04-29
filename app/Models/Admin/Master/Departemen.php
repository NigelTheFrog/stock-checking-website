<?php

namespace App\Models\Admin\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Departemen extends Model
{
    use HasFactory;

    public $table = "dbmdept";
    protected $primaryKey = "deptid";
    protected $departemen = "departemen";
}
