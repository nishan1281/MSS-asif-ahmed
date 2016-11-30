
/* Custom Scripts */
$(document).ready(function () {

	// Start work gallery
	$('#Grid').mixitup();

	// Start main image 
	var viewHeight = $(window).height()-145;
	$(".bannerArea").css({
		'height': viewHeight
	});
	$(window).on('resize', function () {
		var viewHeight = $(window).height()-145;
		$(".bannerArea").css({
			'height': viewHeight
		});
	});

	// Start Parallax script
	var windowsize = $(window).width();

	$(window).resize(function() {
	var windowsize = $(window).width();
	});
	if (windowsize > 768) {

	//if the window is greater than 440px wide then turn on jScrollPane..
		$('#headerArea').parallax("50%", .2);
		$('.workArea').parallax("50%", .05);
	}else
	{
		$('#headerArea').parallax("50%", .2);
		$('.workArea').parallax("50%", -.00);
	}

	// Start Header Animation
	$(window).scroll(function () {
		if ($(document).scrollTop() < 1) {
			$('#headerArea').removeClass('tiny');
		} else {
			$('#headerArea').addClass('tiny');
		}
	});
	
	$('.flexslider').flexslider({
		animation: "fade",
  	slideshowSpeed: 5000,
    pauseOnHover: false, 
		controlNav: true,
		directionNav: true,
		prevText: "<span class='fa fa-angle-left'></span>",
		nextText: "<span class='fa fa-angle-right'></span>",
		start: function(slider){
		  $('body').removeClass('loading');
		}
	});

	// Start logo Slider
	$('.flexslider2').flexslider({
        animation: "slide",
        itemWidth: 225,
		slideshowSpeed: 4100,
		directionNav: true,
		controlNav: false,
        itemMargin: 0,
		prevText: "<span class='fa fa-angle-left'></span>",
		nextText: "<span class='fa fa-angle-right'></span>",
        start: function(slider){
          $('body').removeClass('loading');
        }
	});

		// Start Google Map
	$('#map_canvas').gmap({
		'center': new google.maps.LatLng(41.1329, -73.94434), // Change this to your desired latitude and longitude
		'zoom': 17,
		'mapTypeControl': false,
		'navigationControl': false,
		'streetViewControl': false,
		'styles': [{
			stylers: [{
				gamma: 0.1
			}, {
				hue: "#999"
			}, {
				invert_lightness: true
			}, {
				lightness: 2
			}, {
				saturation: -50
			}, {
				visibility: "on"
			}]
		}]
	});
	var image = {
		url: 'images/marker.png', // Define the map marker file here
		// This marker is 51 pixels wide by 63 pixels tall.
		size: new google.maps.Size(81, 81),
		// The origin for this image is 0,0.
		origin: new google.maps.Point(0, 0),
		// The anchor for this image is the base of the flagpole at 26,63.
		anchor: new google.maps.Point(26, 63)
	};
	$('#map_canvas').gmap().bind('init', function () {
		$('#map_canvas').gmap('addMarker', {
			'id': 'marker-1',
			'position': '41.1329,-73.94434',
			'bounds': false,
			'icon': image
		}).click(function () {
			$('#map_canvas').gmap('openInfoWindow', {
				'content': '<p><strong>Silent Campus, </strong><br> Pillsbury, Vermont,  <br>05860-1751, US, <br>(802) 919-5740</p>'
			}, this);
		});
	}); 

});	