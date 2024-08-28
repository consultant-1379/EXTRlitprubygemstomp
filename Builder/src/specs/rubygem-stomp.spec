%global realversion 1.4.9
%global rpmversion <rpm.version>
%global packager <ericsson.rstate>
%global realname rubygem-stomp

%global gemname stomp

%global gemdir /usr/share/gems
%global geminstdir %{gemdir}/gems/%{gemname}-%{realversion}
%global gemspecdir %{gemdir}/specifications/
%global gemcachedir %{gemdir}/cache/

Summary: Ruby client for the Stomp messaging protocol
Name: EXTRlitprubygemstomp_CXP9031334
Version: %{rpmversion}
Release: 1
Group: Development/Languages
License: MIT
URL: http://www.ericsson.com/
Source0: %{gemname}-%{realversion}.tar.gz
Requires: ruby(runtime_executable) >= 2.0.0
Requires: ruby(runtime_executable) < 2.1.0
Requires: ruby(rubygems)
BuildArch: noarch
Provides: rubygem(%{gemname}) = %{realversion}
Provides: rubygem-%{gemname} = %{realversion}
Packager:  %{packager}

%description
Ruby client for the Stomp messaging protocol
repackaged by Ericsson from GitHUB source code.


%prep
%setup -q -c -T
mkdir -p .%{gemdir}

%build

%install
%{__install} -d -m0755 %{buildroot}%{geminstdir}
%{__install} -d -m0755 %{buildroot}%{gemspecdir}
%{__install} -d -m0755 %{buildroot}/usr/bin
cp -a  %{_builddir}%{gemname}-%{realversion}/stomp-%{realversion}.gemspec %{buildroot}%{gemspecdir}/stomp-%{realversion}.gemspec
cp -a  %{_builddir}%{gemname}-%{realversion}/{adhoc,lib,bin} %{buildroot}%{geminstdir}
cp -a  %{_builddir}%{gemname}-%{realversion}/bin/catstomp %{buildroot}/usr/bin/catstomp
cp -a  %{_builddir}%{gemname}-%{realversion}/bin/stompcat %{buildroot}/usr/bin/stompcat

%files
%defattr(-,root,root,0755)
%{geminstdir}
%{gemspecdir}
/usr/bin/catstomp
/usr/bin/stompcat
