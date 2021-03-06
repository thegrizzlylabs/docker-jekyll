FROM amazonlinux:latest

RUN yum -y install libwebp-devel libpng-devel libjpeg-devel git

RUN git clone git@github.com:ImageMagick/ImageMagick.git ImageMagick-7.0.10 && \
  cd ImageMagick-7.0.10 && \
  ./configure && \
  make && \
  make install 
