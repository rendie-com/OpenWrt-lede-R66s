# 使用官方Node.js的最新LTS版本作为基础镜像
FROM node:tls
 
# 设置工作目录为/app
WORKDIR /app
 
# 将应用程序的package.json和package-lock.json复制到工作目录
COPY package*.json ./
 
# 安装项目依赖
RUN npm install
 
# 将项目的所有文件复制到工作目录
COPY . .
 
# 暴露容器内部应用监听的端口号
EXPOSE 3000
 
# 定义容器启动时执行的命令
CMD ["node", "index.js"]