<?php

class OrangController extends BaseController
{
    public function formUser()
    {
        // show the form
        return View::make('user/form_user');
    }

    public function saveUser()
    {
        $newUser           = new User;
        $newUser->i_type   = 1;
        $newUser->v_login  = Input::get('v_login');
        $newUser->v_status = 'Active';
        $newUser->password = Hash::make(Input::get('password'));
        $newUser->email    = Input::get('email');
        $newUser->save();

        return Redirect::to('user/view_user')->with('message', 'Save Success');
    }

    public function viewUser()
    {
        $q    = Input::get('q');
        $stat = Input::get('stat');
        
        if (1 == 1) {
            $data = DB::table('users AS usr')
                ->select('usr.v_login as name, usr.email, usr.v_status ')
                ->paginate(50);
        }

        return View::make('user/view_user')->with('data', $data);
    }
}
