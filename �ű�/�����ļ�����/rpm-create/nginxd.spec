Name:nginx		
Version:1.8.0
Release:1.0
Summary:Web server	

Group:Applications/Internet
License:GPL
URL:http://nginx.org		
Source0:nginx-1.8.0.tar.gz


%description
Web server too

%prep
%setup -q


%build
./configure --prefix=/usr/local/nginx --with-http_stub_status_module --with-http_ssl_module
make %{?_smp_mflags}


%install
%make_install


%files
%doc
/*


%changelog
