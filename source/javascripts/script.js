$(function() {
  console.log("ready!"),
    $('[data-nav="hamburger"]').click(function() {
      $('[data-nav="nav"]').toggleClass("show-mobile-main-nav"),
        $(this).toggleClass("show-mobile-hamburger"),
        $('[data-nav="hamburger"] svg').toggleClass("hamburger-active"),
        $("body").toggleClass("overflow-hidden");
    });

  //
});
// Lazy Load YouTube
document.addEventListener("DOMContentLoaded", function() {
  var div,
    n,
    v = document.getElementsByClassName("YouTubeLazyLoad");
  for (n = 0; n < v.length; n++) {
    div = document.createElement("div");
    div.setAttribute("data-id", v[n].dataset.id);
    div.innerHTML = labnolThumb(v[n].dataset.id);
    div.onclick = labnolIframe;
    v[n].appendChild(div);
  }
});

function labnolThumb(id) {
  var thumb =
      '<img src="https://i.ytimg.com/vi/ID/hqdefault.jpg" alt="YouTube" title="YouTube">',
    play = '<div class="YouTubeLazyLoad-play"></div>';
  return thumb.replace("ID", id) + play;
}

function labnolIframe() {
  var iframe = document.createElement("iframe");
  var embed =
    "https://www.youtube.com/embed/ID??hd=1&rel=0&autohide=1&showinfo=0&autoplay=1";
  iframe.setAttribute("src", embed.replace("ID", this.dataset.id));
  iframe.setAttribute("frameborder", "0");
  iframe.setAttribute("allowfullscreen", "1");
  this.parentNode.replaceChild(iframe, this);
}
