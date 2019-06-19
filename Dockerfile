FROM gitpod/workspace-full:latest

USER root

RUN apt-get update                                                      \
    && apt-get install -y build-essential libasound2-dev libjack-dev    \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*






# Give back control
USER root


# Cleaning
RUN apt-get clean
