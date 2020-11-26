const titles = document.querySelectorAll(".side-bar-title");

titles.forEach((title) => {
  title.addEventListener("click", (event) => {
    document.querySelector(".active").classList.remove("active");
    event.currentTarget.classList.add("active");
  });
});
