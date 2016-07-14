<?php

class TransController extends BaseController
{
    public function dashboard()
    {
        // show the form
        $data1 = DB::table('tbl_master_transaksi')
            ->where('i_status', 1)
            ->count();
        $data2 = DB::table('tbl_master_transaksi')
            ->where('i_status', 2)
            ->count();
        $data3 = DB::table('tbl_master_transaksi')
            ->where('i_status', 3)
            ->count();
        $data4 = DB::table('tbl_master_transaksi')
            ->where('i_status', 4)
            ->count();
        $data5 = DB::table('tbl_master_transaksi')
            ->where('i_status', 5)
            ->count();
        $data6 = DB::table('tbl_master_transaksi')
            ->where('i_status', 6)
            ->count();
        $sched = DB::table('tbl_detail_transaksi AS det')
            ->select('company.name', 'Vehicle.v_code', 'Vehicle.v_vehicle_name',
                'det.d_date_planning', 'tech.v_login')
            ->leftJoin('tbl_master_transaksi AS mas', 'det.i_master_id', '=', 'mas.id')
            ->leftJoin('company', 'mas.i_owner_id', '=', 'company.id')
            ->leftJoin('tbl_vehicle as Vehicle', 'mas.i_vehicle_id', '=', 'Vehicle.id')
            ->leftJoin('users as tech', 'det.i_technician_id', '=', 'tech.i_user_id')
            ->get();
        return View::make('trans/dashboard', compact('data1', 'data2', 'data3',
            'data4', 'data5', 'data6', 'sched'));
    }

    public function viewTransaksi()
    {
        $q    = Input::get('q');
        $stat = Input::get('stat');

        $data = DB::table('tbl_master_transaksi AS mas')
            ->select('company.name', 'Vehicle.v_code', 'Vehicle.v_vehicle_name', 'Man.v_manufacture_name', 'Model.v_model_name',
                'tbl_master_product.name as product_name', 'tbl_detail_product.v_product_sn', 'tbl_new_simcard.v_simcard_name', 'v_simcard_msisdn',
                'i_po_id', 'i_do_id', 'i_rrn_id', 'i_wo_id',
                'tbl_master_product.spec_1', 'spec_2', 'spec_3', 'mas.v_problem', 'mas.v_remark', 'mas.i_status', 'i_trans_category_id', 'mas.id',
                'det.d_date_planning', 'tech.v_login')
            ->leftJoin('company', 'mas.i_owner_id', '=', 'company.id')
            ->leftJoin('tbl_vehicle as Vehicle', 'mas.i_vehicle_id', '=', 'Vehicle.id')
            ->leftJoin('tblbmc_vehicle_model as Model', 'Vehicle.i_model', '=', 'Model.id')
            ->leftJoin('tblbmc_vehicle_manufacturer as Man', 'Model.i_vehicle_manufacture_id', '=', 'Man.id')
            ->leftJoin('tbl_master_product', 'mas.i_mas_product_id', '=', 'tbl_master_product.id')
            ->leftJoin('tbl_detail_product', 'mas.i_det_product_id', '=', 'tbl_detail_product.id')
            ->leftJoin('tbl_new_simcard', 'mas.i_simcard_id', '=', 'tbl_new_simcard.i_simcard_id')
            ->leftJoin('users', 'mas.i_user_create', '=', 'users.i_user_id')
            ->leftJoin('users as upd', 'mas.i_user_update', '=', 'upd.i_user_id')
            ->leftJoin('tbl_detail_transaksi AS det', 'det.i_master_id', '=', 'mas.id')
            ->leftJoin('users as tech', 'det.i_technician_id', '=', 'tech.i_user_id')
            ->paginate(50);

        return View::make('trans/view_transaksi')->with('data', $data);
    }

    public function formTransaksi()
    {
        // show the form
        return View::make('trans/form_transaksi');
    }

