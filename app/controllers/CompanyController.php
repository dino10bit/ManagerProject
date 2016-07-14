<?php
class CompanyController extends BaseController
{
    public function formCompcat()
    {
        // show the form
        return View::make('company/form_compcat');
    }

    public function saveCompcat()
    {
        $newCat                = new Compcategory;
        $newCat->category      = Input::get('catname');
        $newCat->i_user_create = Auth::user()->i_user_id;
        $newCat->save();
        return Redirect::to('company/form_compcat')->with('message', 'Save Success');
    }

    public function formCompany()
    {
        $categories = Compcategory::lists('category', 'category');
        return View::make('company/form_company', array('categories' => $categories));
    }

    public function saveCompany()
    {
        $newComp                = new Company();
        $newComp->name          = Input::get('companyname');
        $newComp->address_1     = Input::get('address');
        $newComp->city          = Input::get('city');
        $newComp->zip           = Input::get('zip');
        $newComp->phone_1       = Input::get('phone');
        $newComp->fax_1         = Input::get('fax');
        $newComp->website       = Input::get('website');
        $newComp->email         = Input::get('email');
        $newComp->category      = Input::get('category');
        $newComp->longitude     = 'NULL';
        $newComp->latitude      = 'NULL';
        $newComp->i_user_create = Auth::user()->i_user_id;
        $newComp->save();

        return Redirect::to('company/form_company')->with('message', 'Save Success');
    }
}
