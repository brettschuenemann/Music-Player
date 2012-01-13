
        

        function initPlayer(song_id) {
        // The video to load
        var videoID = song_id
        // Lets Flash from another domain call JavaScript
        var params = { allowScriptAccess: "always" };
        // The element id of the Flash embed
        var atts = { id: "ytPlayer" };
        // All of the magic handled by SWFObject (http://code.google.com/p/swfobject/)
        swfobject.embedSWF("http://www.youtube.com/v/" + videoID + "?version=3&enablejsapi=1&playerapiid=player1", 
                           "videoDiv", "200", "200", "9", null, null, params, atts);
        
        }
        function onYouTubePlayerReady(playerId) {
            ytplayer = document.getElementById("ytPlayer");
            ytplayer.addEventListener("onStateChange", "onytplayerStateChange");
        }  
        
        function play() {
          if (ytplayer) {
            ytplayer.playVideo();
          }
        }
        function pause() {
          if (ytplayer) {
            ytplayer.pauseVideo();
          }
      }