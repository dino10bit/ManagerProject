<?php

class ClaimteController extends BaseController
{
    public function formClaimte()
    {
        // show the form
        return View::make('formclaimte');
    }

    public function editClaimte()
    {
        // show the form
        $data = DB::table('tbl_clm_te')->where('id', $id)->get();
        return View::make('edit_claimte')->with('data', $data);
    }

    public function saveClaimte()
    {
        $input                 = Input::all();
        $master                = new Claimmstr;
        $master->employee_name = $input['employeeid'];
        $master->save();

        for ($i = 0; $i < count(Input::get('date')); $i++) {
            $claimdetail              = new Claimte;
            $claimdetail->id_mstr_clm = $master->id;
            $dc                       = $input['date'][$i];
            $dt                       = str_replace('/', '-', $dc);
            $claimdetail->date_claim  = date('Y-m-d', strtotime($dt));
            $claimdetail->destination = $input['destination'][$i];
            $claimdetail->amount_idr  = $input['amount_idr'][$i];
            $claimdetail->save();
        }
        return Redirect::to('/formclaimte')->with('message', 'Save Success');
    }

    public function viewClaimte()
    {
        $search = Input::get('search');
        //$stat = Input::get('stat');
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
        return View::make('viewclaimte')->with('data', $data);

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
