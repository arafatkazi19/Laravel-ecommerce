    @extends('admin.master')
    @section('data-table-css')
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.1/css/dataTables.bootstrap4.min.css">
    @endsection
    @section('body')
        <div class="panel">
            <div class="panel-body">
                <table id="product-table" class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Sl No.</th>
                        <th>Category Name</th>
                        <th>Brand Name</th>
                        <th>Product Name</th>
                        <th>Product Price</th>
                        <th>Product Quantity</th>
                        <th>Product Image</th>
                        <th>Publication Status</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    @php($i=1)
                    @foreach($products as $product)
                    <tr>
                        <td>{{$i++}}</td>
                        <td>{{$product->category_name}}</td>
                        <td>{{$product->brand_name}}</td>
                        <td>{{$product->product_name}}</td>
                        <td>Tk. {{$product->product_price}}</td>
                        <td>{{$product->product_quantity}}</td>
                        <td>
                            <img src="{{asset($product->product_image)}}" height="200" weidth="200">
                        </td>
                        <td>{{$product->publication_status==1 ? 'Published' : 'Unpublished'}}</td>
                        <td>
                            @if($product->publication_status==1)
                                <a href="{{route('unpublished-product',['id'=>$product->id])}}" class="btn btn-info">
                                    <span class="glyphicon glyphicon-arrow-up"></span></a>
                            @else
                                <a href="{{route('published-product',['id'=>$product->id])}}" class="btn btn-warning">
                                    <span class="glyphicon glyphicon-arrow-down"></span></a>
                            @endif
                            <a href="{{route('edit-product',['id'=>$product->id])}}" class="btn btn-success">
                                <span class="glyphicon glyphicon-edit"></span></a>
                            <a href="{{route('delete-product',['id'=>$product->id])}}" class="btn btn-danger">
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
        $('#product-table').DataTable();
    });
        </script>
    @endpush
