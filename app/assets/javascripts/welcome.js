//= require jquery
//= require jquery_ujs

$(document).ready(function () {
  $('button#button').click(function() {
    $.get('/api/v1/solution', {
      const0: $('#const0').val(),
      const1: $('#const1').val(),
      const2: $('#const2').val(),
    }, function(data) {
      $('#result').text(data.solution);

      $('#result-const0').text($('#const0').val());
      $('#result-const1').text($('#const1').val());
      $('#result-const2').text($('#const2').val());

      $('#variable-x').text(data.x);
      $('#variable-y').text(data.y);
      $('#variable-z').text(data.z);
    });
  });
});
