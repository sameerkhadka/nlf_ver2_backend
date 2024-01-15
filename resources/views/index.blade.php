<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>{{setting('site.title')}}</title>
  <meta name="description" content="{{setting('site.description')}}">
        
  <link rel="icon" type="image/png" href="./images/favicon.png" />
  <!-- Open Graph / Facebook -->
  <meta property="og:type" content="website">
  <meta property="og:title" content="{{setting('site.title')}}">
  <meta property="og:description" content="{{setting('site.description')}}">
  <meta property="og:image" content="{{Voyager::image(setting('site.og'))}}">
  
  <!-- Twitter -->
  <meta property="twitter:card" content="summary_large_image">
  <meta property="twitter:title" content="{{setting('site.title')}}">
  <meta property="twitter:description" content="{{setting('site.description')}}">
  <meta property="twitter:image" content="{{Voyager::image(setting('site.og'))}}">
  
  <link rel="canonical" href="{{Request::url()}}" />

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.4/css/lightbox.min.css" />

  <link
    href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&family=Raleway:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
    rel="stylesheet" />

  <link rel="stylesheet" href="{{asset('css/reset.css')}}" />
  <link rel="stylesheet" href="{{asset('css/style.css?v2')}}" />
</head>

<body>
  <header>
    <div class="container">
      <div class="flex align-center space-between">
        <div class="logo">
          <a href="/">
            <img src="{{Voyager::image(setting('site.logo'))}}" alt="" />
          </a>
        </div>

        <div class="nav_wrap flex">
          <a href="{{setting('site.login')}}" target="_blank">Login/Register</a>

          <div class="menu_btn">
            <i class="fa-solid fa-bars"></i>
          </div>
        </div>
      </div>
    </div>
  </header>

  <section class="hero">
    <div class="container">
      <video autoplay="autoPlay" playsinline="playsInline" muted="muted" loop="loop">
        <source src="/storage/{{json_decode($item->banner_video)[0]->download_link}}" type="video/mp4" />
      </video>
    </div>
  </section>

  <section class="intro p-60">
    <div class="container">
      <div class="row">
        <div class="col-md-7">
        {!!$item->introduction!!}
        </div>
      </div>
    </div>
  </section>

  <div class="marquee-container">
    @php $tags = explode('@', $item->hashtags) @endphp
    <ul class="marquee-content">
      @foreach($tags as $tag)
      <li>{{$tag}}</li>
      @endforeach
    </ul>
  </div>

  <section class="schedule p-60">
    <div class="container">
      <div class="text">
        <h3>{{$item->highlight_title}} <span>{{$item->highlight_subtitle}}</span></h3>
      </div>

      <div class="hightlight_slider swiper">
        <div class="swiper-wrapper">
          @foreach($highlights as $high)
          <div class="swiper-slide">
            <div class="row">
              <div class="col-md-7">
                <div class="content">
                  <div class="date">
                    <h5>{{$high->title}}</h5>
                  </div>

                  <div class="schedule_content">
                    {!!$high->description!!}

                    <br />
                  </div>
                </div>
              </div>
            </div>
          </div>
          @endforeach

        </div>
        <div class="swiper-button-next">⟶</div>
        <div class="swiper-button-prev">⟵</div>
      </div>
    </div>
  </section>

  <section class="timeline p-60">
    <div class="container">
      <div class="text-center">
        <h3>{{$item->timeline_title}}</h3>
      </div>

      <div class="timeline_slider swiper">
        <div class="swiper-wrapper">
          @foreach($timelines as $time)
          <div class="swiper-slide">
            <img src="{{Voyager::image($time->image)}}" alt="" />

            <div class="content">
              <h5>{{$time->title}}</h5>
              <p>
                {{$time->description}}
              </p>
            </div>
          </div>
          @endforeach
        </div>
        <div class="swiper-button-next">⟶</div>
        <div class="swiper-button-prev">⟵</div>
        <div class="swiper-pagination"></div>
      </div>

      <div class="text_center">
        <p>
        {{$item->timeline_description}}
        </p>
      </div>
    </div>
  </section>

  <section class="faq p-60">
    <div class="container">
      <div class="text">
        {!!$item->about!!}
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="img">
            <img src="{{Voyager::image($item->about_img1)}}" alt="" />
          </div>
        </div>

        <div class="col-md-6">

          <img src="{{Voyager::image($item->about_img2)}}" alt="">
        </div>
      </div>
    </div>
  </section>

  <!-- <section class="testimonial p-60">
    <div class="container">
      <h3><em>{{$item->testimonial_title}}</em></h3>

      <div class="row">
        @foreach($testimonials as $test)
        <div class="col-md-3">
          <div class="testimonial_wrap">
            <div class="top">
              <div class="row">
                <div class="col-4">
                  <img src="{{$test->image ? Voyager::image($test->image) : '/images/people.jpg'}}" alt="" />
                </div>
                <div class="col-8">
                  <div class="profile">
                    <h5>{{$test->name}}</h5>
                    <p>{{$test->designation}}</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="text">
              <p>
                {{$test->message}}
              </p>
            </div>
          </div>
        </div>
        @endforeach
      </div>
    </div>
  </section> -->

  <footer class="p-60">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="footer_box footer_logo">
            <img src="{{Voyager::image(setting('site.footer_logo'))}}" alt="" />
          </div>
        </div>

        <div class="col-md-3">
          <div class="footer_box">
            <h3>Contact Us</h3>
            <ul>
              <li>
                <a href="#"><i class="fa-solid fa-location-dot"></i>{{setting('contact-us.address')}}</a>
              </li>
              <li>
                <a href="tel:{{setting('contact-us.phone')}}"><i class="fa-solid fa-phone"></i>{{setting('contact-us.phone')}}</a>
              </li>
              <li>
                <a href="mailto:{{setting('contact-us.email')}}"><i class="fa-regular fa-envelope"></i>{{setting('contact-us.email')}}</a>
              </li>
            </ul>
          </div>
        </div>

        <div class="col-md-3">
          <div class="footer_box">
            <h3>Quick Links</h3>
            <ul>
              @foreach($links as $link)
              <li><a href="{{$link->link}}">{{$link->title}}</a></li>
              @endforeach
            </ul>
          </div>
        </div>

        <div class="col-md-3">
          <div class="footer_box">
            <h3>Follow us on</h3>
            <ul>
              <li>
                <a href="{{setting('contact-us.facebook')}}"><i class="fa-brands fa-facebook-f"></i>NepalLiteratureFestival</a>
              </li>
              <li>
                <a href="{{setting('contact-us.instagram')}}"><i class="fa-brands fa-instagram"></i>Nepallitfest</a>
              </li>
              <li>
                <a href="{{setting('contact-us.twitter')}}"><i class="fa-brands fa-twitter"></i>Nepallitfest</a>
              </li>
              <li>
                <a href="{{setting('contact-us.youtube')}}"><i class="fa-brands fa-youtube"></i>NepalLiteratureFestival</a>
              </li>
            </ul>
          </div>
        </div>

      </div>

      <div class="text_center">
        <p>© Nepal Literature Festival, 2023</p>
      </div>
    </div>
  </footer>

  <script src="https://code.jquery.com/jquery-3.7.0.min.js"
    integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
    integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
    integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
    crossorigin="anonymous"></script>

  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.4/js/lightbox.min.js"></script>

  <script src="{{asset('js/main.js')}}"></script>
</body>

</html>