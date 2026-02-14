#!/bin/bash

# Installation script for the improved version of the Void Artwork website

echo "=================================="
echo "Void Artwork - Improved Version"
echo "=================================="
echo ""

# Check if we are in the void-artwork repository
if [ ! -d "assets" ]; then
    echo "❌ Error: The 'assets' folder was not found!"
    echo "   Make sure you are running this script in the root folder of the void-artwork repository."
    exit 1
fi

echo "✓ assets folder found"
echo ""

# Create a backup of old files
echo "📦 Creating a backup of old files..."
BACKUP_DIR="backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"

# Back up old files if they exist
[ -f "index.html" ] && mv index.html "$BACKUP_DIR/"
[ -f "wallpapers-hires.html" ] && mv wallpapers-hires.html "$BACKUP_DIR/"
[ -f "wallpapers-lowres.html" ] && mv wallpapers-lowres.html "$BACKUP_DIR/"
[ -f "logos.html" ] && mv logos.html "$BACKUP_DIR/"
[ -f "grub-themes.html" ] && mv grub-themes.html "$BACKUP_DIR/"
[ -d "dist" ] && mv dist "$BACKUP_DIR/"
[ -d "src" ] && mv src "$BACKUP_DIR/"
[ -d "css" ] && mv css "$BACKUP_DIR/" 2>/dev/null
[ -d "js" ] && mv js "$BACKUP_DIR/" 2>/dev/null

echo "✓ Backup created in: $BACKUP_DIR"
echo ""

# Copy new files
echo "📋 Installing new files..."

# Copying HTML files
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ ! -f "$SCRIPT_DIR/index.html" ]; then
    echo "❌ Chyba: Nové soubory nenalezeny!"
    echo "   Ujistěte se, že install.sh je ve složce s novými soubory."
    exit 1
fi

# Kopírování HTML souborů
cp "$SCRIPT_DIR/index.html" ./
cp "$SCRIPT_DIR/wallpapers-hires.html" ./
cp "$SCRIPT_DIR/wallpapers-lowres.html" ./
cp "$SCRIPT_DIR/logos.html" ./
cp "$SCRIPT_DIR/grub-themes.html" ./

# Kopírování CSS
mkdir -p css
cp -r "$SCRIPT_DIR/css/"* ./css/

# Copying JS
mkdir -p js
cp -r "$SCRIPT_DIR/js/"* ./js/

# Kopírování dokumentace
[ -f "$SCRIPT_DIR/README.md" ] && cp "$SCRIPT_DIR/README.md" ./README-new.md
[ -f "$SCRIPT_DIR/NAVOD.md" ] && cp "$SCRIPT_DIR/NAVOD.md" ./
[ -f "$SCRIPT_DIR/CSS-DOCUMENTATION.md" ] && cp "$SCRIPT_DIR/CSS-DOCUMENTATION.md" ./

echo ""
echo "✓ Installation complete!"
echo ""

# Information about next steps
echo "=================================="
echo "📝 Next steps:"
echo "=================================="
echo ""
echo "1. Open demo.html in your browser and try out the new design"
echo "2. If you are satisfied, commit the changes:"
echo "   git add ."
echo "   git commit -m 'Improved website with navigation and lightbox'"
echo "   git push"
echo ""
echo "3. The website will be available at: https://osowoso.github.io/void-artwork/"
echo ""
echo "🔧 Customization:"
echo "   - Colors: edit variables in css/style.css"
echo "   - Number of images: edit initGallery() calls in HTML files"
echo ""
echo "📚 More information in README.md"
echo ""
echo "✨ Done! Enjoy your improved website!"

exit 0
