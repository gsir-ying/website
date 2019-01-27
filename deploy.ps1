# powershell 
# hugo website deploy

# 判断是否输入commit修改信息
if($args.Count -eq 0)
{
	$today=Get-Date
	$str_commit = $today.ToString('yyyy-MM-dd HH:mm:ss') + " deploy by gsir"
}
else
{
	$str_commit = $args
}

# 发布 hugo
# rm ../public -Recurse -Force -Confirm:$false
hugo -d ../public

# 配置Git
# ssh-keygen -t rsa -C "1358092941@qq.com"
# ssh -T git@github.com
# git config --global user.name "gsir-ying"
# git config --global user.email "1358092941@qq.com"
# git init
git remote remove origin
git remote add origin git@github.com:gsir-ying/website.git

# 提交上传website
git add .
git status
git commit -m $str_commit
# git pull origin master --allow-unrelated-histories
# git push -f origin master
git push -u origin master

git remote remove origin
git remote add origin git@github.com:gsir-ying/public.git
# 提交上传public
cd ../public
# git init
git add .
git status
git commit -m $str_commit
# git remote add origin git@github.com:gsir-ying/public.git
# git pull origin master
git push -f origin master
cd ../website

pause
