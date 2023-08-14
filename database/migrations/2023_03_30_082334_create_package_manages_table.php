<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePackageManagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('package_manages', function (Blueprint $table) {
            $table->id();
            $table->integer('package_id')->nullable();
            $table->string('name')->nullable();
            $table->string('title')->nullable();
            $table->string('duration')->nullable();
            $table->string('price')->nullable();
            $table->string('url')->nullable();
            $table->string('fetures')->nullable();
            $table->string('status')->nullable();
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
        Schema::dropIfExists('package_manages');
    }
}
