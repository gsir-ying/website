# powershell 
# hugo website drate write first

# 判断是否输入草稿信息
$today=Get-Date
if($args.Count -eq 0)
{
	$str_tittle = $today.ToString('yyyy-MM-dd') + "-draft" + ".md"
}
else
{
	$str_tittle = $today.ToString('yyyy-MM-dd') + "-" + $args + ".md"
}
$str_tittle
# 创建模板文件
"---"                                           > $str_tittle
"title:      " +  $args                        >> $str_tittle
"date:       " + $today.ToString('yyyy-MM-dd') >> $str_tittle
"lastmod:    " + $today.ToString('yyyy-MM-dd') >> $str_tittle
"draft:      false"                            >> $str_tittle
"tags:       [`"`",`"`",`"`"]"                 >> $str_tittle
"categories: [`"`"]"                           >> $str_tittle
"author:      GSir"                            >> $str_tittle
"---"                                          >> $str_tittle

""                                             >> $str_tittle
"> "                                           >> $str_tittle
""                                             >> $str_tittle
"<!--more-->"                                  >> $str_tittle
"# "                                           >> $str_tittle

Move-Item $str_tittle '.\content\post'