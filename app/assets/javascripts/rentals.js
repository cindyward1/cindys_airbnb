$(function () {
  $('#upload').hide();
  $('#has-photo input[type=checkbox]').click(function () {
    if ($(this).prop("checked") == true) {
      $('#upload').show();
    } else {
      $('#upload').hide();
    };
  });
});
