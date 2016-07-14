<?php

class BaseController extends Controller
{

    /**
     * Setup the layout used by the controller.
     *
     * @return void
     */
    protected function setupLayout()
    {
        if (!is_null($this->layout)) {
            $this->layout = View::make($this->layout);
        }
    }

    public function saveLog($data = null)
    {
        $Log                = new ItemLog();
        $Log->v_table_name  = $data['0'];
        $Log->i_table_id    = $data['1'];
        $Log->i_before_id   = $data['2'];
        $Log->i_after_id    = $data['3'];
        $Log->i_user_create = $data['4'];
        $Log->save();
    }

    public function saveLogAfter($data = null)
    {

        $before    = $this->getBefore($data['0'], $data['1']);
        $before_id = 0;

        foreach ($before as $val) {
            $before_id = $val->i_after_id;
        }

        $Log                = new ItemLog();
        $Log->v_table_name  = $data['0'];
        $Log->i_table_id    = $data['1'];
        $Log->i_before_id   = $before_id;
        $Log->i_after_id    = $data['2'];
        $Log->i_user_create = $data['3'];
        $Log->save();
    }

    public function getBefore($table, $id)
    {
        $data = ItemLog::where('v_table_name', $table)
            ->select('i_after_id', 'i_before_id')->orderBy('updated_at', 'desc')
            ->where('i_table_id', $id)
            ->get();
        return $data;
    }

    public function getProductID()
    {
        $data = DB::table('tbl_product')->select('i_product_id')->orderBy('created_at', 'desc')->first();
        if (!empty($data)) {
            $ids = $data->i_product_id;
            $id  = explode('-', $ids);
            $id1 = $id['1'] + 1;
            $id1 = str_pad($id1, 5, '0', STR_PAD_LEFT);
            $id  = $id['0'] . '-' . $id1;
        } else {
            $id = 'DDSAND01-00001';
        }
        return $id;
    }

    public function checkProduct($id)
    {
        $data = DB::table('tbl_product')->where('i_product_id', $id)
            ->where('v_status', 'active')
            ->first();
        return $data;
    }

    public function checkProductPO($id)
    {
        $data = DB::table('tbl_product')->where('i_product_id', $id)
            ->where('v_status', '<>', 'active')
            ->first();
        return $data;
    }
}
