FROM python:3.6.1

RUN apt-get update && apt-get install -y --no-install-recommends \
    dbus \
    feedgnuplot \
    fonts-liberation \
    gnuplot-doc \
    gnuplot \
    graphviz \
    graphviz-doc \
    gsfonts \
    libcups2 \
    libgnuplot-iostream-dev \
    nas \
    python-dev \
    python-gnuplot \
    swig \
    unzip \
    zip \
    && apt-get autoremove \
    && apt-get clean \
    && rm -rf /var/tmp /var/lib/apt/lists/* \
    && rm -rf /tmp/*

RUN git clone https://github.com/snap-stanford/snap.git \
    && cd snap \
    && make all

RUN git clone https://github.com/snap-stanford/snap-python.git \
    && cd snap-python \
    && make
