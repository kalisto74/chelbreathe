jQuery(document).ready(function () {
  'use strict'

  // Initialize tooltip component
  $('[data-toggle="tooltip"]').tooltip()

  // Initialize popover component
  $('[data-toggle="popover"]').popover()

  // dropdown
  $('.dropdown a.dropdown-toggle').click(function () {
    location.href = $(this).attr('href')
  })

  // karta zoom
  wheelzoom(document.querySelector('img.zoom'));

  // projects_slider
	var owl = $(".projects_slider");
  owl.owlCarousel({
    navigation: true,
		navigationText : ["",""],
		pagination: false,
		//navText: ["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
		slideSpeed: 700,
		autoPlay: 5000,
    items : 4,
    itemsDesktop : [600,2],
    margin: 10,
		autoHeight: true
  });

  $('.mfp-gallery').each(function () {
    $(this).magnificPopup({
      delegate: 'a',
      mainClass: 'mfp-zoom-in',
      type: 'image',
      tLoading: '',
      image: {
        verticalFit: true,
        titleSrc: function (item) {
          var caption = item.el.attr('title')
          return caption
        }
      },
      gallery: {
        enabled: true,
        navigateByImgClick: true,
        preload: [0, 1], // Will preload 0 - before current, and 1 after the current image
        arrowMarkup: '<button title="%title%" type="button" class="mfp-arrow mfp-arrow-%dir%"></button>', // markup of an arrow button
        tPrev: 'Previous (Left arrow key)', // title for left button
        tNext: 'Next (Right arrow key)', // title for right button
        tCounter: '<span class="mfp-counter">%curr% of %total%</span>' // markup of counter
      },
      removalDelay: 300,
      callbacks: {
        beforeChange: function () {
          this.items[0].src = this.items[0].src + '?=' + Math.random()
        },
        open: function () {
          $.magnificPopup.instance.next = function () {
            var self = this
            self.wrap.removeClass('mfp-image-loaded')
            setTimeout(function () { $.magnificPopup.proto.next.call(self); }, 120)
          }
          $.magnificPopup.instance.prev = function () {
            var self = this
            self.wrap.removeClass('mfp-image-loaded')
            setTimeout(function () { $.magnificPopup.proto.prev.call(self); }, 120)
          }
        },
        imageLoadComplete: function () {
          var self = this
          setTimeout(function () { self.wrap.addClass('mfp-image-loaded'); }, 16)
        }
      }
    })
  })
  
  // countdown
  /*
  var deadline = "April 14 2018 12:00:00 GMT-0400";
  function time_remaining(endtime) {
    var t = Date.parse(endtime) - Date.parse(new Date());
    var seconds = Math.floor((t / 1000) % 60);
    var minutes = Math.floor((t / 1000 / 60) % 60);
    var hours = Math.floor((t / (1000 * 60 * 60)) % 24);
    var days = Math.floor(t / (1000 * 60 * 60 * 24));
    return {
      total: t,
      days: days,
      hours: hours,
      minutes: minutes,
      seconds: seconds
    };
  }
  function run_clock(id, endtime) {
    var clock = document.getElementById(id);

    // get spans where our clock numbers are held
    var days_span = clock.querySelector(".days");
    var hours_span = clock.querySelector(".hours");
    var minutes_span = clock.querySelector(".minutes");
    var seconds_span = clock.querySelector(".seconds");

    function update_clock() {
      var t = time_remaining(endtime);

      // update the numbers in each part of the clock
      days_span.innerHTML = t.days;
      hours_span.innerHTML = ("0" + t.hours).slice(-2);
      minutes_span.innerHTML = ("0" + t.minutes).slice(-2);
      seconds_span.innerHTML = ("0" + t.seconds).slice(-2);

      if (t.total <= 0) {
        clearInterval(timeinterval);
      }
    }
    update_clock();
    var timeinterval = setInterval(update_clock, 1000);
  }
  run_clock("clockdiv", deadline);
  */
	
	//Modal Bootstrap
	$('#myModal').on('shown.bs.modal', function () {
		$('#myInput').trigger('focus')
	})

	//Modal open-popup
	$('.open-popup').magnificPopup({
		type:'inline',
		midClick: true,
		removalDelay: 500, //delay removal by X to allow out-animation
		callbacks: {
			beforeOpen: function() {
				this.st.mainClass = this.st.el.attr('data-effect');
			}
		}
  });

  //PrettyPhoto
    $("a[rel^='prettyPhoto']").prettyPhoto();

  //Formit
  $('input[name="fz152"]').change(function(){
    if(this.checked) {
      $(this).closest('form').find('[type="submit"]').prop('disabled',false);
    } else {
      $(this).closest('form').find('[type="submit"]').prop('disabled',true);
    }
  });
  
   $(document).on('af_complete', function(event, response) {
    var form = response.form;
      if (response.success == true ) {
        $('#volonter').modal('hide')
    }
    });


}())


jQuery('#backtotop').click(function () {
  jQuery('body,html').animate({
    scrollTop: 0
  }, 600)
})
jQuery(window).scroll(function () {
  if (jQuery(window).scrollTop() > 150) {
    jQuery('#backtotop').addClass('visible')
  } else {
    jQuery('#backtotop').removeClass('visible')
  }
})

