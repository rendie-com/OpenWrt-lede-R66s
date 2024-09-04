# 基础镜像选择Node.js官方镜像
FROM node:16
 
# 设置工作目录
WORKDIR /usr/src/app
 
# 复制package.json文件和package-lock.json文件到工作目录
COPY package*.json ./
 
# 安装项目依赖
RUN npm install
 
# 复制所有源代码到工作目录
COPY . .
 
# 暴露容器端口
EXPOSE 8080
 
# 运行Node.js应用
CMD ["node", "index.js"]