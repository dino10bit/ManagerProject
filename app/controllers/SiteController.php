<?php

class SiteController extends BaseController
{
    public function __construct()
    {
        $data             = Session::all();
        $data['is_login'] = 0;
        $login            = $data['is_login'];
        
        if ($login != 1) {
            return Redirect::to('http://localhost/laravel/public/login');
        }
    }

    public function haloJuga()
    {
        $data = Helpers::doMessage();
        return View::make('halo_juga')->with('data', $data);
    }
}
