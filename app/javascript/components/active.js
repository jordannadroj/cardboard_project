

const toggleActive = () => {
  const navLink = document.querySelector('.nav-item');
  navLink.addEventListener("click", (event) => {
    navLink.addClass(".active");
    console.log("Hello");
  })
}

export { toggleActive };
