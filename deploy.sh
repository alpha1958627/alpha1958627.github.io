#!/bin/bash
# Deploy script for dual platform deployment
# Usage:
#   ./deploy.sh github    - Deploy to GitHub Pages
#   ./deploy.sh ustc      - Deploy to USTC homepage

set -e

echo "=================================="
echo "Jiahua Liang's Homepage Deploy Script"
echo "=================================="
echo ""

# Build for GitHub Pages (default)
build_github() {
    echo "Building for GitHub Pages..."
    bundle exec jekyll build
    echo ""
    echo "Built files are in _site/"
    echo "Deploy by pushing to GitHub or upload _site/ contents to GitHub Pages"
}

# Build for USTC Homepage
build_ustc() {
    echo "Building for USTC Homepage..."
    bundle exec jekyll build --config _config.yml,_config.ustc.yml
    echo ""
    echo "Built files are in _site/"
    echo ""
    echo "FTP Upload Instructions:"
    echo "  Host: home.ustc.edu.cn"
    echo "  User: liangjh"
    echo "  Target: public_html/"
    echo ""
    echo "Command line upload:"
    echo "  lftp -u liangjh home.ustc.edu.cn -e 'mirror -R _site/ public_html; quit'"
}

case "${1:-github}" in
    github)
        build_github
        ;;
    ustc)
        build_ustc
        ;;
    *)
        echo "Usage: $0 {github|ustc}"
        exit 1
        ;;
esac

echo ""
echo "Done!"
