#!/bin/bash
# SSH端口转发启动脚本
# 将远程服务器的8000端口转发到本地的8000端口

# 配置参数（请根据实际情况修改）
REMOTE_USER="wangyuxuan"  # 修改为您的SSH用户名
REMOTE_HOST="your_server_ip"  # 修改为您的服务器IP地址
LOCAL_PORT=8000
REMOTE_PORT=8000

echo "=========================================="
echo "SSH 端口转发启动脚本"
echo "=========================================="
echo "远程服务器: ${REMOTE_USER}@${REMOTE_HOST}"
echo "端口映射: 本地 ${LOCAL_PORT} -> 远程 ${REMOTE_PORT}"
echo "=========================================="
echo ""
echo "提示："
echo "1. 确保远程服务器上的服务已启动（运行 python3 start_server.py）"
echo "2. 转发建立后，在浏览器访问: http://localhost:${LOCAL_PORT}"
echo "3. 按 Ctrl+C 停止转发"
echo ""
echo "正在建立SSH端口转发..."

# 检查本地端口是否被占用
if command -v lsof &> /dev/null; then
    if lsof -Pi :${LOCAL_PORT} -sTCP:LISTEN -t >/dev/null 2>&1 ; then
        echo "警告: 本地端口 ${LOCAL_PORT} 已被占用！"
        echo "请先停止占用该端口的程序，或修改脚本中的 LOCAL_PORT"
        exit 1
    fi
fi

# 建立SSH端口转发
# -N: 不执行远程命令，只建立转发
# -L: 本地端口转发
ssh -N -L ${LOCAL_PORT}:localhost:${REMOTE_PORT} ${REMOTE_USER}@${REMOTE_HOST}

