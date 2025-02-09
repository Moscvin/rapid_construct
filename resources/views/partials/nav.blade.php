<li class="{{ Route::is('home') ? 'active' : '' }}"><a href="{{ route('home') }}">Home</a></li>
<li class="{{ Route::is('properties') ? 'active' : '' }}"><a href="{{ route('properties') }}">Properties</a></li>
<li class="{{ Route::is('property-details') ? 'active' : '' }}"><a
        href="{{ route('property-details', ['property' => 1]) }}">Property Details</a></li>
<li class="{{ Route::is('contact') ? 'active' : '' }}"><a href="{{ route('contact') }}">Contact
        Us</a></li>
<li><a href="#"><i class="fa fa-calendar"></i> Schedule a visit</a></li>
