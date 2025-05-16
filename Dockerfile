FROM python:3.10-slim

WORKDIR /app

# 安装依赖
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 复制应用程序文件
COPY . .

# 设置环境变量
ENV PORT=8501

# 暴露Streamlit默认端口
EXPOSE 8501

# 运行应用
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"] 