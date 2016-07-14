<?php

class ApiController extends BaseController
{
    public function getObu()
    {
        $term = Input::get('term');
        $data = DB::table('tbl_obu')->select('v_sn as value', 'v_sn as label', 'i_obu_id as id')
            ->orderBy('i_obu_id', 'desc')
            ->where('v_status', 'Active')
            ->where('v_sn', 'LIKE', '%' . $term . '%')->get();
        $data = json_encode($data);
        return View::make('api/get_obu')->with('data', $data);
    }

    public function getModem()
    {
        $term = Input::get('term');
        $data = DB::table('tbl_modem')->select('v_modem_sn as value', 'v_modem_sn as label', 'i_modem_id as id')
            ->orderBy('i_modem_id', 'desc')
            ->where('v_status', 'Active')
            ->where('v_modem_sn', 'LIKE', '%' . $term . '%')->get();
        $data = json_encode($data);
        return View::make('api/get_modem')->with('data', $data);
    }

    public function getDds()
    {
        $term = Input::get('term');
        $data = DB::table('tbl_dds')->select('v_dds_sn as value', 'v_dds_sn as label', 'i_dds_id as id')
            ->orderBy('i_dds_id', 'desc')
            ->where('v_dds_sn', 'LIKE', '%' . $term . '%')
            ->where('v_status', 'Active')
            ->get();
        $data = json_encode($data);
        return View::make('api/get_dds')->with('data', $data);
    }

    public function getSimcard()
    {
        $term = Input::get('term');
        $data = DB::table('tbl_simcard')->select('v_simcard_msisdn as value', 'v_simcard_msisdn as label', 'i_simcard_id as id')
            ->orderBy('i_simcard_id', 'desc')
            ->where('v_status', 'Active')
            ->where('v_simcard_msisdn', 'LIKE', '%' . $term . '%')->get();
        $data = json_encode($data);
        return View::make('api/get_simcard')->with('data', $data);
    }

    public function getPart()
    {
        $term = Input::get('term');
        $data = DB::table('tbl_part')->select('v_part_name as value', 'v_part_name as label', 'i_part_id as id')
            ->orderBy('i_part_id', 'desc')
            ->where('v_status', 'Active')
            ->where('stok', '>', '0')
            ->where('v_part_name', 'LIKE', '%' . $term . '%')->get();
        $data = json_encode($data);
        return View::make('api/get_modem')->with('data', $data);
    }

    public function getUser()
    {
        $term = Input::get('term');
        $data = DB::table('users')->select('v_login as value', 'v_login as label', 'i_user_id as id')
            ->orderBy('i_user_id', 'desc')
            ->where('v_login', 'LIKE', '%' . $term . '%')->get();
        $data = json_encode($data);
        return View::make('api/get_user')->with('data', $data);

    }

    public function getOwner()
    {
        $term = Input::get('term');
        $data = DB::table('company')->select('name as value', 'name as label', 'id')
            ->orderBy('name', 'asc')
            ->where('name', 'LIKE', '%' . $term . '%')->get();
        $data = json_encode($data);
        return View::make('api/api')->with('data', $data);
    }
    public function getVehicle()
    {
        $term    = Input::get('term');
        $company = Input::get('owner');
        $data    = DB::table('tbl_vehicle')->select('v_vehicle_name as value', 'v_vehicle_name as label', 'tbl_vehicle.id')
            ->leftJoin('company', 'tbl_vehicle.i_company', '=', 'company.id')
            ->orderBy('v_vehicle_name', 'asc')
            ->where('v_vehicle_name', 'LIKE', '%' . $term . '%')
        //->where('company.id',$company)
            ->get();
        $data = json_encode($data);
        return View::make('api/api')->with('data', $data);

    }

    public function getProduct()
    {
        $term = Input::get('term');
        $data = DB::table('tbl_master_product')->select('name as value', 'name as label', 'id')
            ->orderBy('name', 'asc')
            ->where('name', 'LIKE', '%' . $term . '%')
        //->where('company.id',$company)
            ->get();
        $data = json_encode($data);
        return View::make('api/api')->with('data', $data);

    }

    public function getDetailProduct()
    {
        $term = Input::get('term');
        $data = DB::table('tbl_detail_product')->select('v_product_sn as value', 'v_product_sn as label', 'id')
            ->orderBy('v_product_sn', 'asc')
            ->where('v_product_sn', 'LIKE', '%' . $term . '%')
        //->where('company.id',$company)
            ->get();
        $data = json_encode($data);
        return View::make('api/api')->with('data', $data);

    }

    public function getNewSimcard()
    {
        $term = Input::get('term');
        $data = DB::table('tbl_new_simcard')->select('v_simcard_msisdn as value', 'v_simcard_msisdn as label', 'i_simcard_id as id')
            ->orderBy('v_simcard_msisdn', 'asc')
            ->where('v_simcard_msisdn', 'LIKE', '%' . $term . '%')
        //->where('company.id',$company)
            ->get();
        $data = json_encode($data);
        return View::make('api/api')->with('data', $data);

    }

    public function getTransaksi()
    {
        $term = Input::get('term');
        $data = DB::table('tbl_master_transaksi')->select(DB::raw('CONCAT(company.name, " - ", vehicle.v_vehicle_name) AS value'), DB::raw('CONCAT(company.name, " - ", vehicle.v_vehicle_name) AS label'), 'tbl_master_transaksi.id as id')
            ->leftJoin('company', 'company.id', '=', 'tbl_master_transaksi.i_owner_id')
            ->leftJoin('tbl_vehicle as vehicle', 'vehicle.id', '=', 'tbl_master_transaksi.i_vehicle_id')
            ->orderBy('company.name', 'asc')
            ->where('company.name', 'LIKE', '%' . $term . '%')
        //->where('company.id',$company)
            ->get();
        $data = json_encode($data);
        return View::make('api/api')->with('data', $data);

    }

    public function getTechnician()
    {
        $term = Input::get('term');
        $data = DB::table('users')->select('v_login as value', 'v_login as label', 'i_user_id as id')
            ->orderBy('i_user_id', 'desc')
            ->where('i_type', 2)
            ->where('v_login', 'LIKE', '%' . $term . '%')->get();
        $data = json_encode($data);
        return View::make('api/api')->with('data', $data);

    }

    public function getMasterProduct()
    {
        $term = Input::get('term');
        $data = DB::table('tbl_master_product')->select(DB::raw('CONCAT(code, " - ", name) AS value'), DB::raw('CONCAT(code, " - ", name) AS label'), 'id')
            ->orderBy('code', 'asc')
            ->where('code', 'LIKE', '%' . $term . '%')
            ->orwhere('name', 'LIKE', '%' . $term . '%')
        //->where('company.id',$company)
            ->get();
        $data = json_encode($data);
        return View::make('api/api')->with('data', $data);
    }
}