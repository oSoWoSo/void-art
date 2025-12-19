let hiDiv = document.querySelector(".hiDiv");
let hiPath = "assets/wallpapers-hires/";

let lowDiv = document.querySelector(".lowDiv");
let lowPath = "assets/wallpapers-lowres/";

let logoDiv = document.querySelector(".logoDiv");
let logoPath = "assets/logos/";

let grubDiv = document.querySelector(".grubDiv");
let grubPath = "assets/grub/inkspace-files/";

addImages = (n, path, mainDiv, extension) => {
  for (let i = 1; i <= n; i++) {
    const image = document.createElement("img");
    image.src = `${path}${String(i).padStart(3, '0')}.${extension}`;
    mainDiv.appendChild(image);
  }
};

addImages(105, hiPath, hiDiv, 'png');
addImages(4, hiPath, hiDiv, 'jpg');
addImages(22, lowPath, lowDiv, 'png');
addImages(23, logoPath, logoDiv, 'png');
addImages(2, logoPath, logoDiv, 'svg');
addImages(6, grubPath, grubDiv, 'svg');
