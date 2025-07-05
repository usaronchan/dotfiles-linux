### Clean up all commit logs and Force push to Remote git repos ###
# 1. Create new branch: last
# 2. Git add all files
# 3. Git commit
# 4. Delete "main" branch
# 5. Change current branch: last -> main
# 6. Setup default branch: main

# -> 更改当前分支(当前分支为last分支)为main分支
# -> 设置默认分支为main分支（如果主分支受保护，就会禁止强制推送，避免覆盖以前的提交历史，那就要去取消分支保护才能推送），并关联远程仓库的main分支
# -> 强制覆盖（无视远程仓库的任何文件改动。多人协同合作的时候，千万不要使用）

git checkout --orphan last
git add .
git commit -m "latest init"
git branch -D main
git branch -m main
git branch --set-upstream-to=origin/main main
git push --force origin main
# git push -u -f origin main

