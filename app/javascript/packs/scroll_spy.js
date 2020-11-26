window.addEventListener('DOMContentLoaded', () => {

  const observer = new IntersectionObserver(entries => {
    console.log(entries);
    entries.forEach(entry => {
      const id = entry.target.getAttribute('id');
      console.log(entry);
      if (entry.intersectionRatio > 0) {
        document.querySelector(`.side-bar a[href="#${id}"]`).classList.add('active');
      } else {
        document.querySelector(`.side-bar a[href="#${id}"]`).classList.remove('active');
      }
    });
  });

  // Track all sections that have an `id` applied
  document.querySelectorAll('section[id]').forEach((section) => {
    observer.observe(section);
  });
});
