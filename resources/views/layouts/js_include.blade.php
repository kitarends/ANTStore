<!-- Scripts -->
<script src="/js/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="/js/semantic.min.js" defer></script>
<script src="/ckeditor/ckeditor.js"></script>
<script src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<script type="text/javascript" src="/bower_components/slick-carousel/slick/slick.js"></script>

<script>
    $(document)
        .ready(function () {
            $('.square').each(function () {
                $(this).height($(this).width()*4/5);
                var image = $(this).find('.product_image');
                image.css('margin-top', ($(this).height() - image.height()) / 2);
            });

            $('.small_thumbnail').on('hover', function (e) {
                var mainImage = $('#main_image');
                mainImage.attr('src', $(this).attr('src'));
                mainImage.css('margin-top', (mainImage.parent().height() - mainImage.height()) / 2);
            });

            $('.ui.menu .ui.dropdown').dropdown({
                on: 'hover'
            });
            $('.ui.menu a.item')
                .on('click', function () {
                    $(this)
                        .addClass('active')
                        .siblings()
                        .removeClass('active')
                    ;
                })
            ;
            $('.ui.rating')
                .rating()
            ;
            $('.special.card .image').dimmer({
                on: 'hover'
            });
            $('.star.rating')
                .rating('disable')
            ;
            $('.input_rating')
                .rating({
                    onRate: function (rating) {
                        $('#input_rating').val(rating)
                    }
                });

            $('.card .dimmer')
                .dimmer({
                    on: 'hover'
                })
            ;

            $('.add_to_cart_button').click(function (e) {
                e.preventDefault();
                location.href = '/cart/add/' + $(this).attr('product_id') + '/1';
            });


            $('table').DataTable();
            $('.dataTables_filter > label').attr('class', 'ui input');
            $('select[name="DataTables_Table_0_length"]').attr('class', 'ui dropdown');
            $('select.dropdown')
                .dropdown()
            ;

            var $slider = $("#slider-range");
            $slider.slider({
                range: true,
                min: 0,
                max: 500,
                values: [ {{old('lower_price',60)}}, {{old('higher_price',300)}}],
                slide: function (event, ui) {
                    $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
                    $("#lower_price").val(ui.values[0]);
                    $("#higher_price").val(ui.values[1]);

                }
            });
            $("#amount").val("$" + $slider.slider("values", 0) +
                " - $" + $slider.slider("values", 1));
            $("#lower_price").val($slider.slider("values", 0));
            $("#higher_price").val($slider.slider("values", 1));

            $("#caro").slick({
                infinite: true,
                dots: true,
                slidesToShow: 2,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 2000,
                responsive: [
                    {
                        breakpoint: 600,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 2
                        }
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1
                        }
                    }
                    // You can unslick at a given breakpoint now by adding:
                    // settings: "unslick"
                    // instead of a settings object
                ]
            });
        });

    function ask_to_delete_product(id) {
        if (confirm("Are you sure to delete this product?")) {
            $.get('/products/' + id + '/delete', function (data) {
                location.reload();
            })
        }
    }

    function ask_to_delete_item_from_cart(id) {
        if (confirm("Are you sure to delete this item?")) {
            location.href = '/cart/remove/' + id;
        }
    }

    function ask_to_delete_category(id) {
        if (confirm("Are you sure to delete this category?")) {
            location.href = '/categories/' + id + '/delete';
        }
    }

    function ask_to_dispose_order(id) {
        if (confirm("Are you sure to dispose this order?")) {
            location.href = '/orders/' + id + '/dispose';
        }
    }

    function ask_to_confirm_order(id) {
        if (confirm("Are you sure to confirm this order?")) {
            location.href = '/orders/' + id + '/confirm';
        }
    }
    function ask_to_ship_order(id) {
        if (confirm("Are you sure to ship this order?")) {
            location.href = '/orders/' + id + '/ship';
        }
    }
    function ask_to_done_order(id) {
        if (confirm("Are you done this order?")) {
            location.href = '/orders/' + id + '/done';
        }
    }
    function ask_to_delete(confirm_text, link) {
        if (confirm(confirm_text)) {
            location.href = link;
        }
    }

    function apply_discount() {
        code = $("#discount_input").val();
        location.href = '/apply_discount?discount=' + code;
    }


</script>