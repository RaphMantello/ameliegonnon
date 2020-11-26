const titles = document.querySelectorAll(".side-bar a");

titles.forEach((title) => {
  title.addEventListener("click", (event) => {
    document.querySelector(".active").classList.remove("active");
    event.currentTarget.classList.add("active");
  });
});
