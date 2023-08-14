<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class servicesmanage extends Model
{
  public function type(){
   return $this->belongsTo(ServicesType::class,'cover_id','id');
  }
  public function servicetype(){
   return $this->belongsTo(ServicesType::class,'service_type_id','id');
  }

}
