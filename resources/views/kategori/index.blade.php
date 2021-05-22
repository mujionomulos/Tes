@extends('dashboard.base')

@section('content')


<div class="container-fluid">
  <div class="fade-in">
    <div class="row">
      <div class="col-sm-12">
        <div class="card">
          <div class="card-header"><h4>Kategori list</h4></div>
            <div class="card-body">
                <div class="row mb-3 ml-3">
                    <a class="btn btn-lg btn-primary" href="{{ route('kategori.create') }}">Add new menu</a>
                </div>
                <table class="table table-striped table-bordered datatable">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Kategori</th>
                            <th>Prioritas</th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>    
                        @foreach($menulist as $menu1)
                            <tr>
                                <td>
                                    {{ $menu1->nama }}
                                </td>
                                <td>
                                    {{ $menu1->kategori }}
                                </td>
                                <td>
                                    {{ $menu1->prioritas }}
                                </td>
                                <td>
                                    <a href="{{ url('/kategori/' . $menu1->id) }}" class="btn btn-block btn-success">View</a>
                                  </td>
                                  <td>
                                    <a href="{{ url('/kategori/' . $menu1->id . '/edit') }}" class="btn btn-block btn-primary">Edit</a>
                                  </td>
                                <td>
                                    <form action="{{ route('kategori.destroy', $menu1->id ) }}" method="POST">
                                    @method('DELETE')
                                    @csrf
                                    <button class="btn btn-block btn-danger">Delete</button>
                                </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

@endsection

@section('javascript')

@endsection