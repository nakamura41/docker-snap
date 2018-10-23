FROM python:2.7.15

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
    python-gnuplot \
    unzip \
    zip \
    && apt-get autoremove \
    && apt-get clean \
    && rm -rf /var/tmp /var/lib/apt/lists/* \
    && rm -rf /tmp/*

RUN wget -q http://snap.stanford.edu/snappy/release/snap-4.1.0-4.1-centos6.5-x64-py2.6.tar.gz \
    && tar -xzf snap-4.1.0-4.1-centos6.5-x64-py2.6.tar.gz \
    && cd snap-4.1.0-4.1-centos6.5-x64-py2.6 \
    && python setup.py install \
    && cd .. \
    && rm -rf snap-4.1.0-4.1-centos6.5-x64-py2.6.tar.gz snap-4.1.0-4.1-centos6.5-x64-py2.6
