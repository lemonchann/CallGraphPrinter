��������yum 163Դ��
�ο���http://qingwang.blog.51cto.com/505009/1551228/
ע�����wget�������������һ��һ���Ĵ�URL��֤�Ƿ���á�

��װPython3.4 ��
�ο���http://blog.aboutc.net/linux/61/install-python-on-linux
��װ֮��Python3.4��ϵͳ�Դ���Python2.6����

�Ȱ�װgraphviz��
����򵥣�yum install graphviz

��װpygraphviz-1.3.1 ��
��ѹ֮���INSTALL.txt�鿴��������ǣ�
python setup.py install --include-path=/usr/include/graphviz --library-path=/usr/lib/graphviz ����ᱨ��_graphviz.so: undefined symbol: Agundirected 
��������ο���https://github.com/pygraphviz/pygraphviz/issues/71
����֮��Ŀ�����buildĿ¼��Ҫ���°�װֻҪɾ��buildĿ¼��������ִ�о��С�

����pygraphviz���ڰ�װ��ɡ�
Ϊ��֧��py�ű���webbrowser.open�����滹װ��firefox�����:yum install firefox��
��Xvfb:  yum install xorg-x11-server-Xvfb
������ʾ����
  478  Xvfb :1 -screen 0 1366x768x24 &
  479  export DISPLAY=:1

�����Ǿ�����������С��ñ��֧�ֻ�ͼx11��ʾ�����ֹ����Xlib:  extension "RANDR" missing on display ":1"
���Ժ�װ��������Linux���а�����pygraphvizӦ�ÿ��á�
