<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
  
  <script type="text/javascript">
      var textInputId = '';
      function TextInputFocus(control, numeric) {
          textInputId = control;
          if (numeric) {
              try {
                  parent.ShowNumericKeyboard(true);

              }
              catch (err) {
              }
            
          }
          else {
              try {
                  parent.ShowKeyboard(true);

              }
              catch (err) {
              }
          }
      }

      function GetCurrentText() {
          var textInputControl = document.getElementById(textInputId);
          if (textInputControl) {
              return textInputControl.value;
          }
      }

      function AddText(text) {
          if (textInputId.length > 0) {
              var textInputControl = document.getElementById(textInputId);
              if (textInputControl) {
                  textInputControl.value += text;
              }
          }
      }

      function SetText(text) {
          if (textInputId.length > 0) {
              var textInputControl = document.getElementById(textInputId);
              if (textInputControl) {
                  textInputControl.value = text;
              }
          }
      }

      function LogIn(username, password) {
          $.post('/config/Account/LogOn', { UserName: username, Password: password, RememberMe: false },
            function (data) {
                //Reload page
                window.location.reload();
            });
      }

      function LogOut(username, password) {
          $.get('/config/Account/LogOff',
            function (data) {
                //Reload page
                window.location.reload();
            });
      }

  </script>
