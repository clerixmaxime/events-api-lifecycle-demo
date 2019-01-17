FROM registry.access.redhat.com/ansible-tower-34/ansible-tower:latest
USER root
RUN yum install -y gcc
RUN mkdir -p /var/lib/awx/venv/jinja2.8
RUN virtualenv --system-site-packages /var/lib/awx/venv/jinja2.8
RUN sh -c ". /var/lib/awx/venv/jinja2.8/bin/activate ; /var/lib/awx/venv/jinja2.8/bin/pip install python-memcached psutil ; pip install --upgrade jinja2;"