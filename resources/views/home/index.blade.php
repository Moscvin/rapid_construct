@extends('layouts.app')

@section('title')
@section('content')
    <div class="main-banner">
        <div class="owl-carousel owl-banner">
            @php $itemIndex = 1; @endphp
            @foreach ($contexts as $context)
                @if ($context->slug === 'slider')
                    <div class="item item-{{ $itemIndex }}">
                        <div class="header-text">
                            {!! $context->text !!}
                        </div>
                    </div>
                    @php $itemIndex++; @endphp
                @endif
            @endforeach
        </div>
    </div>
    <div class="featured section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="left-image">
                        <img src="{{ asset('assets/images/featured.jpg') }}" alt="" />
                        <a href="property-details.html"><img src="assets/images/featured-icon.png" alt=""
                                style="max-width: 60px; padding: 0px" /></a>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="section-heading">
                        <h6>| {{ $vars['intrebari'] }}</h6>
                        <h2>{{ $vars['rapid_construct_este_o_companie_specializata_in_constructii'] }}</h2>
                    </div>
                    <div class="accordion" id="accordionExample">
                        @foreach ($questions as $index => $question)
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="heading{{ $index }}">
                                    <button class="accordion-button {{ $index == 0 ? '' : 'collapsed' }}" type="button"
                                        data-bs-toggle="collapse" data-bs-target="#collapse{{ $index }}"
                                        aria-expanded="{{ $index == 0 ? 'true' : 'false' }}"
                                        aria-controls="collapse{{ $index }}">
                                        {{ $question->question }}
                                    </button>
                                </h2>
                                <div id="collapse{{ $index }}"
                                    class="accordion-collapse collapse {{ $index == 0 ? 'show' : '' }}"
                                    aria-labelledby="heading{{ $index }}" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        {!! $question->answer !!}
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="info-table">
                        <ul>
                            <li>
                                <img src="assets/images/info-icon-02.png" alt="" style="max-width: 52px" />
                                <h4>Contracttest<br /><span>Contract Ready</span></h4>
                            </li>
                            <li>
                                <img src="assets/images/info-icon-03.png" alt="" style="max-width: 52px" />
                                <h4>Payment<br /><span>Payment Process</span></h4>
                            </li>
                            <li>
                                <img src="assets/images/info-icon-04.png" alt="" style="max-width: 52px" />
                                <h4>Safety<br /><span>24/7 Under Control</span></h4>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="video section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 offset-lg-4">
                    <div class="section-heading text-center">
                        <h6>| Video View</h6>
                        <h2>{{ $vars['obtine_o_privire_mai_apropiata_si_o_senzatie_diferita'] }}</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="video-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="video-frame">
                        <img src="assets/images/video-frame.jpg" alt="" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="fun-facts">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="wrapper">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="counter">
                                    <h2 class="timer count-title count-number" data-to="34" data-speed="1000"></h2>
                                    <p class="count-text">Buildings<br />Finished Now</p>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="counter">
                                    <h2 class="timer count-title count-number" data-to="12" data-speed="1000"></h2>
                                    <p class="count-text">Years<br />Experience</p>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="counter">
                                    <h2 class="timer count-title count-number" data-to="24" data-speed="1000"></h2>
                                    <p class="count-text">Awwards test<br />Won 2023</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="section best-deal">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="section-heading">
                        <h6>| {{ $vars['cele_mai_bune_optiuni'] }}</h6>
                        <h2>{{ $vars['gaseste_ti_cea_mai_buna_oferta_chiar_acum'] }}</h2>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="tabs-content">
                        <div class="row">
                            <div class="nav-wrapper">
                                <ul class="nav nav-tabs" role="tablist">
                                    @foreach ($services as $service)
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link @if ($loop->first) active @endif"
                                                id="{{ $service->slug }}-tab" data-bs-toggle="tab"
                                                data-bs-target="#{{ $service->slug }}" type="button" role="tab"
                                                aria-controls="{{ $service->slug }}"
                                                aria-selected="{{ $loop->first ? 'true' : 'false' }}">
                                                {{ $service->title }}
                                            </button>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                            <div class="tab-content" id="myTabContent">
                                @foreach ($services as $service)
                                    <div class="tab-pane fade @if ($loop->first) show active @endif"
                                        id="{{ $service->slug }}" role="tabpanel"
                                        aria-labelledby="{{ $service->slug }}-tab">
                                        <div class="row">
                                            <div class="col-lg-8">
                                                <img src="{{ asset('storage/' . $service->image) }}"
                                                    alt="{{ $service->title }}" />
                                            </div>
                                            <div class="col-lg-4">
                                                <p>{!! $service->text !!}</p>
                                                <div class="icon-button">
                                                    <a href="property-details.html"><i class="fa fa-calendar"></i>
                                                        {{ $vars['programeaza_o_vizita'] }}</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="properties section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 offset-lg-4">
                    <div class="section-heading text-center">
                        <h6>| {{ $vars['proprietati'] }}</h6>
                        <h2>{{ $vars['oferim_cele_mai_bune_servicii_de_constructie_pentru_proiectul_tau'] }}</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach ($types as $type)
                    <div class="col-lg-4 col-md-6">
                        <div class="item">
                            <a href="property-details.html"><img src="{{ asset('storage/' . $type->image) }}"
                                    alt="{{ $type->title }}" /></a>
                            <span class="category">{{ $type->title }}</span>
                            <h4>
                                <a href="property-details.html">{{ $type->text }}</a>
                            </h4>
                            <div class="main-button">
                                <a href="property-details.html">{{ $vars['programeaza_o_vizita'] }}</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>

    <div class="contact section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 offset-lg-4">
                    <div class="section-heading text-center">
                        <h6>{{ $vars['contact_us'] }}</h6>
                        <h2>{{ $vars['ia_legatura_cu_agentii_nostri'] }}</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="contact-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    {{-- <div id="map">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2721.4181767188697!2d28.85168372673415!3d46.99276143016387!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40c97eadef0b0109%3A0x8b32c5f4178c482a!2zU3RyYWRhIE5pY29sYWUgWmVsaW5za2kgMTUsIENoaciZaW7Eg3UsINCc0L7Qu9C00L7QstCw!5e0!3m2!1sru!2s!4v1740684709875!5m2!1sru!2s"
                            width="300" height="300" style="border:0;" allowfullscreen="" loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div> --}}
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="item phone">
                                <img src="assets/images/phone-icon.png" alt="" style="max-width: 52px" />
                                <h7>
                                    <a style="color: #000"
                                        href="tel:{{ $vars['numar_de_telefon'] }}">{{ $vars['phone'] }}</a><br />
                                    <span><a style="color: #000"
                                            href="tel:{{ $vars['numar_de_telefon'] }}">{{ $vars['numar_de_telefon'] }}</a></span>
                                </h7>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="item email">
                                <img src="assets/images/email-icon.png" alt="" style="max-width: 52px" />
                                <h7>
                                    <a style="color: #000"
                                        href="https://www.google.com/maps/search/?api=1&query={{ urlencode($vars['adress2']) }}"
                                        target="_blank">
                                        {{ $vars['adress2'] }}
                                    </a><br />
                                    <span>Adresa</span>
                                </h7>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <form id="contact-form" action="{{ route('contact.store') }}" method="post">
                        @csrf
                        <div class="row">
                            <div class="col-lg-12">
                                <fieldset>
                                    <label for="name">Numele</label>
                                    <input type="name" name="name" id="name" placeholder="Numele..."
                                        autocomplete="on" required />
                                </fieldset>
                            </div>
                            <div class="col-lg-12">
                                <fieldset>
                                    <label for="email">Adresa Email</label>
                                    <input type="email" name="email" id="email" pattern="[^ @]*@[^ @]*"
                                        placeholder="Email..." required="" />
                                </fieldset>
                            </div>
                            <div class="col-lg-12">
                                <fieldset>
                                    <label for="phone">Telefon</label>
                                    <input type="text" name="phone" id="phone" placeholder="Telefon..."
                                        autocomplete="on" />
                                </fieldset>
                            </div>
                            <div class="col-lg-12">
                                <fieldset>
                                    <label for="message">Mesaj</label>
                                    <textarea name="message" id="message" placeholder="Mesajul.."></textarea>
                                </fieldset>
                            </div>
                            <div class="col-lg-12">
                                <fieldset>
                                    <button type="submit" id="form-submit" class="orange-button">
                                        {{ $vars['trimite_mesaj'] }}
                                    </button>
                                </fieldset>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
