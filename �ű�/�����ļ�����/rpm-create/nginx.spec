#将源码包打包成rpm包
#yum -y install rpm-build
#rpmbuild -ba nginx.spec生成/root/rpmbuild/目录
#cp源码包到/root/rpmbuild/SOURCES/
#vim /root/rpmbuild/SPECS/nginxd.spec
#rpmbuild -ba /root/rpmbuild/SPECS/nginx.spec
#生成rpm包到/root/rpmbuild/RPMS/
Name:nginx	
Version:1.8.0	
Release:1.0
Summary:web server	
#简要描述
Group:Applications/Internet
License:GPL
#指定协议类型
URL:http://nginx.org
Source0:nginx-1.8.0.tar.gz
#指定要打包/root/rpmbuild/SOURCES/内的tar包名字
#BuildRequires:	
#Requires:	

%description
web server too nginx
#详细描述
%prep
%setup -q
#tar -xf解压动作

%build
./configure --prefix=/usr/local/nginx --with-http_stub_status_module --with-http_ssl_module
make %{?_smp_mflags}
#指定安装路径和参数

%install
%make_install


%files
%doc
/*
#打包所有/root/rpmbuild/BUILDROOT/内的文件到/root/rpmbuild/RPMS/下

%changelog

