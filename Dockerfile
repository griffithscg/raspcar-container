FROM centos:7
WORKDIR /
RUN yum update -y && yum install -y centos-release-scl
RUN yum install -y python36 python36-setuptools python36-tkinter git libXext libSM libXrender net-tools
RUN easy_install-3.6 pip
RUN pip3 install numpy zmq pybase64 opencv-contrib-python speechrecognition
RUN git clone http://github.com/adeept/Adeept_PiCar-B.git
WORKDIR Adeept_PiCar-B/client/
ADD client.py .
