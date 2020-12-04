var showExpoContent = function (event) {
  const initialExpoTitleContent = document.querySelector('#expo-title-content').innerHTML;
  const initialExpoContent = document.querySelector(`#${initialExpoTitleContent}`);
  initialExpoContent.style.display = "block";
  const lastExpo = document.querySelector('#last-expo');
  lastExpo.style.display = "none";
};

window.addEventListener('DOMContentLoaded', showExpoContent, false);
