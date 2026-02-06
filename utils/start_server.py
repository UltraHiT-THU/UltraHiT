#!/usr/bin/env python3
"""
简单的HTTP服务器，用于运行UltraHiT静态网站
默认端口: 8000
"""

import http.server
import socketserver
import os
import sys

PORT = 8000

class MyHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Cache-Control', 'no-cache, no-store, must-revalidate')
        self.send_header('Pragma', 'no-cache')
        self.send_header('Expires', '0')
        super().end_headers()

if __name__ == "__main__":
    # 切换到脚本所在目录
    os.chdir(os.path.dirname(os.path.abspath(__file__)))
    
    # 检查端口是否被占用
    try:
        with socketserver.TCPServer(("", PORT), MyHTTPRequestHandler) as httpd:
            print(f"服务器启动成功!")
            print(f"访问地址: http://localhost:{PORT}")
            print(f"按 Ctrl+C 停止服务器")
            httpd.serve_forever()
    except OSError as e:
        if e.errno == 98:  # Address already in use
            print(f"错误: 端口 {PORT} 已被占用")
            print(f"请使用其他端口: python3 start_server.py <端口号>")
            sys.exit(1)
        else:
            raise

