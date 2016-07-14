<?php
class DoController extends BaseController
{
    public function viewDO()
    {
        $data = DB::table('tbl_master_do')
            ->select(DB::raw('count(tbl_detail_do.i_det_do_id) as jumlah, users.v_login,tbl_master_do.created_at,tbl_master_do.i_do_id'))
            ->leftJoin('users', 'tbl_master_do.i_user_id', '=', 'users.i_user_id')
            ->leftJoin('tbl_detail_do', 'tbl_master_do.i_do_id', '=', 'tbl_detail_do.i_do_id')
            ->where('tbl_master_do.v_status', 2)
            ->groupBy('tbl_detail_do.i_do_id')
            ->orderBy('tbl_master_do.i_do_id', 'desc')
            ->paginate(50);
        return View::make('view_do')->with('data', $data);
    }

    public function viewPO()
    {
        $data = DB::table('tbl_master_do')
            ->select(DB::raw('count(tbl_detail_do.i_det_do_id) as jumlah, users.v_login,tbl_master_do.created_at,tbl_master_do.i_do_id'))
            ->leftJoin('users', 'tbl_master_do.i_user_id', '=', 'users.i_user_id')
            ->leftJoin('tbl_detail_do', 'tbl_master_do.i_do_id', '=', 'tbl_detail_do.i_do_id')
            ->where('tbl_master_do.v_status', 1)
            ->groupBy('tbl_detail_do.i_do_id')
            ->orderBy('tbl_master_do.i_do_id', 'desc')
            ->paginate(50);
        return View::make('view_po')->with('data', $data);
    }

    public function detailDO()
    {
        return View::make('detail_do');
    }

    public function formDO($id)
    {
        return View::make('form_do')->with('data', $id);
    }

    public function saveTempDO()
    {
        $val = Input::get('product_sn');
        $value = Session::get('product');

        if (!empty($value)) {
            $type = Input::get('type');
            if (in_array($val, $value['id'])) {
                Session::flash('message', "Product Already Added");
            } else {
                $msg = 'Error...';
                if ($type == 2) {
                    $cek = $this->checkProduct($val);
                    $msg = 'Product Not Found or Not ready';
                } elseif ($type == 1) {
                    $cek = $this->checkProductPO($val);
                    $msg = 'Product is Active';
                }
                if ($cek) {
                    Session::push('product.id', $val);
                    Session::flash('message', "OK");
                } else {
                    Session::flash('message', $msg);
                }
            }
        } else {
            $type = Input::get('type');
            $msg  = 'Error...';
            if ($type == 2) {
                $cek = $this->checkProduct($val);
                $msg = 'Product Not Found or Not ready';
            } elseif ($type == 1) {
                $cek = $this->checkProductPO($val);
                $msg = 'Product is Active';
            }
            if ($cek) {
                Session::push('product.id', $val);
                Session::flash('message', "OK");
            } else {
                Session::flash('message', $msg);
            }
        }
        return Redirect::back();
    }

    public function deSessionDO()
    {
        Session::flash('message', "Success Delete");
        Session::forget('product.id');
        return Redirect::back();
    }

    public function saveDO()
    {
        $value = Session::get('product');
        $type  = Input::get('type');

        if ($type == 1) {
            $status = 'Service';
            $cont   = 'view_po';
        } else {
            $cont   = 'view_do';
            $status = 'Express';
        }

        $masterDO            = new TblMasterDO;
        $masterDO->i_user_id = Auth::user()->i_user_id;
        $masterDO->v_status  = Input::get('type');
        $masterDO->save();

        foreach ($value['id'] as $val) {
            $detailDO               = new TblDetailDO;
            $detailDO->i_do_id      = $masterDO->i_do_id;
            $detailDO->v_product_id = $val;
            $detailDO->save();

            $product           = TblProduct::find($val);
            $product->v_status = $status;
            $product->save();
        }

        Session::forget('product.id');
        Session::flash('message', "Data Success Created");
        return Redirect::to($cont)->with('message', 'Save Success');
    }
}
