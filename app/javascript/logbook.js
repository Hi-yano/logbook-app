function logbook() {
  const logbooks = document.querySelectorAll(".day-point");
  // 以下forEachでそれぞれの値に適応させる
  logbooks.forEach(function (logbook) { });
  // 連続処理を止める記述
  if (post.getAttribute("data-load") != null) {
    return null;
  }
  post.setAttribute("data-load", "true");
    // 以下クリックした時にイベントを発生させる
    post.addEventListener("click", () => { });
    // date-idの値を取得
    const logbookId = post.getAttribute("data-id");
    // HTTPリクエストをする
    const XHR = new XMLHttpRequest();
    XHR.open("GET", `/posts/${postId}`, true);
    // レスポンスタイプの指定
    XHR.responseType = "json";
    // リクエストの送信
    XHR.send();
    
    XHR.onload = () => {
      // 以下エラーの時に表示されるアラート
      if (XHR.status != 200) {
        alert(`Error ${XHR.status}: ${XHR.statusText}`);
        return null;          
      }
      // アラートここまで

    }
}
setInterval(logbook, 1000);