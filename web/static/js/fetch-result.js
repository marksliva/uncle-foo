$(document).ready(function() {
  $('#submit').click(function(e) {
    var params = {lang: $('#lang').val(), code: $('#code').val()};
    $.post('/run',
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
