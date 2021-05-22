<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Menulist;
use App\Models\Menus;
use Illuminate\Validation\Rule;
use App\Models\Kategori;

class KategoriController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('admin');
    }

    public function index(Request $request){
        return view('kategori.index', array(
            'menulist'  => Kategori::all()
        ));
    }

    public function create(){
        return view('kategori.create',[]);
    }

    public function store(Request $request){
        $validatedData = $request->validate([
            'nama' => 'required|min:1|max:64',
            'kategori' => 'required',
            'prioritas' => 'required'
        ]);
        $menulist = new Kategori();
        $menulist->nama = $request->input('nama');
        $menulist->kategori = $request->input('kategori');
        $menulist->prioritas = $request->input('prioritas');
        $menulist->save();
        $request->session()->flash('message', 'Successfully created menu');
        return redirect()->route('kategori.create'); 
    }

    public function edit(Request $request){
        return view('kategori.edit',[
            'menulist'  => Kategori::where('id', '=', $request->input('id'))->first()
        ]);
    }

    public function update(Request $request){
        $validatedData = $request->validate([
            'id'   => 'required',
            'name' => 'required|min:1|max:64'
        ]);
        $menulist = Menulist::where('id', '=', $request->input('id'))->first();
        $menulist->name = $request->input('name');
        $menulist->save();
        $request->session()->flash('message', 'Successfully update menu');
        return redirect()->route('menu.menu.edit', ['id'=>$request->input('id')]); 
    }

    /*
    public function show(Request $request){
        return view('dashboard.editmenu.menu.show',[
            'menulist'  => Menulist::where('id', '=', $request->input('id'))->first()
        ]);
    }
    */

    public function delete(Request $request){
        $menus = Kategori::where('id', '=', $request->input('id'))->first();
        if(!empty($menus)){
            $request->session()->flash('message', "Can't delete. This menu have assigned menu elements");
            $request->session()->flash('back', 'kategori.index');
            return view('dashboard.shared.universal-info');
        }else{
            Kategori::where('id', '=', $request->input('id'))->delete();
            $request->session()->flash('message', 'Successfully deleted menu');
            $request->session()->flash('back', 'kategori.index');
            return view('dashboard.shared.universal-info');
        }
    }

}
