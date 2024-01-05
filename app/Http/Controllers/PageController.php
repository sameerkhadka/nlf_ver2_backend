<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Homepage;
use App\Models\Highlight;
use App\Models\Timeline;
use App\Models\Testimonial;
use App\Models\Link;

class PageController extends Controller
{
   public function index()
   {
    $data['item'] = Homepage::find(1);
    $data['highlights'] = Highlight::orderBy('order')->get();
    $data['timelines'] = Timeline::orderBy('order')->get();
    $data['testimonials'] = Testimonial::orderBy('order')->get();
    $data['links'] = Link::orderBy('order')->get();
    return view('index', $data);
   }
}
