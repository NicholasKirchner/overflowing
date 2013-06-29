$(document).ready(function(){

 $('.vote').on('ajax:success', function(e, data, status){
    console.log(data);
    $('#votecount-' + data.post_id).text(data.vote_count)
    });

  $('.vote').on('ajax:error', function(e, data, status){
   console.log('WE FAILED');
  });
  
});
