<!-- Scripts -->
<script src="/js/jquery.min.js"></script>
<script src="/js/semantic.min.js" defer></script>
<script src="/ckeditor/ckeditor.js"></script>
<script>
    $(document)
        .ready(function () {
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
                .rating()
            ;
            $('.card .dimmer')
                .dimmer({
                    on: 'hover'
                })
            ;

            $('.add_to_cart_button').click(function (e) {
                e.preventDefault();
                location.href = '/cart/add/' + $(this).attr('product_id') + '/1';
            });

            $('select.dropdown')
                .dropdown()
            ;
        })
    ;

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
        if (confirm("Are you sure to delete this category?")) {
            location.href = '/orders/' + id + '/dispose';
        }
    }



</script>