    public function editTransaksi($id)
    {
        // show the form
        $data = DB::table('tbl_master_transaksi AS mas')
            ->select('mas.i_status', 'mas.id', 'company.name', 'i_owner_id', 'Vehicle.v_code', 'Vehicle.v_vehicle_name', 'i_vehicle_id', 'Man.v_manufacture_name', 'Model.v_model_name',
                'tbl_master_product.name as product_name', 'tbl_detail_product.v_product_sn', 'tbl_new_simcard.v_simcard_name', 'v_simcard_msisdn', 'tbl_new_simcard.i_simcard_id',
                'tbl_master_product.spec_1', 'spec_2', 'spec_3', 'mas.v_problem', 'mas.v_remark', 'mas.i_status',
                'i_po_id', 'i_do_id', 'i_rrn_id', 'i_wo_id', 'tbl_master_product.name as product_name', 'mas.i_mas_product_id', 'mas.i_det_product_id',
                'tbl_detail_product.v_product_sn',
                'i_trans_category_id', 'mas.id', 'upd.v_login as update', 'mas.updated_at as date_update')
            ->leftJoin('company', 'mas.i_owner_id', '=', 'company.id')
            ->leftJoin('tbl_vehicle as Vehicle', 'mas.i_vehicle_id', '=', 'Vehicle.id')
            ->leftJoin('tblbmc_vehicle_model as Model', 'Vehicle.i_model', '=', 'Model.id')
            ->leftJoin('tblbmc_vehicle_manufacturer as Man', 'Model.i_vehicle_manufacture_id', '=', 'Man.id')
            ->leftJoin('tbl_master_product', 'mas.i_mas_product_id', '=', 'tbl_master_product.id')
            ->leftJoin('tbl_detail_product', 'mas.i_det_product_id', '=', 'tbl_detail_product.id')
            ->leftJoin('tbl_new_simcard', 'mas.i_simcard_id', '=', 'tbl_new_simcard.i_simcard_id')
            ->leftJoin('users', 'mas.i_user_create', '=', 'users.i_user_id')
            ->leftJoin('users as upd', 'mas.i_user_update', '=', 'upd.i_user_id')
            ->where('mas.id', $id)
            ->first();

        return View::make('trans/edit_transaksi')->with('data', $data);
    }

    public function saveEditTransaksi()
    {

    }
    public function saveTransaksi()
    {
        if (!empty(Input::get('mas_id'))) {
            $newTrans                      = Trans::find(Input::get('mas_id'));
            $newTrans->i_owner_id          = Input::get('ownerid');
            $newTrans->i_vehicle_id        = Input::get('vehicleid');
            $newTrans->i_po_id             = Input::get('poid');
            $newTrans->i_rrn_id            = Input::get('rrnid');
            $newTrans->i_do_id             = Input::get('doid');
            $newTrans->i_wo_id             = Input::get('woid');
            $newTrans->i_trans_category_id = Input::get('category');
            $newTrans->i_mas_product_id    = Input::get('productid');
            $newTrans->i_det_product_id    = Input::get('productsnid');
            $newTrans->i_simcard_id        = Input::get('simcardid');
            $newTrans->v_problem           = Input::get('problem');
            $newTrans->v_remark            = Input::get('remark');
            $newTrans->i_status            = Input::get('status');
            $newTrans->i_user_update       = Auth::user()->i_user_id;
            $msg                           = 'Update Success';
        } else {
            $newTrans                      = new Trans;
            $newTrans->i_owner_id          = Input::get('ownerid');
            $newTrans->i_vehicle_id        = Input::get('vehicleid');
            $newTrans->i_po_id             = Input::get('poid');
            $newTrans->i_rrn_id            = Input::get('rrnid');
            $newTrans->i_do_id             = Input::get('doid');
            $newTrans->i_wo_id             = Input::get('woid');
            $newTrans->i_trans_category_id = Input::get('category');
            $newTrans->i_mas_product_id    = Input::get('productid');
            $newTrans->i_det_product_id    = Input::get('productsnid');
            $newTrans->i_simcard_id        = Input::get('simcardid');
            $newTrans->v_problem           = Input::get('problem');
            $newTrans->v_remark            = Input::get('remark');
            $newTrans->i_status            = 1;
            $newTrans->i_user_create       = Auth::user()->i_user_id;
            $msg                           = 'Save Success';
        }
        $newTrans->save();

        return Redirect::to('trans/view_transaksi')->with('message', $msg);
    }

