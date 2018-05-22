import Typed from 'typed.js';

function reloadBannerImage() {
  window.setInterval(changeImage, 2000);
}

function changeImage() {
  const banner = document.querySelector(".banner");
  const images = banner.dataset.images.split(',');
  // find which image is displayed
  console.log(banner.style.backgroundImage);
  // find index in the images array
  // take next image if index < 2
  // else take first image
  // banner.style.backgroundImage = `url(${images[1]})`;
}

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["No family to spent your holidays", "Search for one below"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText, reloadBannerImage };
