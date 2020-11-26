const currentExpoTitle = document.querySelector(".current-expo-title");
const currentExpoTitleContent = document.querySelector("#expo-title-content");
const expoTitlesList = document.querySelector(".expo-titles");
const expoTitles = document.querySelectorAll(".expo-title");

currentExpoTitle.addEventListener("click", (event) => {
  currentExpoTitle.style.display = "none";
  expoTitlesList.style.display = "flex";
});

expoTitles.forEach((title) => {
  title.addEventListener("click", (event) => {
    const newExpoTitle = event.target.innerHTML;
    currentExpoTitleContent.innerHTML = newExpoTitle;
    expoTitlesList.style.display = "none";
    currentExpoTitle.style.display = "";
  });
});
