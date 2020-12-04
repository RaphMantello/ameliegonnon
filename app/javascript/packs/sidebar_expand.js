const currentExpoTitle = document.querySelector(".current-expo-title");
const currentExpoTitleContent = document.querySelector("#expo-title-content");
const expoTitlesList = document.querySelector(".expo-titles");
const expoTitles = document.querySelectorAll(".expo-title");
const sidebar = document.querySelector(".side-bar");
var currentExpoContent = document.querySelector(`#${currentExpoTitleContent.innerHTML}`);

currentExpoTitle.addEventListener("click", (event) => {
  sidebar.classList.add("sidebar-expand");
  currentExpoTitle.style.display = "none";
  expoTitlesList.style.display = "flex";
});

expoTitles.forEach((title) => {
  title.addEventListener("click", (event) => {
    //sidebar title change
    const newExpoTitle = event.target.innerHTML;
    currentExpoTitleContent.innerHTML = newExpoTitle;
    expoTitlesList.style.display = "none";
    currentExpoTitle.style.display = "";

    //lastExpo display none
    const lastExpo = document.querySelector('#last-expo');
    lastExpo.style.display = "none";

    //expoContent change
    const newExpoContent = document.querySelector(`#${newExpoTitle}`);
    currentExpoContent.style.display = "none";
    newExpoContent.style.display = "block";
    currentExpoContent = newExpoContent;

    //remove extended padding
    sidebar.classList.remove("sidebar-expand");
  });
});
