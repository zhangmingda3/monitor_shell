#####一键部署nginx的脚本##########
##提示：1、判断yum是否有，没有就提示并退出
##提示：2、使用yum自动安装依赖软件包
##提示：3、自动解压并安装nginx
##提示：4、自动启动该服务
##提示：5、设置开机自启
#附加：：根据用户的语言环境，如果是英文则提示英文！，如果是中文则提示中文。用到变量$LANG
############################################################################################
nu=`yum repolist | awk '/repolist/{print $2}'| sed  's/,//'`
if [ $nu == 0 ];then
         echo "yum repolist no Packages"
else
	yum-config-manager --add http://192.168.4.254/rhel6
	sed -i  '$a gpgcheck=0' /etc/yum.repos.d/192.168.4.254_rhel6.repo
fi
yum -y install gcc pcre-devel zlib-devel
cd /opt/ ;wget http://192.168.4.254/nginx/nginx-1.8.0.tar.gz
tar -xf nginx-1.8.0.tar.gz -C .
cd nginx-1.8.0 ; ./configure
make && make install
/etc/init.d/httpd stop
chkconfig httpd off
/usr/local/nginx/sbin/nginx
wget http://192.168.4.254/nginxd -O /etc/init.d/nginxd
chkconfig --add /etc/init.d/nginxd
chkconfig nginxd on
[ $LANG = "zh_CN.UTF-8" ]&&echo "您是中文环境" ||echo "您是英文环境"