    public function viewDetailTransaksi($id)
    {
        $q    = Input::get('q');
        $stat = Input::get('stat');

        $data = DB::table('tbl_master_transaksi AS mas')
            ->select('company.name', 'Vehicle.v_code', 'Vehicle.v_vehicle_name', 'Man.v_manufacture_name', 'Model.v_model_name',
                'i_po_id', 'i_do_id', 'i_rrn_id', 'i_wo_id',
                'tbl_master_product.name as product_name', 'tbl_detail_product.v_product_sn', 'tbl_new_simcard.v_simcard_name', 'v_simcard_msisdn',
                'tbl_master_product.spec_1', 'spec_2', 'spec_3', 'mas.v_problem', 'mas.v_remark', 'mas.i_status',
                'i_trans_category_id', 'mas.id', 'upd.v_login as update', 'mas.updated_at as date_update')
            ->leftJoin('company', 'mas.i_owner_id', '=', 'company.id')
            ->leftJoin('tbl_vehicle as Vehicle', 'mas.i_vehicle_id', '=', 'Vehicle.id')
            ->leftJoin('tblbmc_vehicle_model as Model', 'Vehicle.i_model', '=', 'Model.id')
            ->leftJoin('tblbmc_vehicle_manufacturer as Man', 'Model.i_vehicle_manufacture_id', '=', 'Man.id')
            ->leftJoin('tbl_master_product', 'mas.i_mas_product_id', '=', 'tbl_master_product.id')
            ->leftJoin('tbl_detail_product', 'mas.i_det_product_id', '=', 'tbl_detail_product.id')
            ->leftJoin('tbl_new_simcard', 'mas.i_simcard_id', '=', 'tbl_new_simcard.i_simcard_id')
            ->leftJoin('users', 'mas.i_user_create', '=', 'users.i_user_id')
            ->leftJoin('users as upd', 'mas.i_user_update', '=', 'upd.i_user_id')
            ->where('mas.id', $id)
            ->first();

        $dataDetail = DB::table('tbl_master_transaksi AS mas')
            ->select('det.d_date_planning', 'tech.v_login', 'upd.v_login as update',
                'det.updated_at as date_update', 'det.v_remarks', 'det.i_status')
            ->leftJoin('tbl_detail_transaksi AS det', 'det.i_master_id', '=', 'mas.id')
            ->leftJoin('users', 'det.i_user_create', '=', 'users.i_user_id')
            ->leftJoin('users as upd', 'det.i_user_update', '=', 'upd.i_user_id')
            ->leftJoin('users as tech', 'det.i_technician_id', '=', 'tech.i_user_id')
            ->where('mas.id', $id)
            ->orderBy('det.id', 'asc')
            ->get();

        $sched = DB::table('tbl_detail_transaksi AS det')
            ->select('company.name', 'Vehicle.v_code', 'Vehicle.v_vehicle_name',
                'det.d_date_planning', 'tech.v_login')
            ->leftJoin('tbl_master_transaksi AS mas', 'det.i_master_id', '=', 'mas.id')
            ->leftJoin('company', 'mas.i_owner_id', '=', 'company.id')
            ->leftJoin('tbl_vehicle as Vehicle', 'mas.i_vehicle_id', '=', 'Vehicle.id')
            ->leftJoin('users as tech', 'det.i_technician_id', '=', 'tech.i_user_id')
            ->where('mas.id', $id)
            ->get();

        return View::make('trans/view_detail_transaksi', compact('data', 'sched', 'dataDetail'));
    }

    public function formDetailTransaksi()
    {
        // show the form
        return View::make('trans/form_detail_transaksi');
    }

    public function saveDetailTransaksi()
    {
        $newTrans                  = new TransDetail;
        $newTrans->i_master_id     = Input::get('orderid');
        $newTrans->i_technician_id = Input::get('techid');
        $newTrans->v_remarks       = Input::get('remark');
        $newTrans->i_status        = Input::get('status');
        $newTrans->d_date_planning = Input::get('dateplan');
        $newTrans->i_user_create   = Auth::user()->i_user_id;
        $newTrans->save();

        return Redirect::to('trans/form_detail_transaksi')->with('message', 'Save Success');
    }
}
