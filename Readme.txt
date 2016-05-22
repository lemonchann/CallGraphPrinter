首先配置yum 163源：
参考：http://qingwang.blog.51cto.com/505009/1551228/
注意如果wget不到就用浏览器一级一级的打开URL验证是否可用。

安装Python3.4 ：
参考：http://blog.aboutc.net/linux/61/install-python-on-linux
安装之后Python3.4和系统自带的Python2.6共存

先安装graphviz：
这个简单：yum install graphviz

安装pygraphviz-1.3.1 ：
解压之后打开INSTALL.txt查看命令必须是：
python setup.py install --include-path=/usr/include/graphviz --library-path=/usr/lib/graphviz 否则会报错：_graphviz.so: undefined symbol: Agundirected 
解决方法参考：https://github.com/pygraphviz/pygraphviz/issues/71
生成之后的库是在build目录。要重新安装只要删除build目录就行重新执行就行。

至此pygraphviz终于安装完成。
为了支持py脚本的webbrowser.open，后面还装了firefox浏览器:yum install firefox，
和Xvfb:  yum install xorg-x11-server-Xvfb
设置显示器：
  478  Xvfb :1 -screen 0 1366x768x24 &
  479  export DISPLAY=:1

由于是精简版的命令行小红帽不支持画图x11显示：最后止步：Xlib:  extension "RANDR" missing on display ":1"
等以后装了桌面版的Linux发行版再来pygraphviz应该可用。
