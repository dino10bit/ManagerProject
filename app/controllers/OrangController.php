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
        $newUser->i_type   = Input::get('akses');
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
        if (!empty($q)) {
            $data = DB::table('users')->orderBy('i_user_id')
                ->select('i_user_id', 'v_login', 'email', 'v_status')
                ->orwhere('v_login', 'LIKE', '%' . $q . '%')
                ->paginate(50);
        } else {
            $data = DB::table('users')->orderBy('i_user_id', 'desc')
                ->select('i_user_id', 'v_login', 'email', 'v_status')
                ->paginate(50);
        }

        return View::make('user/view_user')->with('data', $data);
    }

    public function calender()
    {
        return View::make('calender/calender');
    }
}
