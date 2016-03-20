$(document).ready(function() {
  $('#submit').click(function(e) {
    var params = {lang: $('#lang').val(), code: $('#code').val()};
    $.post('http://127.0.0.1:8880/run',
           params,
           function(data, textStatus, jqXHR) {
             $('#result').html(data);
           },
           'json'
    ).fail(function() {
      console.log('fail', arguments)
    });
  });
});
