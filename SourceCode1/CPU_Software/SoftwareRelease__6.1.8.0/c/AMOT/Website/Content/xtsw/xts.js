var slCtl = null;
function LogIn(iframeid, username, password) {
    var iframe = document.getElementById(iframeid);
    if (iframe.contentWindow) {
        var text = iframe.contentWindow.LogIn(username, password);
    }
}

function LogOut(iframeid) {
    var iframe = document.getElementById(iframeid);
    if (iframe.contentWindow) {
        var text = iframe.contentWindow.LogOut();
    }
}

function onSLPluginLoaded(sender, args) {
    slCtl = sender.getHost();
}

function Reload() {
    document.location.reload(true);
}

function ChildLoadedHandler(guid) {
    slCtl.Content.XTSLoadedJavascript.PageLoaded(guid);
}

function UpdateInProgress(inProgress) {
    slCtl.Content.XTSUpdateInProgress.UpdateInProgress(inProgress);
}

function ShowKeyboard(show) {
    slCtl.Content.XTSKeyboardJavascript.ShowKeyboard(show);
}

function ShowNumericKeyboard(show) {
    slCtl.Content.XTSKeyboardJavascript.ShowNumericKeyboard(show);
}

function GetCurrentText(iframeid) {
    var iframe = document.getElementById(iframeid);
    if (iframe.contentWindow) {
        var text = iframe.contentWindow.GetCurrentText();
        slCtl.Content.XTSKeyboardJavascript.SetCurrentText(text);
    }
}

function UpdateTextComponent(iframeid, text) {
    var iframe = document.getElementById(iframeid);
    if (iframe.contentWindow) {
        iframe.contentWindow.SetText(text);
    }
}

function onSilverlightError(sender, args) {
    var appSource = "";
    if (sender != null && sender != 0) {
        appSource = sender.getHost().Source;
    }

    var errorType = args.ErrorType;
    var iErrorCode = args.ErrorCode;

    if (errorType == "ImageError" || errorType == "MediaError") {
        return;
    }

    var errMsg = "Unhandled Error in Silverlight Application " + appSource + "\n";

    errMsg += "Code: " + iErrorCode + "    \n";
    errMsg += "Category: " + errorType + "       \n";
    errMsg += "Message: " + args.ErrorMessage + "     \n";

    if (errorType == "ParserError") {
        errMsg += "File: " + args.xamlFile + "     \n";
        errMsg += "Line: " + args.lineNumber + "     \n";
        errMsg += "Position: " + args.charPosition + "     \n";
    }
    else if (errorType == "RuntimeError") {
        if (args.lineNumber != 0) {
            errMsg += "Line: " + args.lineNumber + "     \n";
            errMsg += "Position: " + args.charPosition + "     \n";
        }
        errMsg += "MethodName: " + args.methodName + "     \n";
    }

    throw new Error(errMsg);
}
