// Get the container element
var btnContainer = document.querySelector(".side-bar");

// Get all buttons with class="btn" inside the container
var titles = btnContainer.querySelectorAll(".side-bar-title");

// Loop through the buttons and add the active class to the current/clicked button
for (var i = 0; i < titles.length; i++) {
  titles[i].addEventListener("click", function() {
    var current = document.querySelector(".active");
    console.log(current.className)
    current.classList.remove("active");
    this.classList.add("active");
  });
}
