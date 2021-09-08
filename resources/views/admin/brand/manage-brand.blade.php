@extends('admin.master')
@section('data-table-css')
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.1/css/dataTables.bootstrap4.min.css">
@endsection
@section('body')
    <div class="panel">
        <div class="panel-body">
            <table id="brand-table" class="table table-bordered">
                <thead>
                <tr>
                    <th>Sl No.</th>
                    <th>brand Name</th>
                    <th>brand Description</th>
                    <th>Publication Status</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                @php($i=1)
                @foreach($brands as $brand)
                    <tr>
                        <td>{{$i++}}</td>
                        <td>{{$brand->brand_name}}</td>
                        <td>{{$brand->brand_description}}</td>
                        <td>{{$brand->publication_status==1 ? 'Published' : 'Unpublished'}}</td>
                        <td>
                            @if($brand->publication_status==1)
                                <a href="{{route('unpublished-brand',['id'=>$brand->id])}}" class="btn btn-info">
                                    <span class="glyphicon glyphicon-arrow-up"></span></a>
                            @else
                                <a href="{{route('published-brand',['id'=>$brand->id])}}" class="btn btn-warning">
                                    <span class="glyphicon glyphicon-arrow-down"></span></a>
                            @endif
                            <a href="{{route('edit-brand',['id'=>$brand->id])}}" class="btn btn-success">
                                <span class="glyphicon glyphicon-edit"></span></a>
                            <a href="{{route('delete-brand',['id'=>$brand->id])}}" class="btn btn-danger">
                                <span class="glyphicon glyphicon-trash"></span></a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
            </table>

        </div>

    </div>
@endsection
@push('scripts')
    <script src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.min.js"></script>

    <script src="https://cdn.datatables.net/1.11.1/js/dataTables.bootstrap4.min.js"></script>

    <script>
        $(document).ready(function() {
    $('#brand-table').DataTable();
});
    </script>
@endpush

