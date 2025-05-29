# Node 20 + n8n 内蔵
FROM n8nio/n8n:1.94.0

# root でパッケージ追加
USER root
RUN apk add --no-cache graphicsmagick tzdata

# 元に戻す（重要！）
USER node
# 公式イメージの ENTRYPOINT と CMD をそのまま使う
