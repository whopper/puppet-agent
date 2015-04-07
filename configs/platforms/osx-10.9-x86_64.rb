platform "osx-10.9-x86_64" do |plat|
  plat.servicetype 'sysv'
  plat.servicedir '/usr/lib'
  plat.provision_with 'curl -O http://pkgconfig.freedesktop.org/releases/pkg-config-0.28.tar.gz; tar xf pkg-config-0.28.tar.gz; cd pkg-config-0.28; ./configure --with-internal-glib --prefix=/usr; make; make install; echo \'prefix=/usr
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include
modules=1

Name: libXML
Version: 2.7.3
Description: libXML library version2.
Requires:
Libs: -L${libdir} -lxml2
Libs.private: -lpthread -lz  -lm
Cflags: -I${includedir}/libxml2\' > /usr/lib/pkgconfig/libxml-2.0.pc'
  plat.vcloud_name "osx-109-x86_64"
end
