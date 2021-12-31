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

    $('area').mouseenter((e) => {
        let area = e.currentTarget;
        $.ajax({
            type: 'GET',
            url: 'previewCategory',
            data: {categoryId: area.alt.toUpperCase()},
            success: (data) => {
                let $previewDiv = $(`<div class="preview" style="top: ${e.clientY}px; left: ${e.clientX}px"><ul></ul></div>`)
                let $ul = $previewDiv.children(':nth-child(1)')
                for (let datum of JSON.parse(data)) {
                    $ul.append(`<li>${datum.description.replaceAll('\\', '')} ${datum.name}</li>`)
                }
                $('body').append($previewDiv)

                $('div.preview').mouseleave((e) => {
                    $('div.preview').remove()
                })
                $('div.preview').mouseenter((e) => {
                    $('div.preview').css('display', 'block')
                })
            }
        })
    })
    $('area').mouseleave((e) => {
            $('div.preview').css('display', 'none')
    })

});