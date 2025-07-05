
# 在VSCode用SSH连接配置TeX
# 配置完第一次编译可能会报错（因为环境变量没有在VSCode中生效）
# 按F1，输入Remote-SSH: Kill VS Code Server on Host…，再重启远程服务器就解决了

# 在系统里查找中文字体
fc-list :lang=zh
# 查找英文字体
fc-list :lang=en

# 检查TeXLive的大小
du -sch ~/texlive/* | sort -hr
# 检查TeXLive核心文件的大小
du -sch ~/texlive/2025/texmf-dist/* | sort -hr

