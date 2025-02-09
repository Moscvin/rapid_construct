@php
    $pageTitles = [
        'home' => ['ro' => 'Acasă', 'ru' => 'Домой'],
        'properties' => ['ro' => 'Proprietăți', 'ru' => 'Cвойство'],
        'property-details' => ['ro' => 'Detalii Proprietate', 'ru' => 'Детали собственности'],
        'contact' => ['ro' => 'Contact', 'ru' => 'Контакт'],
    ];
    $locale = app()->getLocale();
@endphp

<li class="{{ request()->routeIs('home') ? 'active' : '' }}"><a
        href="{{ route('home') }}">{{ $pageTitles['home'][$locale] }}</a></li>
<li class="{{ request()->routeIs('properties') ? 'active' : '' }}"><a
        href="{{ route('properties') }}">{{ $pageTitles['properties'][$locale] }}</a></li>
<li class="{{ request()->routeIs('property-details') ? 'active' : '' }}"><a
        href="{{ route('property-details', ['property' => 1]) }}">{{ $pageTitles['property-details'][$locale] }}</a></li>
<li class="{{ request()->routeIs('contact') ? 'active' : '' }}"><a
        href="{{ route('contact') }}">{{ $pageTitles['contact'][$locale] }}</a></li>
<li style="display: none"><a href="#"><i class="fa fa-calendar"></i> Schedule a visit</a></li>
