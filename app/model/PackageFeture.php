<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class PackageFeture extends Model
{

 public function packageType(){
	 return $this->belongsTo(PackageType::class,'package_id','id');
	}
	
}
