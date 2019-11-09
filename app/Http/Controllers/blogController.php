<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Blog;
use App\Landing;

class blogController extends Controller
{
    // Return data
    public function getInfo(){
        $blog = new Blog();
        $landing = new Landing();

    	return view('blog')
            ->with('infologo',$landing->getLogo())
            ->with('socialmedia',$landing->getSocialMedia())
            ->with('firstblog',$blog->getFirstPost())
            ->with('blogs',$blog->getAllPost())
            ->with('importantblog',$blog->getImportantPost());
    }
}
