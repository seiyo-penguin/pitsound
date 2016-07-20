
$(function() {
  var id;
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
      id = rs.items[0].id.videoId;
      console.log(id);


      var youtube = "<iframe width=\"853\" height=\"480\" src=\"https:\/\/www.youtube.com/embed/" + id + " \"allowfullscreen></iframe>"

    //   console.log(youtube);
      $('.insert_youtube').append(youtube);


    }, "json");

    $.ajax({
      url: "/music",
      // GET, POST, PUT, DELETEなどを設定します。
      type: 'POST',
      dataType: "json",
      data: {
        uid: id
        // JSの変数の中のデータをRailsに渡します。
        // Rails からは parmas[:hoge] で受け取れます。
      //   hoge: 'fuga'
      },
      success: function() {
        console.log("success");
        console.log(id);


      },
      error: function() {
        console.log("error");
        console.log(id);
      },
      // urlにつけるパラメータを指定します。
      // })
      // .done(function(response){
      // Railsのアクションが正しく実行された時の処理
      // })
      // .fail(function(xhr){
      // Railsのアクションなどでエラーが発生した時の処理
    });
  });
});
