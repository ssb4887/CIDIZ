window.sidiz = {};
(function ($) {
    var func = {};
    func.ojj = {
        init: function () {
            var _self = this;
            _self.MENU(); // 네비
            _self.BUTTON(); // 사이드 버튼
            _self.TEFT();
            _self.TSCRL(); // 스크롤 효과
            _self.MAIN(); // main
        },
        MENU: function () { // 네비 실행
            var $menu = $('a.nav-viewer'),
                $nav = $('nav'),
                $body = $('body');

            // 네비 토글버튼 클릭 이벤트
            $menu.on('click', function (e) {
                e.preventDefault();
                var $this = $(this);
                $this.toggleClass('is-close');
                $nav.toggleClass('is-active');
                $body.toggleClass('is-hidden');
            });
        },
        BUTTON: function () { // TOP 버튼, 매장찾기, 챗본문의 버튼
            var $play_btn = $('.play_btn');
            $play_btn.on('click', function () {
                $('html, body').stop().animate({ scrollTop: 0 }, 400);
                return false;
            });
            var $top_btn = $('a.top_btn');
            $top_btn.on('click', function () {
                $('html, body').stop().animate({ scrollTop: 0 }, 400);
                return false;
            });
            var $shop_btn = $('a.shop_btn');
            $shop_btn.on('click', function () {
                $('html, body').stop().animate({ scrollTop: 0 }, 400);
                return false;
            });
            var $f_btn = $('a.chat_btn');
            $f_btn.on('click', function () {
                $('html, body').stop().animate({ scrollTop: 0 }, 400);
                return false;
            });
        },
        TEFT: function () {
            // e.preventDefault();
            var n = $(window),
                i = n.scrollTop(),
                $header = $("#header"),
                $active_class = "is-active",
                $menu = $("a.nav-viewer, .nav-group"),
                $wrapper = $(".wrapper"),
                $footer = $("footer"),
                $play_btn = $('.play_btn'),
                $top_btn = $('a.top_btn'),
                $shop_btn = $('.shop_btn'),
                $chat_btn = $('.chat_btn');

            if (i >= n.height()) {
                $play_btn.addClass($active_class); // 동영상 버튼은 is-active 필요없음
                $top_btn.addClass($active_class);
                $shop_btn.addClass($active_class);
                $chat_btn.addClass($active_class);
                // var $pos = $wrapper.offset().top + $wrapper.outerHeight() + 200;

                if ($footer.length > 0) {
                    var $pos = $footer.offset().top;
                }
                if (i >= $pos - n.height()) {
                    if ($footer.length > 0) {
                        $play_btn.css({ position: 'absolute', bottom: 'auto', top: $pos - $play_btn.outerHeight() - 100 });
                        $top_btn.css({ position: 'absolute', bottom: 'auto', top: $pos - $top_btn.outerHeight() - 40 });
                        $shop_btn.css({ position: 'absolute', bottom: 'auto', top: $pos - $shop_btn.outerHeight() - 80 });
                        $chat_btn.css({ position: 'absolute', bottom: 'auto', top: $pos - $chat_btn.outerHeight() - 40 });
                    }
                } else {
                    $play_btn.css({ position: 'fixed', bottom: 100, top: 'auto' });
                    $top_btn.css({ position: 'fixed', bottom: 40, top: 'auto' });
                    $shop_btn.css({ position: 'fixed', bottom: 80, top: 'auto' });
                    $chat_btn.css({ position: 'fixed', bottom: 40, top: 'auto' });
                }
            } else {
                $play_btn.removeClass($active_class);
                $top_btn.removeClass($active_class);
                $shop_btn.removeClass($active_class);
                $chat_btn.removeClass($active_class);
                // console.log($footer.length);
            }

            if (i >= 40 ? ($header.addClass($active_class),
                $menu.addClass($active_class),
                $(".comm-kw-arrow").length > 0 && $(".comm-kw-arrow").addClass($active_class)) : ($header.removeClass($active_class),
                    $menu.removeClass($active_class),
                    $(".comm-kw-arrow").length > 0 && $(".comm-kw-arrow").removeClass($active_class)),
                $footer.length > 0)


                $wrapper.find("#main > div").each(function () {
                    var t = $(this),
                        e = ($(this), t.find(".bot-p-ani")),
                        o = t.find(".basic-tx-ani"), //제품보기 언더라인
                        a = t.find(".slide-inner-bg-w");
                    e.length > 0 && e.each(function () {
                        var t = $(this),
                            e = t.offset().top;
                        t.outerHeight(), i >= e - n.height() + 0 ? t.addClass($active_class) : t.removeClass($active_class)
                    }), o.length > 0 && o.each(function () {
                        var t = $(this),
                            e = t.offset().top;
                        t.outerHeight(), i >= e - n.height() + 0 ? t.addClass($active_class) : t.removeClass($active_class)
                    }), a.length > 0 && a.each(function () {
                        var t = $(this),
                            e = t.parent().offset().top,
                            o = t.parent().outerHeight(),
                            a = t.outerHeight();
                        i >= e ? (t.css({
                            position: "fixed",
                            top: 0
                        }), i > e + o - a && t.css({
                            position: "absolute",
                            top: o - a
                        })) : t.css({
                            position: "absolute",
                            top: 0
                        })
                    });
                    var s = t.find(".trans-ani-parent");
                    s.length > 0 && s.each(function () {
                        var t = $(this),
                            e = t.offset().top,
                            o = t.find(".trans-ani").outerHeight(),
                            a = t.find(".trans-ani .inner"),
                            s = a.outerHeight() - o,
                            r = 0,
                            _ = 0,
                            h = t.index() + 1,
                            c = -1;
                        c = h % 2 == 0 ? 1 : -1, t.closest(".main-worklist"), i >= e - n.height() && i <= e + o ? (r = s / (e + o - (e - n.height())) * (i - (e - n.height())), _ = 90 / (e + o - (e - n.height())) * (i - (e - n.height())), a.length > 0 && a.css({
                            transform: "translate(0, -" + r + "px)"
                        }), t.find(".t-ani").css({
                            transform: "translate(0, " + parseInt(_ * c) + "px)"
                        })) : i < e - n.height() ? (a.length > 0 && a.css({
                            transform: "translate(0, 0)"
                        }), t.find(".t-ani").css({
                            transform: "translate(0, 0)"
                        })) : i > e + o && t.find(".t-ani").css({
                            transform: "translate(0, " + parseInt(90 * c) + "px)"
                        })
                    });
                    var r = t.find(".trans-ani-parent2");
                    r.length > 0 && r.each(function () {
                        var t = $(this),
                            e = t.offset().top,
                            o = t.find(".trans-ani").outerHeight(),
                            a = t.find(".trans-ani .inner"),
                            s = a.outerHeight() - o,
                            r = 0;
                        t.index();
                        var _ = e - n.height();
                        i >= _ && i <= e + o ? (r = s / (e + o - _) * (i - _), a.length > 0 && a.css({
                            transform: "translate(0, " + -1 * r + "px)"
                        })) : i < _ && a.length > 0 && a.css({
                            transform: "translate(0, 0)"
                        })
                    })
                });
        },
        TSCRL: function () { // 스크롤 효과
            var n = this;
            $(window).on("scroll", function () {
                n.TEFT()
            })
        },
        MAIN: function () { // main
            var $main_slide = $('.main-top');
            if ($main_slide.length > 0) {
                var $main_nav = $('.main-top-banner li'),
                    $video = $('.video'),
                    $main_slide_ot = $main_slide.offset().top,
                    $main_slide_oh = $main_slide.outerHeight();


                var $main_nav_w = $('.main-top-banner'),
                    $logo = $('#header .logo'),
                    $main_nav_w_h = ($(window).height() - (($logo.offset().top + $logo.outerHeight()) * 2));
                $main_nav_w.css({
                    left: 'calc(5.2% - ' + (($main_nav_w.width() / 2) - ($main_nav_w.outerHeight() / 2)) + 'px)'
                });

                $main_nav.find('a').on('click', function (e) {
                    // e.preventDefault();
                    var $child = $(this),
                        $id = $($child.attr('href'));
                    $('html, body').stop().animate({ scrollTop: $id.offset().top + 1 }, 400);
                    return false;
                });

                $(window).on("scroll", function () {
                    var t = $(window),
                        nScrl = t.scrollTop(),
                        $active_class = 'is-active',
                        n = $main_slide.find('.slide-inner'),
                        $header_h = 0;
                    $main_nav.find('a').removeClass("on"), n.each(function () {
                        var e = $(this).index();

                        // if (e > 1 && e < n.length - 1) {
                        var o = n.eq(e),
                            a = o.outerHeight(),
                            i = o.offset().top - (a / 2);

                        // $(this).find('a').removeClass("on");
                        // if ((nScrl >= i) && (nScrl < (i + a))) {
                        if ((nScrl >= i)) {
                            $main_nav.eq(e).find('a').addClass("on");
                            if (e != (n.length - 1)) {
                                if (nScrl > ($(this).next().offset().top - ($(this).next().outerHeight() / 2))) {
                                    $main_nav.eq(e).find('a').removeClass("on");
                                }
                            }
                        }
                    });

                    // css .main-top-banner.is-disabled ul -> 메인벗어나면 글자 사라짐(opacity: 0;)
                    if (nScrl > ($main_slide_ot + $main_slide_oh - (n.height() / 2))) {
                        $main_nav.closest('.main-top-banner').addClass('is-disabled');
                        $video.closest('.play').addClass('is-disabled');
                    } else {
                        $main_nav.closest('.main-top-banner').removeClass('is-disabled');
                        $video.closest('.play').removeClass('is-disabled');

                    }
                    main_visual();
                });
                main_visual();
                function main_visual() {
                    var n = $(window),
                        i = n.scrollTop(),
                        $active_class = "is-active",
                        $wrapper = $('.wrapper');
                    $wrapper.find("#main > div").each(function () {
                        var a = $(this),
                            $idx = a.index(),
                            // $conts = $(this),
                            e = a.find(".mid-pt");

                        // a.find(".obj");
                        e.length > 0 && e.each(function () {//일반 애니
                            var a = $(this),
                                $idx = a.index(),
                                // slide-inner-bg-w(오른쪽 이미지), slide-inner(왼쪽 글귀)
                                e = a.closest('.slide-inner-bg-w').next().find('.slide-inner').eq($idx).offset().top;
                            a_oh = a.closest('.slide-inner-bg-w').next().find('.slide-inner').eq($idx).outerHeight();
                            // if ((i >= e - n.height() + (a_oh/2)) && (i < (e + (a_oh/2)))) {
                            if ((i >= e - n.height() + (a_oh / 2)) && (i < (e + (a_oh / 4)))) {
                                a.addClass($active_class)
                            } else {
                                a.removeClass($active_class)
                            }
                        });
                    });
                }
            }
        }
    };
    sidiz = func.ojj;
    sidiz.init();
})(jQuery);