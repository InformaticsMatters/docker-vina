FROM continuumio/miniconda3:4.12.0

RUN apt-get -y update &&\
  apt-get -y install procps &&\
  apt-get clean

ENV PYTHONUNBUFFERED=1

COPY bin/vina_1.2.3_linux_x86_64 /usr/local/bin/vina
COPY data/* /data/

# needs an older version of numpy due to a deprecation that vina uses.
# when updating vina check whether this still applies
RUN conda install -y -c conda-forge pip=23.0.1 numpy=1.19 swig boost-cpp\
    sphinx sphinx_rtd_theme vina=1.2.3 &&\
  conda init bash 

