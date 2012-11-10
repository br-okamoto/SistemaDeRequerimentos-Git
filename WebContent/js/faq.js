function showonlyone(thechosenone) {
     $('.resposta').each(function(index) {
          if ($(this).attr("id") == thechosenone) {
               $(this).show(50);
          }
          else {
               $(this).hide(50);
          }
     });
}