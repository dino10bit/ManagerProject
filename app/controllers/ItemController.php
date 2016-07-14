<?php

class ItemController extends BaseController
{
    public function dashboard()
    {
        // show the form
        $dataDDS = DB::table('tbl_dds')
            ->count();
        $dataProduct = DB::table('tbl_product')
            ->count();
        $dataObu = DB::table('tbl_obu')
            ->count();
        $dataModem = DB::table('tbl_modem')
            ->count();
        $dataSimcard = DB::table('tbl_simcard')
            ->count();
        $dataProduct = DB::table('tbl_product')
            ->count();
        return View::make('dashboard', compact('dataDDS', 'dataProduct', 'dataObu', 'dataModem', 'dataSimcard'));
    }

    public function formDds()
    {
        // show the form
        return View::make('formdds');
    }

    public function editDds($id)
    {
        // show the form
        $data = DB::table('tbl_dds')->where('i_dds_id', $id)->get();
        return View::make('edit_dds')->with('data', $data);
    }

    public function saveDds()
    {
        if (!empty(Input::get('sn'))) {
            if (!empty(Input::get('i_dds_id'))) {
                $newDDS              = TblDds::find(Input::get('i_dds_id'));
                $newDDS->v_dds_name  = Input::get('ddsname');
                $newDDS->v_dds_type  = Input::get('type');
                $newDDS->v_dds_sn    = Input::get('sn');
                $newDDS->v_dds_text1 = Input::get('text1');
                $newDDS->v_dds_text2 = Input::get('text2');
                $newDDS->v_dds_text3 = Input::get('text3');
                $newDDS->i_user_modify = Auth::user()->i_user_id;

                $msg = 'Edit Success';

            } else {
                // show the form
                $newDDS                = new TblDds;
                $newDDS->v_dds_name    = Input::get('ddsname');
                $newDDS->v_dds_type    = Input::get('type');
                $newDDS->v_dds_sn      = Input::get('sn');
                $newDDS->v_dds_text1   = Input::get('text1');
                $newDDS->v_dds_text2   = Input::get('text2');
                $newDDS->v_dds_text3   = Input::get('text3');
                $newDDS->v_status      = 'Active';
                $newDDS->i_user_create = Auth::user()->i_user_id;
                $msg                   = 'Save Success';
            }
            $dds = $newDDS->save();
            return Redirect::to('view_dds')->with('message', $msg);
        } else {
            Session::flash('message', "DDS SN Cannot NULL");
            return Redirect::to('formdds');
        }
    }

    public function deleteDds($id)
    {
        $newDDS = TblDds::find($id);
        $newDDS->delete();
        return Redirect::to('view_dds')->with('message', 'Delete Success');
    }

