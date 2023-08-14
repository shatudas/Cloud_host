<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class PackageManage extends Model
{

 public function package_type(){
	 return $this->belongsTo(PackageType::class,'package_id','id');
	}
	
}
