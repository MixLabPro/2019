#!/bin/sh

git pull
git push
hexo clean
hexo g # hexo generate
hexo d # hexo deploy
