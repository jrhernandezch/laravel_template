<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Landing extends Model
{
    // Return slides
    public function getSlide(){
        $slide = DB::table('slide')
                ->select(['title', 'content', 'image'])
                ->get();

        return $slide;
    }

    // Return logo
    public function getLogo(){
        $logo = DB::table('info_generic')
                ->select(['name', 'content'])
                ->where('id_info', '=', '3')
                ->get();

        return $logo;
    }

    // Return services
    public function getServices(){
        $services = DB::table('services')
                ->select(['title', 'content', 'image'])
                ->get();

        return $services;
    }

    // Return social media
    public function getSocialMedia(){
        $socialMedia = DB::table('social_media')
                ->select(['id_socialmedia', 'name', 'url'])
                ->get();

        return $socialMedia;
    }

    // Return main top icons
    public function getTopIcons(){
        $icons = DB::table('icons_info')
                ->select(['title', 'content', 'icon'])
                ->get();

        return $icons;
    }
}
