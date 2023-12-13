#/bin/sh
if [ $VERCEL ]; then
  echo "当前为 Vercel 部署环境"

  # 配置网站名称
  if [ $SITE_NAME ]; then
    sed -i "s#Subconverter Web#$SITE_NAME#g" /app/public/conf/config.js
  fi

  # 配置 API 地址
  if [ $API_URL ]; then
    sed -i "s#http://127.0.0.1:25500#$API_URL#g" /app/public/conf/config.js
  fi

  # 配置短链接地址
  if [ $SHORT_URL ]; then
    sed -i "s#https://s.ops.ci#$SHORT_URL#g" /app/public/conf/config.js
  fi
fi
