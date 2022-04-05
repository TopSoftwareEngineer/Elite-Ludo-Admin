<?php

namespace App\Models\Home;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Homedetail extends Model
{
    use HasFactory;
    protected $fillable = [
            "heading",
            "subheading",
            "bannerimg",
            "about_title",
            "about_desc",
            "about_setp1",
            "about_step2",
            "about_step3",
            "about_img",
            "fe_title",
            "fe_desc",
            "easy_title",
            "easy_desc",
            "easy_icon",
            "de_title",
            "de_desc",
            "de_icon",
            "op_title",
            "op_desc",
            "op_icon",
            "download_title",
            "download_desc",
            "download_image",
            "download_link",
            "screenshot_title",
            "screenshot_desc",
            "contact_image",
            "contact_video",
    ];
}
