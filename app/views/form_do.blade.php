@extends('layouts.main')
 
@section('content')
<script>
    window.onload = function() {
  var input = document.getElementById("product_sn").focus();
}
</script>
<div class="box box-primary">
	{{ Form::open(array('url' => 'form_do','name'=>'myform')) }}
		<div class="box-header">
			@if($data==2)
				<h3 class="box-title">Create DO</h3>
			@else
				<h3 class="box-title">Create PO</h3>
			@endif
		</div><!-- /.box-header -->
		@if(Session::has('message'))
			 <div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
		<!-- form start -->
		<?php 
			$value = Session::get('product');
		?>
			<div class="box-body">
				<div class="form-group">
					<label for="name">Product SN</label>
					<input type="text" class="form-control" name="product_sn" id="product_sn" placeholder="Enter Product SN">
					<input type="hidden" class="form-control" name="type" id="type" value="{{$data}}">
				</div>
			</div><!-- /.box-body -->
			<div class="box-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
	{{ Form::close() }}
				<a href="{{ URL::to('delete_session_do') }}">Clear Data</a>
			</div>

	{{ Form::open(array('url' => 'save_do')) }}
		<div class="box-body">
			<div class="form-group">
				<label for="name">Product SN</label>
			</div>
			<?php if(!empty($value)) {
			 $i=0; ?>
			@foreach ($value['id'] as $val)
				{{$val}} <br>
			<?php $i++; ?>
			@endforeach
		</div><!-- /.box-body -->
		<p>Total Item : <?php echo count($value['id']) ?></p>
		<?php } ?>
		<input type="hidden" class="form-control" name="type" id="type" value="{{$data}}">
		<div class="box-footer">
			<button type="submit" class="btn btn-primary">Create DO</button>
		</div>
	{{ Form::close() }}

</div><!-- /.box -->
@stop
