$(document).ready(function(){

 $('.vote').on('ajax:success', function(e, data, status){
    $('.votecount').text(data)
    });

  $('.vote').on('ajax:error', function(e, data, status){
   console.log('WE FAILED');
  });
  
});
