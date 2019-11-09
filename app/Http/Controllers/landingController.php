<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Landing;

class landingController extends Controller
{
    // Return all info
    public function getAllInfo(){
        $landing = new Landing();

    	return view('landing')
            ->with('slides',$landing->getSlide())
            ->with('infologo',$landing->getLogo())
            ->with('socialmedia',$landing->getSocialMedia())
            ->with('services',$landing->getServices())
            ->with('topicons',$landing->getTopIcons());
    }

    public function getLogo(){
        $landing = new Landing();

    	return $landing->getServices();
    }
}
