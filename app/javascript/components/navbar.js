function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-wagon-transparent');
  window.addEventListener('scroll', () => {
    if (window.scrollY >= window.innerHeight) {
      navbar.classList.add('navbar-wagon');
    } else {
      navbar.classList.remove('navbar-wagon');
    }
  });
}

export { initUpdateNavbarOnScroll };
