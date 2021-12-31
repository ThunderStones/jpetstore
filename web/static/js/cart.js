$(function () {
    $('form[action="updateCart"]').submit((e) => {
        e.preventDefault();
        let ids = $('table td>a:not(.Button)');
        let quantities = $('table input[type="text"]');
        let requestData = {};
        for (let i = 0; i < ids.length; i++) {
            requestData[ids[i].text.trim()] = quantities[i].value;
        }
        requestData.requestType = 'ajax';

        $.ajax({
            type: 'POST',
            url: 'updateCart',
            data: requestData,
            success: (data) => {
                let totalSub = 0;
                for (let i = 0; i < data.length; i++) {
                    quantities[i].parentElement.parentElement.nextElementSibling.nextElementSibling.textContent = "$" + data[i].totalPrice.toFixed(2);
                    totalSub += data[i].totalPrice;
                }
                let subTotal = $('#subTotal')
                subTotal.html((subTotal.html().replace(/\$\d*.\d{2}/, "$" + totalSub.toFixed(2))));
            }
        });
    })
});