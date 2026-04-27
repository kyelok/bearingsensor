function ValidateSpuData(frm) {
    var result = true;
    var regexString = /^([A-Za-z0-9-]+$)/;
    var regexInt = /^([0-9]+$)/;

    if (!regexInt.test($('#Register').val())) {
        $('#RegisterLabel').html("Enter a valid <br />modbus register");
        $('#RegisterLabel').attr('style', 'color: red; font-weight:bold;');
        result = false;
    }
    else if ($('#Register').val() > 65535) {
        $('#RegisterLabel').attr('style', 'color: red; font-weight:bold;');
        $('#RegisterLabel').html("Must be no more than 65535");
    }
    else {
        $('#RegisterLabel').html("");
    }

    if (!regexString.test($('#Description').val())) {
        $('#DescriptionLabel').html("Description may contain <br />plain-text only");
        $('#DescriptionLabel').attr('style', 'color: red; font-weight:bold;');
        result = false;
    }
    else {
        $('#DescriptionLabel').attr('style', 'color: red; font-weight:bold;');
        $('#DescriptionLabel').html("");
    }

    if (!regexInt.test($('#Value').val())) {
        $('#ValueLabel').html("Enter a valid <br />modbus register value");
        $('#ValueLabel').attr('style', 'color: red; font-weight:bold;');
        result = false;
    }
    else if ($('#Register').val() > 65535) {
        $('#ValueLabel').attr('style', 'color: red; font-weight:bold;');
        $('#ValueLabel').html("Must be no more than 65535");
    }
    else {
        $('#ValueLabel').html("");
    }

    if (!regexInt.test($('#MaxLimit').val())) {
        $('#MaxLimitLabel').html("Enter a valid <br />modbus register");
        $('#MaxLimitLabel').attr('style', 'color: red; font-weight:bold;');
        result = false;
    }
    else if ($('#Register').val() > 65535) {
        $('#MaxLimitLabel').attr('style', 'color: red; font-weight:bold;');
        $('#MaxLimitLabel').html("Must be no more than 65535");
    }
    else {
        $('#MaxLimitLabel').html("");
    }
    
    return result;
}