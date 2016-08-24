
$(function() {
  $('#search').submit(function(){

    var url = "https://www.googleapis.com/youtube/v3/search";
    var options = {
      q: $('#q').val(),
      part: 'snippet',
      key: 'AIzaSyBZ4eex9sTib6BkB2S-eXkdrw-7BkZBLF8',
      maxResults:10,
      type: 'video',
      order: 'relevance',
    };
    // リソースの取得
    $.get(url, options, function(rs){

      $('.insert_youtube').empty();
        $('#list').empty();
            for (var i = 0; i < rs.items.length; i++) {
            id = rs.items[i].id.videoId;
            var youtube = "<iframe width=\"853\" height=\"480\" src=\"https:\/\/www.youtube.com\/embed\/" + id + " \"allowfullscreen><\/iframe>" + "<div><input type='checkbox' name='music[uid]' class='checkbox' value=" + id+  " <\/div>";
            console.log("該当URL")
            console.log(youtube)

    //   console.log(youtube);
      $('.insert_youtube').append(youtube);

      // $.ajax({
      //   url: "/music",
      //   // GET, POST, PUT, DELETEなどを設定します。
      //   type: 'POST',
      //   dataType: "html",
      //   data: {
      //     uid: id,
      //     songtitle: $('#q').val()
      //   },
      //   success: function() {
      //     console.log("success");
      //     console.log(id);
      //   },
      //   error: function() {
      //     console.log("error");
      //     console.log(id);
      //   }
      // });
    }
    },
    "json");
  });
});
