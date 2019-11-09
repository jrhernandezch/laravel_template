<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Contact extends Model
{
    // Return contact info
    public function getInfoContact(){
        $slide = DB::table('contact_info')
                ->select(['name', 'content', 'map', 'email', 'phone', 'hours'])
                ->where('id_contact_info', '=', '1')
                ->get();

        return $slide;
    }
}
