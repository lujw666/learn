FROM debian:10
#  !安装miniconda
RUN apt-get update --fix-missing -y && \
	apt-get upgrade -y && \
	apt-get install -y --fix-missing wget bzip2 \
	ca-certificates  libglib2.0-0 libxext6 \
	libsm6 libxrender1 libgl1  git mercurial \
	subversion curl grep sed dpkg vim && \
	wget --quiet https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-4.7.12.1-Linux-x86_64.sh -O ~/anaconda.sh &&  \
	/bin/bash ~/anaconda.sh -b -p /opt/conda && \
	rm ~/anaconda.sh && \
	ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \
	echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
	echo "conda activate base" >> ~/.bashrc && \
	apt-get clean
# !添加conda路径
ENV PATH /opt/conda/bin:$PATH
# !utf-8支持并修改root登录密码
RUN apt-get update -y && \
	apt-get install -y locales && \
	localedef -c -f UTF-8 -i zh_CN zh_CN.utf8 && \
	apt-get -yq install openssh-server && \
	mkdir /var/run/sshd && \
	echo 'root:lumingbio' | chpasswd && \
	sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
	sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd && \
	echo "export VISIBLE=now" >> /etc/profile && \
	echo "PATH=/opt/conda/bin:$PATH" >> /etc/profile && \
	echo "export PATH" >> /etc/profile && \
	echo "export LANG=zh_CN.utf8" >> /etc/profile && \
	apt-get clean && \
	mkdir data
# 安装pandoc
RUN apt-get install -y pandoc hub git-flow zip && \
	apt-get clean 
# 安装R,python相关库及包
RUN conda update conda &&  \
	conda config --add channels conda-forge &&  \
	conda config --add channels r &&  \
	conda config --add channels bioconda &&  \
	conda install -y r-base==3.6.3 &&  \
	conda install -y jupyter && \
	conda install -y r-devtools r-biocmanager && \
	conda clean -y --all
# 使R能在jupyter中使用
RUN	R -e "devtools::install_github('kumine/myplot')" && \
	R -e "devtools::install_github('IRkernel/IRkernel',quiet = T,upgrade = F,force = F)" && \
	R -e "IRkernel::installspec(user = FALSE)" && \
	conda install -y ipyparallel && \
	jupyter notebook --generate-config && \
	echo "c.NotebookApp.ip = '*'" >> /root/.jupyter/jupyter_notebook_config.py && \
	echo "c.NotebookApp.open_browser = False" >> /root/.jupyter/jupyter_notebook_config.py && \
	echo "c.NotebookApp.port =8888" >> /root/.jupyter/jupyter_notebook_config.py && \
	echo "c.NotebookApp.notebook_dir = '/data'" >> /root/.jupyter/jupyter_notebook_config.py && \
	conda clean -y --all
# 部分R包功能修复
RUN apt-get update -y && \
	apt-get install -y libnetcdf-dev && \
	cp /opt/conda/lib/R/modules/lapack.so /opt/conda/lib/R/modules/libRlapack.so && \
	cp /opt/conda/lib/R/modules/libRlapack.so /opt/conda/lib/libRlapack.so && \
	apt-get clean
# python库安装
RUN conda install -y pandas rpy2  scipy openpyxl pylint \
	seaborn matplotlib plotly && \
	conda clean -y --all
# R包安装
RUN conda install -y r-openxlsx \
	r-languageserver \
	r-dplyr r-psych r-tidyr r-xml \
	r-rsqlite \
	r-argparse \
	r-cairo \
	r-ggplot2 r-ggrepel r-ggthemes r-ggpubr && \
	conda clean -y --all
# 设置utf-8
ENV LANG zh_CN.utf8
CMD ["/usr/sbin/sshd", "-D"]
