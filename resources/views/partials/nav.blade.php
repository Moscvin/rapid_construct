@php
    $pageTitles = [
        'home' => 'Pagina Principală',
        'about' => 'Despre Noi',
        'service' => 'Serviciile Noastre',
        'projects' => 'Proiecte finalizate',
        'contact' => 'Contacte',
    ];
@endphp

<li class="{{ request()->routeIs('home') ? 'active' : '' }}">
    <a href="{{ route('home') }}">{{ $pageTitles['home'] }}</a>
</li>
<li class="{{ request()->routeIs('about') ? 'active' : '' }}">
    <a href="{{ route('about') }}">{{ $pageTitles['about'] }}</a>
</li>
<li class="{{ request()->routeIs('service') ? 'active' : '' }}">
    <a href="{{ route('service') }}">{{ $pageTitles['service'] }}</a>
</li>
<li class="{{ request()->routeIs('projects') ? 'active' : '' }}">
    <a href="{{ route('projects') }}">{{ $pageTitles['projects'] }}</a>
</li>
<li class="{{ request()->routeIs('contact') ? 'active' : '' }}">
    <a href="{{ route('contact') }}">{{ $pageTitles['contact'] }}</a>
</li>

<li style="display: none">
    <a href="#"><i class="fa fa-calendar"></i> Programează o vizită</a>
</li>
