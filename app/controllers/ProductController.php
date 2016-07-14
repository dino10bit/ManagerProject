<?php

class ProductController extends BaseController
{
    public function formProduct()
    {
        return View::make('product/form_master_product');
    }

    public function addProduct()
    {
        if (!empty(Input::get('product_id'))) {
            $prod                = MasterProduct::find(Input::get('product_id'));
            $prod->i_user_update = Auth::user()->i_user_id;
            $prod->code          = Input::get('code');
            $prod->name          = Input::get('name');
            $prod->brand         = Input::get('brand');
            $prod->spec_1        = Input::get('spec1');
            $prod->spec_2        = Input::get('spec2');
            $prod->spec_3        = Input::get('spec3');
            $prod->wide          = Input::get('wide');
            $prod->depth         = Input::get('depth');
            $prod->height        = Input::get('height');
            $prod->weight        = Input::get('weight');
            $msg                 = "Update Success...";
        } else {
            $prod                = new MasterProduct;
            $prod->i_user_create = Auth::user()->i_user_id;
            $prod->code          = Input::get('code');
            $prod->name          = Input::get('name');
            $prod->brand         = Input::get('brand');
            $prod->category      = 1;
            $prod->spec_1        = Input::get('spec1');
            $prod->spec_2        = Input::get('spec2');
            $prod->spec_3        = Input::get('spec3');
            $prod->wide          = Input::get('wide');
            $prod->depth         = Input::get('depth');
            $prod->height        = Input::get('height');
            $prod->weight        = Input::get('weight');
            $msg                 = "Save Success...";
        }
        $prod->save();

        return Redirect::to('product/view_product')->with('message', $msg);
    }

    public function viewProduct()
    {
        $q = Input::get('q');

        if (!empty($q)) {
            $data = DB::table('tbl_master_product as mas')->orderBy('mas.code', 'asc')
                ->select('mas.*', 'users.v_login as create', 'upd.v_login as update')
                ->leftJoin('users', 'mas.i_user_create', '=', 'users.i_user_id')
                ->leftJoin('users as upd', 'mas.i_user_update', '=', 'upd.i_user_id')
                ->orwhere('mas.code', 'LIKE', '%' . $q . '%')
                ->orwhere('mas.name', 'LIKE', '%' . $q . '%')
                ->groupBy('mas.id')
                ->paginate(50);
        } elseif (!empty($stat)) {
            $data = DB::table('tbl_master_product as mas')->orderBy('mas.code', 'asc')
                ->select('mas.*', 'users.v_login as create', 'upd.v_login as update')
                ->leftJoin('users', 'mas.i_user_create', '=', 'users.i_user_id')
                ->leftJoin('users as upd', 'mas.i_user_update', '=', 'upd.i_user_id')
                ->groupBy('mas.id')
                ->paginate(50);
        } else {
            $data = DB::table('tbl_master_product as mas')->orderBy('mas.code', 'asc')
                ->select('mas.*', 'users.v_login as create', 'upd.v_login as update')
                ->leftJoin('users', 'mas.i_user_create', '=', 'users.i_user_id')
                ->leftJoin('users as upd', 'mas.i_user_update', '=', 'upd.i_user_id')
                ->groupBy('mas.id')
                ->paginate(50);
        }

        return View::make('product/view_product')->with('data', $data);
    }

    public function editProduct($id)
    {
        $data = DB::table('tbl_master_product as mas')->orderBy('mas.code', 'asc')
            ->select('mas.*', 'users.v_login as create', 'upd.v_login as update')
            ->leftJoin('users', 'mas.i_user_create', '=', 'users.i_user_id')
            ->leftJoin('users as upd', 'mas.i_user_update', '=', 'users.i_user_id')
            ->where('mas.id', $id)
            ->first();

        return View::make('product/edit_master_product')->with('data', $data);
    }

    public function formDetailProduct()
    {
        return View::make('product/form_detail_product');
    }

