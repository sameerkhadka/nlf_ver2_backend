let marqueeEl = document.querySelector(".marquee-container");
marqueeEl && marqueeFunction();

function marqueeFunction() {
  const root = document.documentElement;
  const marqueeElementsDisplayed = getComputedStyle(root).getPropertyValue(
    "--marquee-elements-displayed"
  );
  const marqueeContent = document.querySelector("ul.marquee-content");

  root.style.setProperty("--marquee-elements", marqueeContent.children.length);

  for (let i = 0; i < marqueeElementsDisplayed; i++) {
    marqueeContent.appendChild(marqueeContent.children[i].cloneNode(true));
  }
}

var scheduleSwiper = new Swiper(".hightlight_slider", {
  slidesPerView: 1,
  loop: false,
  effect: "fade",
  spaceBetween: 0,
  speed: 1200,
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  autoplay: false,
});

var scheduleSwiper = new Swiper(".timeline_slider", {
  slidesPerView: 1.5,
  centeredSlides: true,
  centeredSlidesBounds: true,
  loop: true,
  speed: 1200,
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
  },
  autoplay: {
    delay: 8500,
  },
});

$(window).on("scroll", function () {
  if ($(this).scrollTop() > 600) {
    $("header").addClass("fix-head");
  } else {
    $("header").removeClass("fix-head");
  }
});
