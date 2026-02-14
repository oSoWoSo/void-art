# Void Linux Artwork - Improved Version

This is an improved version of the web gallery for Void Linux Artwork with the following improvements:

## ✨ New Features

### 1. **Division into subpages with navigation**
- Main page (index.html) with an overview of categories
- Separate pages for each category:
  - Hi-Res Wallpapers
  - Low-Res Wallpapers
  - Logos
  - GRUB Themes
- Responsive navigation menu with hamburger menu for mobile devices

### 2. **Uniform HTML template**
- All pages use a consistent structure
- Shared navigation menu and footer
- Easy maintenance and extensibility

### 3. **Advanced gallery with lightbox**
- Click on an image to open the lightbox
- Navigate between images using arrows or keys
- Image counter (e.g., "5 / 105")
- Image download button
- Support for swipe gestures on mobile devices
- Lazy loading for faster loading

### 4. **Mobile-Friendly Design**
- Fully responsive design
- Hamburger menu for mobile devices
- Touch/swipe support in lightbox
- Optimized layout for different screen sizes
- Fast loading thanks to lazy loading

## 📁 File Structure


```
void-artwork-improved/
├── index.html                 # Main page
├── wallpapers-hires.html      # Hi-Res wallpapers
├── wallpapers-lowres.html     # Low-Res wallpapers
├── logos.html                 # Logos
├── grub-themes.html           # GRUB themes
├── css/
│   └── style.css              # Main styles
├── js/
│   ├── main.js                # Navigation and basic functions
│   └── gallery.js             # Gallery and lightbox
└── assets/                    # Original folder with images
    ├── wallpapers-hires/
    ├── wallpapers-lowres/
    ├── logos/
    └── grub/
```

## 🚀 Installation and Use

### Option 1: Replacing your existing website

1. Copy all files to the root folder of your GitHub Pages repository:
```bash
   cp -r /path/to/improved/* /path/to/void-artwork/
   ```

2. Make sure that the `assets/` folder remains intact

3. Commit and push the changes:
   ```bash
   git add .
   git commit -m "Improved website with navigation and lightbox"
   git push
   ```

### Option 2: Testing locally

1. Open `index.html` in your browser directly from the folder
2. For full functionality, you may need a local server due to CORS:
   ```bash
   # Python 3
   python -m http.server 8000

   # Or Node.js
   npx serve
   ```

## 🎨 Customization

### Changing Colors

Edit the CSS variables in `css/style.css`:

```css
:root {
    --primary-color: #478061;      /* Primary color (Void green) */
    --primary-dark: #2d5a3d;       /* Darker shade */
    --secondary-color: #282E3A;    /* Dark color for navigation */
    --text-color: #333;            /* Text color */
}
```

### Adding/Removing Images

Edit the `initGallery()` call on a specific page:

```javascript
// Example: wallpapers-hires.html
initGallery('assets/wallpapers-hires/', [
    { count: 105, ext: 'png' },           // 105 PNG files (001-105)
    { count: 4, ext: 'jpg', startFrom: 106 }  // 4 JPG files (106-109)
]);
```

### Adding a New Category

1. Copy an existing page (e.g., `logos.html`)
2. Edit the title and description
3. Change the `initGallery()` call with the new path
4. Add a link to the navigation in all HTML files
5. Add a tab to the main page (`index.html`)

## 🌐 Features

### Lightbox Controls

- **Clicking on an image** - Opens the lightbox
- **←/→ arrows** - Navigate between images
- **ESC** - Closes the lightbox
- **Clicking outside the image** - Closes the lightbox
- **Swipe on mobile** - Navigate between images
- **Download button** - Download the current image

### Responsive Breakpoints

- **Desktop**: > 768px - Full menu and large gallery
- **Tablet**: 481px - 768px - Hamburger menu, medium-sized gallery
- **Mobile**: ≤ 480px - Single-word layout

## 🔧 Technology

- **HTML5** - Semantic structure
- **CSS3** - Modern responsive design with CSS Grid and Flexbox
- **Vanilla JavaScript** - No dependencies, pure JS
- **Lazy Loading** - For faster page loading
- **Touch Events** - For mobile swipe gestures

## 📱 Tested

- ✅ Chrome/Edge (Desktop & Mobile)
- ✅ Firefox (Desktop & Mobile)
- ✅ Safari (Desktop & Mobile)
- ✅ Opera

## 📝 Notes

- The original `assets/` folder must be preserved
- Images must be named with prefixes (001.png, 002.png, etc.)
- An HTTP server may be required for local testing due to CORS
- Lazy loading works best with modern browsers

## 🤝 Contributions

Original project: [oSoWoSo/void-artwork](https://github.com/oSoWoSo/void-artwork)

## 📄 License

CC-BY-4.0

---

**Created with ❤️ for the Void Linux community**