let hiDiv = document.querySelector(".hiDiv");
let hiPath = "assets/wallpapers-hires/";
let lowDiv = document.querySelector(".lowDiv");
let lowPath = "assets/wallpapers-lowres/";
let logoDiv = document.querySelector(".logoDiv");
let logoPath = "assets/logos/";
let grubDiv = document.querySelector(".grubDiv");
let grubPath = "assets/grub/inkspace-files/";

addImages = (n, path, mainDiv) => {
  for (let i = 1; i <= n; i++) {
    const image = document.createElement("img");

    image.src = `${path}${i}.png`;
    image.classList.add("hires");
    image.classList.add("lores");
    image.classList.add("logo");
    image.src = `${path}${i}.svg`;
    image.classList.add("grub");

    mainDiv.appendChild(image);
  }
};

addImages(109, hiresPath, hiresDiv);
addImages(22, lowresPath, lowresDiv);
addImages(24, logoPath, logoDiv);
addImages(6, grubPath, grubDiv);
