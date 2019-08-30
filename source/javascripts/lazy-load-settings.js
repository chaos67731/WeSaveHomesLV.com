var observer = lozad(".lozad", {
  loaded: function(lazyload) {
    lazyload.classList.add("loaded");
    // lazyload.onload = function() {
    //   console.log("Image Loaded");
    // };
  }
});

observer.observe();
