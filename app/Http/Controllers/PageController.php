<?php

namespace App\Http\Controllers;

use App\Models\Counter;
use App\Models\Page;
use App\Models\Partner;
use App\Models\Question;
use App\Models\Service;
use App\Models\Context;
use App\SEOHelper;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request as HttpRequest;

class PageController extends Controller
{
    /**
     * @throws Exception
     */
    public function index()
    {
        $page = Page::find(1);
        if ($page && $this->seoHelper) {
            $this->seoHelper->getSEO($page);
        }

        $counters = Cache::rememberForever('counters', function () {
            return Counter::orderBy('order')->get();
        });
        $contexts = Cache::rememberForever('contexts', function () {
            return Context::get();
        });
        $options = Cache::rememberForever('options', function () {
            return Service::get();
        });

        // $services = Service::activeAndOrderBy('order')->take(8)->get();
        $partners = Partner::activeAndOrderBy('order')->get();
        $questions = Question::orderBy('order')->get();

        $services = Cache::rememberForever('services', function () {
            return Service::orderBy('order')->get();
        });

        return view('home.index', compact('page', 'counters',  'partners', 'questions', 'contexts', 'options', 'services'));
    }

    /**
     * @throws Exception
     */
    public function about()
    {
        $page = Page::find(2);
        if ($page && $this->seoHelper) {
            $this->seoHelper->getSEO($page);
        }

        $counters = Cache::rememberForever('counters', function () {
            return Counter::orderBy('order')->get();
        });
        $partners = Partner::activeAndOrderBy('order')->get();

        return view('about.index', compact('page', 'counters', 'partners'));
    }

    public function setLocale(Request $request, string $lang)
    {
        $referer = Redirect::back()->getTargetUrl();
        $parse_url = parse_url($referer, PHP_URL_PATH);

        $segments = explode('/', $parse_url);


        if (in_array($segments[1], ['ru', 'ro'])) {
            unset($segments[1]);
        }

        array_splice($segments, 1, 0, $lang);

        $url = HttpRequest::root() . implode("/", $segments);

        if (parse_url($referer, PHP_URL_QUERY)) {
            $url = $url . '?' . parse_url($referer, PHP_URL_QUERY);
        }

        return redirect($url);
    }

    public function show($slug)
    {
        $model = Page::where('slug', $slug)->firstOrFail();
        return SEOHelper::getSEO($model);
    }
}
