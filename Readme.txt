1、在项目目录下，创建两个空文件：
confush.sh 存在混淆的脚本代码
func.list 存放需要混淆的方法、变量名
这两个文件的位置一定是在项目的根目录下，因为在之后的设置Run Script的一致。

2、向confuse.sh中添加脚本代码：
TABLENAME 数据表名
SYMBOL_DB_FILE 数据库文件名
STRING_SYMBOL_FILE 存放需要混淆的字符串文件名

3、点击工程-> Build Phase -> 点击+号，添加Run Script

在里面添加 $PROJECT_DIR/confuse.sh ，这句命令的意思的应用每次启动的时候，都会先去跑我们confuse.sh 脚本

4、编译，报错原因：confusion.sh Permission denied.
解决方案： 切换到工程目录下，输入命令行 chmod 755 confuse.sh 给我们的脚本本间授权

5、我们再编译一下项目，然后在工程目录下，我们会多出一个codeObfuscation.h文件。
这里面是用来装混淆前 —> 混淆后的代码对比


6、同样把这个文件拉到项目中，我们再建一个PCH文件来引入这个文件，那么整个项目就可以实现宏的替换了。


注意：

1、 系统的方法
2、XIB中拖线的控件名

这些都不能用这个方法混淆，因为会导致运行的时候出错。

如果要去掉某一个方法名或者变量名：在func.list删除字段并删除codeObfuscation.h文件，重新运行生成一遍即可。