    public function addDetailProduct()
    {
        if (!empty(Input::get('detail_id'))) {
            $prod                   = DetailProduct::find(Input::get('detail_id'));
            $prod->i_user_update    = Auth::user()->i_user_id;
            $prod->i_mas_product_id = Input::get('codeid');
            $prod->v_product_sn     = Input::get('sn');
            $prod->v_text1          = Input::get('text1');
            $prod->v_text2          = Input::get('text2');
            $prod->v_text3          = Input::get('text3');
            $msg                    = "Update Success...";
        } else {
            $prod                   = new DetailProduct;
            $prod->i_user_create    = Auth::user()->i_user_id;
            $prod->i_mas_product_id = Input::get('codeid');
            $prod->v_product_sn     = Input::get('sn');
            $prod->v_text1          = Input::get('text1');
            $prod->v_text2          = Input::get('text2');
            $prod->v_text3          = Input::get('text3');
            $prod->i_status         = 1;
            $msg                    = "Save Success...";
        }
        $prod->save();

        return Redirect::to('product/view_detail_product')->with('message', $msg);
    }

    public function viewDetailProduct()
    {
        $q = Input::get('q');

        if (!empty($q)) {
            $data = DB::table('tbl_detail_product as det')->orderBy('mas.code', 'asc')
                ->select('mas.code', 'mas.name', 'users.v_login as create', 'upd.v_login as update',
                    'det.*')
                ->leftJoin('tbl_master_product as mas', 'mas.id', '=', 'det.i_mas_product_id')
                ->leftJoin('users', 'det.i_user_create', '=', 'users.i_user_id')
                ->leftJoin('users as upd', 'det.i_user_update', '=', 'upd.i_user_id')
                ->orwhere('mas.code', 'LIKE', '%' . $q . '%')
                ->orwhere('mas.name', 'LIKE', '%' . $q . '%')
                ->orwhere('det.v_product_sn', 'LIKE', '%' . $q . '%')
                ->groupBy('det.id')
                ->paginate(50);
        } elseif (!empty($stat)) {
            $data = DB::table('tbl_detail_product as det')->orderBy('mas.code', 'asc')
                ->select('mas.code', 'mas.name', 'users.v_login as create', 'upd.v_login as update',
                    'det.*')
                ->leftJoin('tbl_master_product as mas', 'mas.id', '=', 'det.i_mas_product_id')
                ->leftJoin('users', 'det.i_user_create', '=', 'users.i_user_id')
                ->leftJoin('users as upd', 'det.i_user_update', '=', 'upd.i_user_id')
                ->groupBy('det.id')
                ->paginate(50);
        } else {
            $data = DB::table('tbl_detail_product as det')->orderBy('mas.code', 'asc')
                ->select('mas.code', 'mas.name', 'users.v_login as create', 'upd.v_login as update',
                    'det.*')
                ->leftJoin('tbl_master_product as mas', 'mas.id', '=', 'det.i_mas_product_id')
                ->leftJoin('users', 'det.i_user_create', '=', 'users.i_user_id')
                ->leftJoin('users as upd', 'det.i_user_update', '=', 'upd.i_user_id')
                ->groupBy('det.id')
                ->paginate(50);
        }

        return View::make('product/view_detail_product')->with('data', $data);
    }

    public function editDetailProduct($id)
    {
        $data = DB::table('tbl_detail_product as det')->orderBy('mas.code', 'asc')
            ->select('mas.id as product_id', 'mas.code', 'mas.name', 'users.v_login as create', 'upd.v_login as update',
                'det.*')
            ->leftJoin('tbl_master_product as mas', 'mas.id', '=', 'det.i_mas_product_id')
            ->leftJoin('users', 'det.i_user_create', '=', 'users.i_user_id')
            ->leftJoin('users as upd', 'det.i_user_update', '=', 'upd.i_user_id')
            ->where('det.id', $id)
            ->groupBy('det.id')
            ->first();

        return View::make('product/edit_detail_product')->with('data', $data);
    }
}
