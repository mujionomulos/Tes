@extends('dashboard.base')

@section('content')


<div class="container-fluid">
  <div class="fade-in">
    <div class="row">
      <div class="col-sm-12">
        <div class="card">
          <div class="card-header"><h4>Edit Kategori</h4></div>
            <div class="card-body">
                @if(Session::has('message'))
                    <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                @endif
               <form method="POST" action="/kategori/{{ $note->id }}">
                            @csrf
                            @method('PUT')
                    <table class="table table-striped table-bordered datatable">
                        <tbody>
                            <tr>
                                <th>
                                    Nama
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="nama" placeholder="Nama"/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Jenis Kategori
                                </th>
                                <td>
                                    <select class="form-control" name="kategori" id="kategori">
                                        <option value="pemasukan" selected>Pemasukan</option>
                                        <option value="pengeluaran" selected>Pengeluaran</option>
                                    </select>
                                </td>
                            </tr>
                             <tr>
                                <th>
                                    Prioritas
                                </th>
                                <td>
                                    <input type="number" class="form-control" name="prioritas" placeholder="Prioritas"/>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <button class="btn btn-primary" type="submit">Save</button>
                    <a class="btn btn-primary" href="{{ route('kategori.index') }}">Return</a>
                </form>
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