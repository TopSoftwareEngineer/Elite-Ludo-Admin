<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHomedetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('homedetails', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->longText("heading")->nullable();
            $table->longText("subheading")->nullable();
            $table->longText("bannerimg")->nullable();
            $table->longText("about_title")->nullable();
            $table->longText("about_desc")->nullable();
            $table->longText("about_setp1")->nullable();
            $table->longText("about_step2")->nullable();
            $table->longText("about_step3")->nullable();
            $table->longText("about_img")->nullable();
            $table->longText("fe_title")->nullable();
            $table->longText("fe_desc")->nullable();
            $table->longText("easy_title")->nullable();
            $table->longText("easy_desc")->nullable();
            $table->longText("easy_icon")->nullable();
            $table->longText("de_title")->nullable();
            $table->longText("de_desc")->nullable();
            $table->longText("de_icon")->nullable();
            $table->longText("op_title")->nullable();
            $table->longText("op_desc")->nullable();
            $table->longText("op_icon")->nullable();
            $table->longText("download_title")->nullable();
            $table->longText("download_desc")->nullable();
            $table->longText("download_image")->nullable();
            $table->longText("download_link")->nullable();
            $table->longText("screenshot_title")->nullable();
            $table->longText("screenshot_desc")->nullable();
            $table->longText("contact_image")->nullable();
            $table->longText("contact_video")->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('homedetails');
    }
}
