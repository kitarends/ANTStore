<!-- Scripts -->
<script src="/js/jquery.min.js"></script>
<script src="/js/semantic.min.js" defer></script>
<script src="/ckeditor/ckeditor.js"></script>
<script src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

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
                .rating('disable')
            ;
            $('.voting')
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
            $('table').DataTable();
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
    function ask_to_delete(confirm_text,link) {
        if (confirm(confirm_text)) {
            location.href = link;
        }
    }



</script>