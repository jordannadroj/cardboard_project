import Typed from 'typed.js';

const loadTitle = () => {
  new Typed('#title', {
      strings: ["CARDBOARD PROJECT 3.0"],
      typeSpeed: 50,
      showCursor: false
    });
}

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["What have you learned about community and connection in the past year?"],
    typeSpeed: 40,
    startDelay: 2000,
    showCursor: false
  });
}








export { loadDynamicBannerText, loadTitle };
