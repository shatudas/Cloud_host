<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePackageFeturesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('package_fetures', function (Blueprint $table) {
         $table->id();
         $table->string('package_id')->nullable();
         $table->string('title')->nullable();
         $table->string('detalis')->nullable();
         $table->string('image')->nullable();
         $table->integer('status')->nullable();
         $table->integer('created_by')->nullable();
         $table->integer('updated_by')->nullable();
         $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('package_fetures');
    }
}
