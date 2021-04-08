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
    strings: ["What have you learned about social connection this year?"],
    typeSpeed: 40,
    startDelay: 1000,
    showCursor: false
  });
}








export { loadDynamicBannerText };
