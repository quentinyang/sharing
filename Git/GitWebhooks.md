# Github Webhooks

Github有webhook可以在提交代码时触发钩子做一些自动化的事情。

## 自动化部署脚本

自动化部署脚本：`deploy.sh`

```
#!/bin/bash
WEB_PATH='/var/www/dev.lovelucy.info'
WEB_USER='lovelucydev'
WEB_USERGROUP='lovelucydev'

echo "Start deployment"
cd $WEB_PATH
echo "pulling source code..."
git reset --hard origin/master
git clean -f
git pull
git checkout master
echo "changing permissions..."
chown -R $WEB_USER:$WEB_USERGROUP $WEB_PATH
echo "Finished."
```

## 通过配置webhooks自动运行脚本

推荐阅读 [使用 GitHub / GitLab 的 Webhooks 进行网站自动化部署](http://www.lovelucy.info/auto-deploy-website-by-webhooks-of-github-and-gitlab.html)这篇文章，写得很详细。

## References
 - [Webhooks API](https://developer.github.com/webhooks/)
 - 推荐： [使用 GitHub / GitLab 的 Webhooks 进行网站自动化部署](http://www.lovelucy.info/auto-deploy-website-by-webhooks-of-github-and-gitlab.html)
 - [搭建git服务器及利用git hook自动布署代码](http://xydudu.calepin.co/git-server-and-hook.html)
 - Web hooks实现（PHP版） [github-webhook-handler-php](https://github.com/mdluo/github-webhook-handler-php)
 - Web hooks实现（Nodejs版） [github-webhook-handler](https://github.com/rvagg/github-webhook-handler)