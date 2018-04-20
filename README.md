# ssm
ssm简单增删改查与pagehelper分页

1.	简单的增删改查很容易配置出来，需要注意的地方有
	+ web.xml中的乱码问题
	+ applicationContext.xml中的自动扫描，数据源，sqlsession，mapperScannerConfigurer
	+ dispatcher-servlet.xml中的自动扫描，注册handler，静态资源处理，视图解析器
	+ 注解不要忘记写
2.	分页问题
	+ page类包括start、count、total，还有判断是否有上一页，下一页的方法
	+ 在sqlsession中注册插件
	+ 访问list方法时注入page相关信息
3.	jsp页面
	+ 确认删除的提示框
	+ 姓名与年龄不能为空
	+ 上下页在首页或者尾页的情况下点击无效