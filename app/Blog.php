<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Blog extends Model
{
    // Return first post
    public function getFirstPost(){
        $firstBlog = DB::table('blog')
                ->select(['id_blog', 'title', 'content', 'image'])
                ->where('important', '=', '0')
                ->where('visible', '=', '1')
                ->orderBy('date', 'DESC')
                ->limit(1)
                ->get();

        return $firstBlog;
    }

    // Return all post
    public function getAllPost(){
        $blog = DB::table('blog')
                ->select(['id_blog', 'title', 'content', 'image'])
                ->where('important', '=', '0')
                ->where('visible', '=', '1')
                ->orderBy('date', 'DESC')
                ->get();

        return $blog;
    }

    // Return important post
    public function getImportantPost(){
        $ImportantBlog = DB::table('blog')
                ->select(['id_blog', 'title', 'content', 'image'])
                ->where('important', '=', '1')
                ->where('visible', '=', '1')
                ->orderBy('date', 'DESC')
                ->get();

        return $ImportantBlog;
    }
}
