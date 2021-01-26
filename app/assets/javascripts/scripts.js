/*!
 * Start Bootstrap - Grayscale v6.0.3 (https://startbootstrap.com/theme/grayscale)
 * Copyright 2013-2020 Start Bootstrap
 * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-grayscale/blob/master/LICENSE)
 */
(function($) {
    "use strict"; // Start of use strict

    // Smooth scrolling using jQuery easing
    $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function() {
        if (
            location.pathname.replace(/^\//, "") ==
            this.pathname.replace(/^\//, "") &&
            location.hostname == this.hostname
        ) {
            var target = $(this.hash);
            target = target.length ?
                target :
                $("[name=" + this.hash.slice(1) + "]");
            if (target.length) {
                $("html, body").animate({
                        scrollTop: target.offset().top - 70,
                    },
                    1000,
                    "easeInOutExpo"
                );
                return false;
            }
        }
    });

    // Closes responsive menu when a scroll trigger link is clicked
    $(".js-scroll-trigger").click(function() {
        $(".navbar-collapse").collapse("hide");
    });

    // Activate scrollspy to add active class to navbar items on scroll
    // console.log($("body"))
    var navbarScroll = function() {
        if ($('body').length !== 0) {
            $("body").scrollspy({
                target: "#mainNav",
                offset: 1,
            });
        }
    };
    navbarScroll();
    // pathに現在地のurl取得
    var path = window.location.pathname;
　　// urlがrootpath以外の場合はnavbarScrollを使う
    if (path !== "/") {
      $(window).scroll(navbarScroll);
    };

    // Collapse Navbar
    var navbarCollapse = function() {
        // ここにnull判定を追加してbodyの中に何もなかったら後で調べるような記述
        if ($('body').length !== 0) {

            if ($("#mainNav").offset().top > 200) {
                $("#mainNav").addClass("navbar-shrink");
            }
            else {
                $("#mainNav").removeClass("navbar-shrink");
            }
        }
    };
    
    // urlがrootpathの時のみnavbarCollapseを使う
    
    // Collapse now if page is not at top
    navbarCollapse();
    // Collapse the navbar when page is scrolled
    if (path == "/") {
      $(window).scroll(navbarCollapse);
    };
    
})(jQuery); // End of use strict
