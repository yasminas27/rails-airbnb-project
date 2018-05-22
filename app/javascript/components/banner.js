import Typed from 'typed.js';

function reloadBannerImage() {
  window.setInterval(changeImage, 10000);
}

function changeImage() {
  const banner = document.querySelector(".banner");
  const images = banner.dataset.images.split(',');
  // find which image is displayed
  const backgroundImage = window.getComputedStyle(banner).backgroundImage;
  const backgroundImageUrl = /url\("(.*)"\)/.exec(backgroundImage)[1];
  // console.log(Boolean(images[0] === backgroundImageUrl))
  let index = images.indexOf(backgroundImageUrl);
  let newBackgroundImageUrl = '';
  if(index < 2) {
    index += 1
    newBackgroundImageUrl = images[index];
  } else {
    newBackgroundImageUrl = images[0];
  }
  // find index in the images array
  // take next image if index < 2
  // else take first image
  banner.style.backgroundImage = `linear-gradient(-225deg, rgba(0, 101, 168, 0.6) 0%, rgba(0, 36, 61, 0.6) 50%), url(${newBackgroundImageUrl})`;
}

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["No family to spent your holidays", "Search for one below"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText, reloadBannerImage };
