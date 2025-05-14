# 公式 n8n 1.91.3 イメージ（Node 20 内蔵）
FROM n8nio/n8n:1.91.3

USER root
# 追加で必要な Alpine パッケージがあればここに並べる
RUN apk add --no-cache graphicsmagick tzdata

WORKDIR /data          # n8n の既定データフォルダ
EXPOSE ${PORT}
# 起動コマンドは内蔵 PM2 が実行
CMD ["n8n", "start"]
