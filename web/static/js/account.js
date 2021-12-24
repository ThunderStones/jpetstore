$(function () {
    $('#registerUsername').blur(() => {
        $.ajax({
            type : 'GET',
            url: 'usernameExist?username=' + $('#registerUsername').val(),
            beforeSend : () => {
                $("#usernameTips").removeAttr('class').val('');
            },
            success : (data) => {
                if (data === 'Not Exist') {
                    $('#usernameTips').attr('class', 'okTips').text('Available');
                } else {
                    $('#usernameTips').attr('class', 'errorTips').text('This name has been used.');
                }
            }
        });
    });
})