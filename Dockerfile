FROM ghcr.io/dasctf-offical/docker-template-for-web:main

COPY src /app/

# 内部编译构建以及安装依赖等操作请务必在此完成！
RUN cd /app && \
    chmod +x demo

# 如需自定义启动命令请覆盖 APP_CMD 环境变量
ENV APP_CMD="cd /app && ./demo"

# 如需自定义 FLAG 请将自定义脚本覆盖到 /flag.sh
COPY files/flag.sh /flag.sh

# 如有上传文件等操作请务必将权限设置正确！
# RUN chown app:app /app/uploads/
# 请声明对外暴露端口
EXPOSE 3000
