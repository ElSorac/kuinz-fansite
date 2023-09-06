document.querySelectorAll('form').forEach(form => {
  form.addEventListener('submit', (event) => {
    if (window.history.replaceState) {
      window.history.replaceState(null, null, window.location.href);
    }
  });
});
