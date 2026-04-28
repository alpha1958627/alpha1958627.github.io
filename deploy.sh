#!/bin/bash
# Deploy script for USTC homepage
# Usage: ./deploy.sh

# Configuration
FTP_HOST="home.ustc.edu.cn"
FTP_USER="liangjh"  # 你的科大邮箱用户名
FTP_TARGET="/public_html"  # 或者 "~" 如果直接上传到home目录

echo "Deploying to USTC homepage: home.ustc.edu.cn/~${FTP_USER}"
echo ""

# Build the site first
echo "Building Jekyll site..."
bundle exec jekyll build

if [ $? -ne 0 ]; then
    echo "Build failed!"
    exit 1
fi

echo ""
echo "Build successful!"
echo ""
echo "Please upload the contents of _site/ directory to your USTC FTP server."
echo ""
echo "FTP credentials:"
echo "  Host: $FTP_HOST"
echo "  User: $FTP_USER"
echo "  Target directory: $FTP_TARGET"
echo ""
echo "After FTP upload, your site will be available at:"
echo "  https://home.ustc.edu.cn/~${FTP_USER}"
echo ""
echo "To upload via command line, use:"
echo "  lftp -u $FTP_USER $FTP_HOST -e 'mirror -R _site/ $FTP_TARGET; quit'"
