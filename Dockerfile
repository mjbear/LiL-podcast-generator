FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git \
    python3-yaml

#----------------
#8 [3/5] RUN pip3 install PyYAML
  #8 0.386 error: externally-managed-environment
  #8 0.386 
  #8 0.386 × This environment is externally managed
  #8 0.386 ╰─> To install Python packages system-wide, try apt install
  #8 0.386     python3-xyz, where xyz is the package you are trying to
  #8 0.386     install.
#----------------

# RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]