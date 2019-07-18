#!/bin/sh

git push
hexo clean
hexo g # hexo generate
hexo d # hexo deploy
