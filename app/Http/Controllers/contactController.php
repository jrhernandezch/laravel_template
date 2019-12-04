<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;
use App\Contact_item;
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

    /* Save the contact item */
    public function addTicket (Request $request){    
        $contact = new Contact_item;
        $contact->name = $request->name;
        $contact->phone_number = $request->phone;
        $contact->mail = $request->email;
        $contact->subject = $request->subject;
        $contact->content = $request->message;
        $contact->save();
    
        return redirect('/');
    }
}
