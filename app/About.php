<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class About extends Model
{
    // Return about us
    public function getAbousUs(){
        $about = DB::table('company')
                ->select(['name', 'content', 'image'])
                ->get();

        return $about;
    }

    // Return about team
    public function getAboutTeam(){
        $team = DB::table('professional_team')
                ->select(['name', 'position', 'content', 'mail', 'image'])
                ->get();

        return $team;
    }

    // Return about clients
    public function getAboutClient(){
        $client = DB::table('client')
                ->select(['name', 'content', 'image'])
                ->get();

        return $client;
    }
}
