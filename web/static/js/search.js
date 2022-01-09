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
                if (area.hasChildNodes()) {
                    $(area).children().css('top', e.clientY)
                    $(area).children().css('left', e.clientX)
                    return;
                }
                let $previewDiv = $(`<div class="preview" style="top: ${e.clientY}px; left: ${e.clientX}px;"><ul></ul></div>`)
                $previewDiv.slideUp()
                let $ul = $previewDiv.children(':nth-child(1)')
                for (let datum of data) {
                    $ul.append(`<li><a href="viewProduct?productId=${datum.productId}">${datum.description.replaceAll('\\', '')} ${datum.name}</a></li>`)
                }
                $(area).append($previewDiv)
                $previewDiv.slideDown()

                $(area).mouseleave((e) => {
                    $('div.preview').slideUp(300, 'swing')
                })
                $(area).mouseenter((e) => {
                    $(area).children().slideDown(300, 'swing')
                })
            }
        })
    })



    $('#SidebarContent a').mouseenter((e) => {
        let a = e.currentTarget;
        $.ajax({
            type: 'GET',
            url: 'previewCategory',
            data: {categoryId: a.href.split('=')[1]},
            success: (data) => {
                if ($(a).has('div').length === 2) {
                    $(a).children().css('top', e.clientY)
                    $(a).children().css('left', e.clientX)
                    return;
                }
                let $previewDiv = $(`<div class="preview" style="top: ${e.clientY}px; left: ${e.clientX}px;"><ul></ul></div>`)
                $previewDiv.slideUp()
                let $ul = $previewDiv.children(':nth-child(1)')
                for (let datum of data) {
                    $ul.append(`<li><a href="viewProduct?productId=${datum.productId}">${datum.description.replaceAll('\\', '')} ${datum.name}</a></li>`)
                }
                $(a).append($previewDiv)
                $previewDiv.slideDown()

                $(a).mouseleave((e) => {
                    $('div.preview').slideUp(300, 'swing')
                })
                $(a).mouseenter((e) => {
                    $(a).children().slideDown(300, 'swing')
                })
            }
        })
    })
    // $('area').mouseleave((e) => {
    //     let $divPreview = $('div.preview');
    //     if ($divPreview.is(':hover')) {
    //         $divPreview.remove();
    //     }
    // })

});