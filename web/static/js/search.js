$(function () {
    let searchText = $('#searchText');

    $.widget('custom.categoryAutoComplete', $.ui.autocomplete, {
        _create: function () {
            this._super();
            this.widget().menu('option', 'items', '> :not(.ui-autocomplete-category)');
        },
        _renderMenu: function (ul, items) {
            let that = this, currentCategory = '';
            $.each(items, function (index, item) {
                let li;
                if (item.category !== currentCategory) {
                    ul.append(`<li class='ui-autocomplete-category'>${item.category}</li>`);
                    currentCategory = item.category;
                }
                li = that._renderItemData(ul, item);
                if (item.category) {
                    li.attr('aria-label', `${item.category} : ${item.label}`)
                }
            });
        }
    })

    searchText.categoryAutoComplete({
        minLength: 1,
        delay: 500,
        source: (request, response) => {
            $.ajax({
                type: 'POST',
                url: 'search',
                data: {requestType: 'ajax', keyword: searchText.val()},
                success: (data) => {
                    let arr = [];
                    response($.map(data, item => {
                        console.log(item.name + item.categoryId)
                        return {label: item.name, category: (item.categoryId).slice(0, 1) + item.categoryId.slice(1).toLowerCase()}
                    }));

                }
            });

        }
    })
});