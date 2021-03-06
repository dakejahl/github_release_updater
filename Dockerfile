FROM dockcross/linux-armv6

ENV DEFAULT_DOCKCROSS_IMAGE my_cool_image

RUN wget http://sourceforge.net/projects/boost/files/boost/1.58.0/boost_1_58_0.tar.bz2/download && \
	mv download boost.tar.bz2 && \
	tar xjvf boost.tar.bz2 && \
	cd boost_1_58_0/ && \
	echo "using gcc : arm : arm-linux-gnueabihf-g++ ;" >> project-config.jam && \
	./bootstrap.sh --show-libraries && \
	sudo ./bjam --with-filesystem install -j10