<?php

class PrintController extends BaseController
{
    public function __construct()
    {
        $data             = Session::all();
        $data['is_login'] = 0;
        $login            = $data['is_login'];

        if ($login != 1) {
            return Redirect::to('login');
        }
    }

    public function product($id)
    {
        $detail = DB::table('tbl_master_do')
            ->select('users.v_login', 'tbl_master_do.created_at', 'v_product_id', 'tbl_master_do.i_do_id')
            ->leftJoin('users', 'tbl_master_do.i_user_id', '=', 'users.i_user_id')
            ->leftJoin('tbl_detail_do', 'tbl_master_do.i_do_id', '=', 'tbl_detail_do.i_do_id')
            ->where('tbl_master_do.i_do_id', $id)
            ->orderBy('tbl_master_do.i_do_id', 'desc')
            ->get();

        $master = DB::table('tbl_master_do')
            ->where('tbl_master_do.i_do_id', $id)
            ->first();

        return View::make('print/product', compact('master', 'detail'));
    }

    public function claimte($id)
    {
        $detail = DB::table('tbl_clm_mstr')
            ->select('tbl_clm_mstr.created_at', 'tbl_clm_te.created_at', 'tbl_clm_te.date_claim', 'tbl_clm_te.destination', 'tbl_clm_te.km', 'tbl_clm_te.toll_rm', 'tbl_clm_te.amount_idr')
            ->leftJoin('tbl_clm_te', 'tbl_clm_mstr.id', '=', 'tbl_clm_te.id_mstr_clm', 'and', 'tbl_clm_mstr.created_at', '=', 'tbl_clm_te.created_at')
            ->where('tbl_clm_mstr.id', $id)
            ->orderBy('tbl_clm_mstr.id', 'asc')
            ->get();

        $master = DB::table('tbl_clm_mstr')->where('tbl_clm_mstr.id', $id)->first();

        return View::make('print/claimte', compact('master', 'detail'));

    }

    public function claimtexx()
    {
        // DB::table('tbl_clm_mstr')->orderBy('tbl_clm_mstr.id', 'asc')
        //     ->leftJoin('tbl_clm_te', 'tbl_clm_mstr.id', '=', 'tbl_clm_te.id_mstr_clm','and','tbl_clm_mstr.created_at', '=', 'tbl_clm_te.created_at')
        //     ->get();
        $data = array(1, 2, 3);

        return View::make('print/claimte')->with('data', $data);
    }
}
