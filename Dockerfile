FROM centos

RUN rpm -ivh http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm && \
    yum -y groupinstall "Development Tools" && \
    yum -y install zlib-devel openssl-devel readline-devel ncurses-devel libffi-devel libxml2-devel libxslt-devel libcurl-devel libicu-devel libyaml-devel && \
    yum clean all

RUN curl --progress http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.1.tar.gz | tar xz && \
    cd ruby-2.1.1 && \
    ./configure --disable-install-doc && \
    make && make install && \
    cd .. ; rm -rf ruby-2.1.1*

RUN echo 'gem: --no-rdoc --no-ri' > ~/.gemrc && \
    gem install bundler

