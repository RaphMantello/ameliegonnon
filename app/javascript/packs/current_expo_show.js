window.addEventListener('load', () => {
  const initialExpoTitleContent = document.querySelector('#expo-title-content').innerHTML;
  const initialExpoContent = document.querySelector(`#${initialExpoTitleContent}`);
  initialExpoContent.style.display = "block";
});
