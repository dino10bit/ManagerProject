<?php

class ServiceController extends BaseController
{
    public function formService()
    {
        // show the form
        return View::make('service/form_service');
    }

    public function editService()
    {
        // show the form
        $data = DB::table('tbl_clm_te')->where('id', $id)->get();
        return View::make('edit_service')->with('data', $data);
    }

    public function saveService()
    {
        $input                   = Input::all();
        $service                 = new Service;
        $service->i_person_id    = $input['employeeid'];
        $service->i_product_id   = $input['product_id'];
        $service->v_diagnosis    = $input['diagnosis'];
        $service->v_action       = $input['action'];
        $service->d_date_service = date('Y-m-d');
        $service->i_user_create  = Auth::user()->i_user_id;
        $service->i_user_modify  = Auth::user()->i_user_id;
        $service->v_status       = 'Done';

        if ($service->save()) {
            for ($i = 0; $i <= Input::get('sum'); $i++) {
                $servicepart               = new ServicePart;
                $servicepart->i_service_id = $service->i_service_id;
                if ($i == 0) {
                    $part                   = TblPart::find($input['part_id']);
                    $part->stok             = $part->stok - $input['qty'];
                    $servicepart->i_part_id = $input['part_id'];
                    $servicepart->i_qty     = $input['qty'];
                } else {
                    $part                   = TblPart::find($input['part_id' . $i]);
                    $part->stok             = $part->stok - $input['qty' . $i];
                    $servicepart->i_part_id = $input['part_id' . $i];
                    $servicepart->i_qty     = $input['qty' . $i];
                }
                $part->save();
                $servicepart->i_user_create = Auth::user()->i_user_id;
                $servicepart->i_user_modify = Auth::user()->i_user_id;
                $servicepart->v_status      = 'Done';

                $servicepart->save();
            }
            Session::flash('message', "Success");
            return Redirect::to('/service/form_service');
        } else {
            Session::flash('message', "Failed Save Service");
            return Redirect::to('/service/form_service');
        }
    }

    public function viewService()
    {
        $search = Input::get('search');

        if (!empty($search)) {

            $data = DB::table('tbl_clm_mstr')
                ->select(DB::raw('count(tbl_clm_te.date_claim) as jumlah_claim, tbl_clm_mstr.employee_name,tbl_clm_mstr.created_at, tbl_clm_mstr.id'))
                ->leftJoin('tbl_clm_te', 'tbl_clm_mstr.id', '=', 'tbl_clm_te.id_mstr_clm', 'and', 'tbl_clm_mstr.created_at', '=', 'tbl_clm_te.created_at')
                ->orwhere('tbl_clm_mstr.employee_name', 'LIKE', '%' . $search . '%')
                ->groupBy('tbl_clm_mstr.created_at', 'tbl_clm_te.created_at')
                ->orderBy('tbl_clm_mstr.created_at', 'asc')
                ->paginate(50);
        } else {
            $data = DB::table('tbl_clm_mstr')
                ->select(DB::raw('count(tbl_clm_te.date_claim) as jumlah_claim, tbl_clm_mstr.employee_name,tbl_clm_mstr.created_at, tbl_clm_mstr.id'))
                ->leftJoin('tbl_clm_te', 'tbl_clm_mstr.id', '=', 'tbl_clm_te.id_mstr_clm', 'and', 'tbl_clm_mstr.created_at', '=', 'tbl_clm_te.created_at')
                ->groupBy('tbl_clm_mstr.created_at', 'tbl_clm_te.created_at')
                ->orderBy('tbl_clm_mstr.created_at', 'asc')
                ->paginate(50);
        }

        return View::make('view_service')->with('data', $data);

        $q    = Input::get('q');
        $stat = Input::get('stat');
        if (!empty($q)) {
            $data = DB::table('tbl_dds')->orderBy('i_dds_id', 'desc')
                ->leftJoin('users', 'tbl_dds.i_user_create', '=', 'users.i_user_id')
                ->orwhere('v_dds_sn', 'LIKE', '%' . $q . '%')
                ->orwhere('v_dds_name', 'LIKE', '%' . $q . '%')
                ->paginate(50);
        } elseif (!empty($stat)) {
            $data = DB::table('tbl_dds')->orderBy('i_dds_id', 'desc')
                ->where('v_status', $stat)
                ->paginate(50);
        } else {
            $data = DB::table('tbl_dds')->orderBy('i_dds_id', 'desc')
                ->paginate(50);
        }
        return View::make('view_dds')->with('data', $data);
    }
}
