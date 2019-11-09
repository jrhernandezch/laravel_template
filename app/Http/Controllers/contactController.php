<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;
use App\Landing;

class contactController extends Controller
{
    // Return all contact info
    public function getInfo(){
        $contact = new Contact();
        $landing = new Landing();

    	return view('contact')
            ->with('infologo',$landing->getLogo())
            ->with('socialmedia',$landing->getSocialMedia())
            ->with('contactinfo',$contact->getInfoContact());
    }
}
