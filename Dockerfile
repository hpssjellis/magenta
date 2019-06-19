FROM gitpod/workspace-full:latest

USER root

RUN apt-get update                                                      \
    && apt-get install -y build-essential libasound2-dev libjack-dev    \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*




USER gitpod
  
RUN mkdir -p /home/gitpod/rocksetta                                                                            \ 
    && mkdir -p /home/gitpod/rocksetta/logs                                                                    \ 
    && touch /home/gitpod/rocksetta/logs/mylogs.txt                                                            \
    && echo "Installation start, made some folders in /home/gitpod" >> /home/gitpod/rocksetta/logs/mylogs.txt  \
    && echo "pip install magenta " >> /home/gitpod/rocksetta/logs/mylogs.txt                                   \
    && pip install magenta                                                                                     \
    && echo "All done" >> /home/gitpod/rocksetta/logs/mylogs.txt                
    


        

#RUN sysctl kernel.unprivileged_userns_clone=1

# Give back control
USER root


# Cleaning
RUN apt-get clean
