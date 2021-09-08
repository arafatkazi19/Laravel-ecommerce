    @extends('admin.master')
    @section('data-table-css')
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.1/css/dataTables.bootstrap4.min.css">
    @endsection
    @section('body')
     <div class="panel">
         <div class="panel-body">
             <table id="category-table" class="table table-bordered">
                <thead>
                 <tr>
                     <th>Sl No.</th>
                     <th>Category Name</th>
                     <th>Category Description</th>
                     <th>Publication Status</th>
                     <th>Action</th>
                 </tr>
                 </thead>
                 <tbody>
                 @php($i=1)
                 @foreach($categories as $category)
                 
                 <tr>
                     <td>{{$i++}}</td>
                     <td>{{$category->category_name}}</td>
                     <td>{{$category->category_description}}</td>
                     <td>{{$category->publication_status==1 ? 'Published' : 'Unpublished'}}</td>
                     <td>
                         @if($category->publication_status==1)
                             <a href="{{route('unpublished-category',['id'=>$category->id])}}" class="btn btn-info">
                                 <span class="glyphicon glyphicon-arrow-up"></span></a>
                         @else
                             <a href="{{route('published-category',['id'=>$category->id])}}" class="btn btn-warning">
                                 <span class="glyphicon glyphicon-arrow-down"></span></a>
                         @endif
                         <a href="{{route('edit-category',['id'=>$category->id])}}" class="btn btn-success">
                         <span class="glyphicon glyphicon-edit"></span></a>
                         <a href="{{route('delete-category',['id'=>$category->id])}}" class="btn btn-danger">
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
        $('#category-table').DataTable();
    });
        </script>
    @endpush