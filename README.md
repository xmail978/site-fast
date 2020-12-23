# 介绍
### Git全局设置用户凭证:
```
git config --global user.name "your name"
git config --global user.email "your email"
```
### 创建git仓库并提交:
…or create a new repository on the command line
echo "# java-dev" >> README.md
```
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/xmail978/java-dev.git
git push -u origin main
```               
…or push an existing repository from the command line
```
git remote add origin https://github.com/xmail978/java-dev.git
git branch -M main
git push -u origin main
```
…or import code from another repository
You can initialize this repository with code from a Subversion, Mercurial, or TFS project.
 
 
<!--![图片示例](read/20180808093446227.png)-->
<!--<img src="read/20180808093446227.png" alt="性能对比">-->

