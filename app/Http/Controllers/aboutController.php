<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\About;
use App\Landing;

class aboutController extends Controller
{
    // Return data
    public function getInfo(){
        $about = new About();
        $landing = new Landing();

    	return view('about')
            ->with('infologo',$landing->getLogo())
            ->with('socialmedia',$landing->getSocialMedia())
            ->with('aboutus',$about->getAbousUs())
            ->with('aboutteam',$about->getAboutTeam())
            ->with('aboutclient',$about->getAboutClient());
    }
}