    public function viewDds()
    {
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

    public function formPart()
    {
        // show the form
        return View::make('form_part');
    }

    public function editPart($id)
    {
        // show the form
        $data = DB::table('tbl_part')->where('i_part_id', $id)->get();
        return View::make('edit_part')->with('data', $data);
    }

    public function savePart()
    {
        if (!empty(Input::get('partname'))) {
            if (!empty(Input::get('i_part_id'))) {
                $newPart               = TblPart::find(Input::get('i_part_id'));
                $newPart->v_part_name  = Input::get('partname');
                $newPart->v_part_type  = Input::get('type');
                $newPart->v_part_sn    = Input::get('sn');
                $newPart->v_part_text1 = Input::get('text1');
                $newPart->v_part_text2 = Input::get('text2');
                $newPart->v_part_text3 = Input::get('text3');
                $newPart->i_user_modify = Auth::user()->i_user_id;

                $msg = 'Edit Success';

            } else {
                // show the form
                $newPart                = new TblPart;
                $newPart->v_part_name   = Input::get('partname');
                $newPart->v_part_type   = Input::get('type');
                $newPart->v_part_sn     = Input::get('sn');
                $newPart->stok          = Input::get('stok');
                $newPart->v_part_text1  = Input::get('text1');
                $newPart->v_part_text2  = Input::get('text2');
                $newPart->v_part_text3  = Input::get('text3');
                $newPart->v_status      = 'Active';
                $newPart->i_user_create = Auth::user()->i_user_id;
                $msg                    = 'Save Success';
            }
            $newPart->save();
            return Redirect::to('view_part')->with('message', $msg);
        } else {
            Session::flash('message', "Part SN Cannot NULL");
            return Redirect::to('form_part');
        }
    }

    public function deletePart($id)
    {
        $newPart = TblPart::find($id);
        $newPart->delete();
        return Redirect::to('view_part')->with('message', 'Delete Success');
    }

    public function viewPart()
    {
        $q    = Input::get('q');
        $stat = Input::get('stat');

        if (!empty($q)) {
            $data = DB::table('tbl_part')->orderBy('i_part_id', 'desc')
                ->leftJoin('users', 'tbl_part.i_user_create', '=', 'users.i_user_id')
                ->orwhere('v_part_sn', 'LIKE', '%' . $q . '%')
                ->orwhere('v_part_name', 'LIKE', '%' . $q . '%')
                ->paginate(50);
        } elseif (!empty($stat)) {
            $data = DB::table('tbl_part')->orderBy('i_part_id', 'desc')
                ->where('v_status', $stat)
                ->paginate(50);
        } else {
            $data = DB::table('tbl_part')->orderBy('i_part_id', 'desc')
                ->paginate(50);
        }
        return View::make('view_part')->with('data', $data);
    }

    public function formModem()
    {
        // show the form
        return View::make('form_modem');
    }

    public function saveModem()
    {
        if (!empty(Input::get('sn'))) {
            // show the form
            $newmodem                = new TblModem;
            $newmodem->v_modem_name  = Input::get('name');
            $newmodem->v_modem_type  = Input::get('type');
            $newmodem->v_modem_sn    = Input::get('sn');
            $newmodem->v_modem_text1 = Input::get('text1');
            $newmodem->v_modem_text2 = Input::get('text2');
            $newmodem->v_modem_text3 = Input::get('text3');
            $newmodem->v_modem_text4 = Input::get('text4');
            $newmodem->v_status      = 'Active';
            $newmodem->i_user_create = Auth::user()->i_user_id;
            $newmodem->save();

            return Redirect::to('view_modem')->with('message', 'Save Success');
        } else {
            return Redirect::to('form_modem')->with('message', 'Modem SN Cannot NULL');
        }
    }

    public function viewModem()
    {
        $q = Input::get('q');
        $stat = Input::get('stat');

        if (!empty($q)) {
            $data = DB::table('tbl_modem')->orderBy('i_modem_id', 'desc')
                ->select('tbl_modem.*', 'users.v_login')
                ->leftJoin('users', 'tbl_modem.i_user_create', '=', 'users.i_user_id')
                ->orwhere('v_modem_sn', 'LIKE', '%' . $q . '%')
                ->orwhere('v_modem_name', 'LIKE', '%' . $q . '%')
                ->paginate(50);
        } elseif (!empty($stat)) {
            $data = DB::table('tbl_modem')->orderBy('i_modem_id', 'desc')
                ->select('tbl_modem.*', 'users.v_login')
                ->leftJoin('users', 'tbl_modem.i_user_create', '=', 'users.i_user_id')
                ->where('tbl_modem.v_status', $stat)
                ->paginate(50);
        } else {
            $data = DB::table('tbl_modem')->orderBy('i_modem_id', 'desc')
                ->select('tbl_modem.*', 'users.v_login')
                ->leftJoin('users', 'tbl_modem.i_user_create', '=', 'users.i_user_id')
                ->paginate(50);
        }

        return View::make('view_modem')->with('data', $data);
    }

    public function formObu()
    {
        // show the form
        return View::make('form_obu');
    }

    public function saveObu()
    {
        if (!empty(Input::get('sn'))) {
            // show the form
            $new                = new TblObu;
            $new->v_obu_name    = Input::get('name');
            $new->v_type        = Input::get('type');
            $new->v_sn          = Input::get('sn');
            $new->v_text1       = Input::get('text1');
            $new->v_text2       = Input::get('text2');
            $new->v_text3       = Input::get('text3');
            $new->v_text4       = Input::get('text4');
            $new->v_status      = 'Active';
            $new->i_user_create = Auth::user()->i_user_id;
            $new->save();

            return Redirect::to('view_obu')->with('message', 'Save Success');
        } else {
            return Redirect::to('form_obu')->with('message', 'OBU SN Cannot NULL');
        }
    }

    public function viewObu()
    {
        $q    = Input::get('q');
        $stat = Input::get('stat');

        if (!empty($q)) {
            $data = DB::table('tbl_obu')->orderBy('i_obu_id', 'desc')
                ->select('tbl_obu.*', 'users.v_login')
                ->leftJoin('users', 'tbl_obu.i_user_create', '=', 'users.i_user_id')
                ->orwhere('v_sn', 'LIKE', '%' . $q . '%')
                ->orwhere('v_obu_name', 'LIKE', '%' . $q . '%')
                ->paginate(50);
        } elseif (!empty($stat)) {
            $data = DB::table('tbl_obu')->orderBy('i_obu_id', 'desc')
                ->select('tbl_obu.*', 'users.v_login')
                ->leftJoin('users', 'tbl_obu.i_user_create', '=', 'users.i_user_id')
                ->where('tbl_obu.v_status', $stat)
                ->paginate(50);
        } else {
            $data = DB::table('tbl_obu')->orderBy('i_obu_id', 'desc')
                ->select('tbl_obu.*', 'users.v_login')
                ->leftJoin('users', 'tbl_obu.i_user_create', '=', 'users.i_user_id')
                ->paginate(50);
        }

        return View::make('view_obu')->with('data', $data);
    }

    public function formSimcard()
    {
        // show the form
        return View::make('form_simcard');
    }

    public function saveSimcard()
    {
        if (!empty(Input::get('msisdn'))) {
            // show the form
            $new                   = new TblSimcard;
            $new->v_simcard_name   = Input::get('name');
            $new->v_simcard_serial = Input::get('sn');
            $new->v_simcard_type   = Input::get('type');
            $new->v_simcard_msisdn = Input::get('msisdn');
            $new->v_simcard_text1  = Input::get('text1');
            $new->v_simcard_text2  = Input::get('text2');
            $new->v_simcard_text3  = Input::get('text3');
            $new->v_simcard_text4  = Input::get('text4');
            $new->v_status         = 'Active';
            $new->i_user_create    = Auth::user()->i_user_id;
            $new->save();

            return Redirect::to('view_simcard')->with('message', 'Save Success');
        } else {
            return Redirect::to('form_simcard')->with('message', 'Simcard MSISDN Cannot NULL');
        }
    }

    public function viewSimcard()
    {
        $q = Input::get('q');
        $stat = Input::get('stat');

        if (!empty($q)) {
            $data = DB::table('tbl_simcard')->orderBy('i_simcard_id', 'desc')
                ->select('tbl_simcard.*', 'users.v_login')
                ->leftJoin('users', 'tbl_simcard.i_user_create', '=', 'users.i_user_id')
                ->orwhere('v_simcard_serial', 'LIKE', '%' . $q . '%')
                ->orwhere('v_simcard_name', 'LIKE', '%' . $q . '%')
                ->paginate(50);
        } elseif (!empty($stat)) {
            $data = DB::table('tbl_simcard')->orderBy('i_simcard_id', 'desc')
                ->select('tbl_simcard.*', 'users.v_login')
                ->leftJoin('users', 'tbl_simcard.i_user_create', '=', 'users.i_user_id')
                ->where('tbl_simcard.v_status', $stat)
                ->paginate(50);
        } else {
            $data = DB::table('tbl_simcard')->orderBy('i_simcard_id', 'desc')
                ->select('tbl_simcard.*', 'users.v_login')
                ->leftJoin('users', 'tbl_simcard.i_user_create', '=', 'users.i_user_id')
                ->paginate(50);
        }

        return View::make('view_simcard')->with('data', $data);
    }

    public function formProduct()
    {
        // show the form
        return View::make('form_product');
    }

    public function editProduct($id)
    {
        // show the form
        $data = DB::table('tbl_product')
            ->leftJoin('tbl_dds', 'tbl_dds.i_dds_id', '=', 'tbl_product.i_dds_id')
            ->leftJoin('tbl_modem', 'tbl_modem.i_modem_id', '=', 'tbl_product.i_modem_id')
            ->leftJoin('tbl_obu', 'tbl_obu.i_obu_id', '=', 'tbl_product.i_obu_id')
            ->leftJoin('tbl_simcard', 'tbl_simcard.i_simcard_id', '=', 'tbl_product.i_simcard_id')
            ->select('tbl_product.*', 'tbl_dds.v_dds_sn', 'tbl_modem.v_modem_sn', 'tbl_obu.v_sn', 'tbl_simcard.v_simcard_serial',
                'tbl_simcard.v_simcard_msisdn', 'tbl_product.created_at', 'tbl_product.updated_at',
                'tbl_product.i_user_create', 'tbl_product.i_user_modify', 'tbl_product.v_status')
            ->where('tbl_product.i_product_id', $id)->get();

        return View::make('edit_product')->with('data', $data);
    }

    public function saveProduct()
    {
        if (!empty(Input::get('modemid')) && !empty(Input::get('ddsid')) && !empty(Input::get('obusnid'))) {
            if (!empty(Input::get('product_id'))) {

                $new                = TblProduct::find(Input::get('product_id'));
                $new->i_modem_id    = Input::get('modemid');
                $new->i_simcard_id  = Input::get('simcardid');
                $new->i_obu_id      = Input::get('obusnid');
                $new->i_dds_id      = Input::get('ddsid');
                $new->i_user_modify = Auth::user()->i_user_id;

                // before
                if (!empty(Input::get('old_ddsid'))) {
                    DB::update('update tbl_dds set v_status = ? where i_dds_id = ?', array('Active', Input::get('old_ddsid')));
                    if (Input::get('old_ddsid') != Input::get('ddsid')) {
                        $dataLog = array('DDS', Input::get('old_ddsid'), Input::get('product_id'), '', Auth::user()->i_user_id);
                        $addLog  = $this->saveLog($dataLog);
                    }
                }
                if (!empty(Input::get('old_modemid'))) {
                    DB::update('update tbl_modem set v_status = ? where i_modem_id = ?', array('Active', Input::get('old_modemid')));
                    if (Input::get('old_modemid') != Input::get('modemid')) {
                        $dataLog = array('MODEM', Input::get('old_ddsid'), Input::get('product_id'), '', Auth::user()->i_user_id);
                        $addLog  = $this->saveLog($dataLog);
                    }
                }
                if (!empty(Input::get('old_obusnid'))) {
                    DB::update('update tbl_obu set v_status = ? where i_obu_id = ?', array('Active', Input::get('old_obusnid')));
                    if (Input::get('old_obusnid') != Input::get('obusnid')) {
                        $dataLog = array('OBU', Input::get('old_ddsid'), Input::get('product_id'), '', Auth::user()->i_user_id);
                        $addLog  = $this->saveLog($dataLog);
                    }
                }
                if (!empty(Input::get('old_simcardid'))) {
                    DB::update('update tbl_simcard set v_status = ? where i_simcard_id = ?', array('Active', Input::get('old_simcardid')));
                    if (Input::get('old_simcardid') != Input::get('simcardid')) {
                        $dataLog = array('SIMCARD', Input::get('old_ddsid'), Input::get('product_id'), '', Auth::user()->i_user_id);
                        $addLog  = $this->saveLog($dataLog);
                    }
                }
                //after
                if (!empty(Input::get('ddsid'))) {
                    DB::update('update tbl_dds set v_status = ? where i_dds_id = ?', array('Attached', Input::get('ddsid')));

                    if (Input::get('ddsid') != Input::get('old_ddsid')) {
                        $dataLog = array('DDS', Input::get('ddsid'), Input::get('product_id'), Auth::user()->i_user_id);
                        $addLog  = $this->saveLogAfter($dataLog);
                    }
                }
                if (!empty(Input::get('modemid'))) {
                    DB::update('update tbl_modem set v_status = ? where i_modem_id = ?', array('Attached', Input::get('modemid')));

                    if (Input::get('modemid') != Input::get('old_modemid')) {
                        $dataLog = array('MODEM', Input::get('modemid'), Input::get('product_id'), Auth::user()->i_user_id);
                        $addLog  = $this->saveLogAfter($dataLog);
                    }
                }
                if (!empty(Input::get('obusnid'))) {
                    DB::update('update tbl_obu set v_status = ? where i_obu_id = ?', array('Attached', Input::get('obusnid')));

                    if (Input::get('obusnid') != Input::get('old_obusnid')) {
                        $dataLog = array('OBU', Input::get('obusnid'), Input::get('product_id'), Auth::user()->i_user_id);
                        $addLog  = $this->saveLogAfter($dataLog);
                    }
                }
                if (!empty(Input::get('simcardid'))) {
                    DB::update('update tbl_simcard set v_status = ? where i_simcard_id = ?', array('Attached', Input::get('simcardid')));
                    if (Input::get('old_simcardid') != Input::get('simcardid')) {
                        $dataLog = array('SIMCARD', Input::get('simcardid'), Input::get('product_id'), Auth::user()->i_user_id);
                        $addLog  = $this->saveLogAfter($dataLog);
                    }
                }
                $new->save();
                $msg = 'Update Success';
            } else {
                $productID = $this->getProductID();
                $new                = new TblProduct;
                $new->i_product_id  = $productID;
                $new->i_modem_id    = Input::get('modemid');
                $new->i_simcard_id  = Input::get('simcardid');
                $new->i_obu_id      = Input::get('obusnid');
                $new->i_dds_id      = Input::get('ddsid');
                $new->v_status      = 'Active';
                $new->i_user_create = Auth::user()->i_user_id;
                $new->save();

                $product_id = $new->i_product_id;

                if (!empty(Input::get('ddsid'))) {
                    DB::update('update tbl_dds set v_status = ? where i_dds_id = ?', array('Attached', Input::get('ddsid')));
                    $dataLog = array('DDS', Input::get('ddsid'), $product_id, Auth::user()->i_user_id);
                    $addLog  = $this->saveLogAfter($dataLog);
                }
                if (!empty(Input::get('modemid'))) {
                    DB::update('update tbl_modem set v_status = ? where i_modem_id = ?', array('Attached', Input::get('modemid')));
                    $dataLog = array('MODEM', Input::get('modemid'), $product_id, Auth::user()->i_user_id);
                    $addLog  = $this->saveLogAfter($dataLog);
                }
                if (!empty(Input::get('obusnid'))) {
                    DB::update('update tbl_obu set v_status = ? where i_obu_id = ?', array('Attached', Input::get('obusnid')));
                    $dataLog = array('OBU', Input::get('obusnid'), $product_id, Auth::user()->i_user_id);
                    $addLog  = $this->saveLogAfter($dataLog);
                }
                if (!empty(Input::get('simcardid'))) {
                    DB::update('update tbl_simcard set v_status = ? where i_simcard_id = ?', array('Attached', Input::get('simcardid')));

                    $dataLog = array('SIMCARD', Input::get('simcardid'), $product_id, Auth::user()->i_user_id);
                    $addLog  = $this->saveLogAfter($dataLog);
                }

                $msg = 'Save Success';
            }

            return Redirect::to('form_product')->with('message', $msg);
        } else {
            return Redirect::to('form_product')->with('message', 'Simcard SN and MSISDN Cannot NULL');
        }
    }

    public function viewProduct()
    {
        $q    = Input::get('q');
        $data = DB::table('tbl_product')
            ->leftJoin('tbl_dds', 'tbl_dds.i_dds_id', '=', 'tbl_product.i_dds_id')
            ->leftJoin('tbl_modem', 'tbl_modem.i_modem_id', '=', 'tbl_product.i_modem_id')
            ->leftJoin('tbl_obu', 'tbl_obu.i_obu_id', '=', 'tbl_product.i_obu_id')
            ->leftJoin('tbl_simcard', 'tbl_simcard.i_simcard_id', '=', 'tbl_product.i_simcard_id')
            ->select('tbl_product.i_product_id', 'tbl_dds.v_dds_sn', 'tbl_modem.v_modem_sn', 'tbl_obu.v_sn', 'tbl_simcard.v_simcard_serial',
                'tbl_simcard.v_simcard_msisdn', 'tbl_product.created_at', 'tbl_product.updated_at',
                'tbl_product.i_user_create', 'tbl_product.i_user_modify', 'tbl_product.v_status')
            ->orderBy('i_product_id', 'desc')
            ->where('tbl_product.v_status', 'Active')
            ->where('v_simcard_serial', 'LIKE', '%' . $q . '%')
            ->orwhere('v_simcard_msisdn', 'LIKE', '%' . $q . '%')
            ->orwhere('tbl_dds.v_dds_sn', 'LIKE', '%' . $q . '%')
            ->orwhere('tbl_modem.v_modem_sn', 'LIKE', '%' . $q . '%')
            ->orwhere('tbl_obu.v_sn', 'LIKE', '%' . $q . '%')
            ->orwhere('tbl_product.i_product_id', 'LIKE', '%' . $q . '%')
            ->paginate(50);
        return View::make('view_product')->with('data', $data);
    }

    public function formUser()
    {
        // show the form
        return View::make('form_user');
    }

    public function editUser($id)
    {
        // show the form
        $data = User::find($id);
        return View::make('edit_user')->with('data', $data);
    }

    public function saveUser()
    {
        if (!empty(Input::get('email'))) {
            if (!empty(Input::get('i_user_id'))) {
                $new          = User::find(Input::get('i_user_id'));
                $new->v_login = Input::get('name');
                $new->email   = Input::get('email');

                if (Input::get('password') != 'password') {
                    $new->password = Hash::make(Input::get('password'));
                }
                $msg = 'Edit Success';

            } else {
                // show the form
                $new          = new User;
                $new->v_login = Input::get('name');
                $new->email   = Input::get('email');
                $msg          = 'Save Success';
            }
            $User = $new->save();
            return Redirect::to('view_product')->with('message', $msg);
        } else {
            Session::flash('message', "DDS SN Cannot NULL");
            return Redirect::to('formdds');
        }
    }

    public function deleteUsers($id)
    {
        $User = User::find($id);
        $User->delete();
        return Redirect::to('view_user')->with('message', 'Delete Success');
    }

    public function viewUser()
    {
        $q    = Input::get('q');
        $stat = Input::get('stat');
        if (!empty($q)) {
            $data = DB::table('users')->orderBy('i_dds_id', 'desc')
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
