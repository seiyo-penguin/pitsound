
$(function() {
$('#search').submit(function(){
    var url = "https://www.googleapis.com/youtube/v3/search";
    var options = {
      q: $('#q').val(),
      part: 'snippet',
      key: 'AIzaSyBZ4eex9sTib6BkB2S-eXkdrw-7BkZBLF8',
      maxResults:1,
      type: 'video',
      order: 'relevance',
    };
    // リソースの取得
    $.get(url, options, function(rs){

      $('.insert_youtube').empty();
      var id = rs.items[0].id.videoId;

      var youtube = "<iframe width=\"560\" height=\"315\" src=\"https:\/\/www.youtube.com/embed/" + id + " \"allowfullscreen></iframe>"

      console.log(youtube);
      $('.insert_youtube').append(youtube);
      $('.insert_youtube').append("あああああ");
    // \"q\"の検索結果"
    //   $('.insert_youtube').html(youtube);

      //   var thumbnails = rs.items[i].snippet.thumbnails.medium.url;
      //   var title = rs.items[i].snippet.title;
      //   $('#list').append($('<li class="movie">').append($('<img>').attr('src', thumbnails)).data('video-id', id).data('thumbnail', thumbnails).append('<p>' + title + '</p>').data('video-title', title));
      // }

    }, "json");
  });
});
