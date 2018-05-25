import "bootstrap";
import "../plugins/flatpickr";
import { loadDynamicBannerText, reloadBannerImage } from '../components/banner';
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

loadDynamicBannerText();

reloadBannerImage();
