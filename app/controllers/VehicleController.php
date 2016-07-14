<?php

class VehicleController extends BaseController
{
    public function formManufacture()
    {
        // show the form
        return View::make('vehicle/form_vmanufacture');
    }

    public function saveManufacture()
    {
        $newVma                     = new Vehiclemanufacture;
        $newVma->v_manufacture_name = Input::get('manufacturename');
        $newVma->v_description      = Input::get('description');
        $newVma->i_status           = 1;
        $newVma->i_created_user     = Auth::user()->i_user_id;
        $newVma->save();

        return Redirect::to('vehicle/form_vmanufacture')->with('message', 'Save Success');
    }

    public function formVmodel()
    {
        $manufactures = Vehiclemanufacture::lists('v_manufacture_name', 'id');

        return View::make('vehicle/form_vmodel', array('manufactures' => $manufactures));

    }

    public function saveVmodel()
    {
        $newVmodel                           = new Vehiclemodel;
        $newVmodel->v_model_name             = Input::get('v_model_name');
        $newVmodel->i_vehicle_manufacture_id = Input::get('vmanufacture');
        $newVmodel->v_description            = Input::get('description');
        $newVmodel->i_status                 = 1;
        $newVmodel->i_created_user           = Auth::user()->i_user_id;
        $newVmodel->save();

        return Redirect::to('vehicle/form_vmodel')->with('message', 'Save Success');
    }

    public function formVehicle()
    {
        $vmodel = Vehiclemodel::lists('v_model_name', 'id');
        return View::make('vehicle/form_vehicle', array('vmodel' => $vmodel));
    }

    public function saveVehicle()
    {
        $newVehicle                 = new Vehicle;
        $newVehicle->v_vehicle_name = Input::get('v_vehicle_name');
        $newVehicle->v_code         = Input::get('v_vehicle_name');
        $newVehicle->i_company      = Input::get('ownerid');
        $newVehicle->v_engine_no    = Input::get('v_engine_no');
        $newVehicle->v_chasis_no    = Input::get('v_chasis_no');
        $newVehicle->i_model        = Input::get('vmodel');
        $newVehicle->i_status       = 1;
        $newVehicle->i_created_user = Auth::user()->i_user_id;
        $newVehicle->save();

        return Redirect::to('vehicle/form_vehicle')->with('message', 'Save Success');
    }
}