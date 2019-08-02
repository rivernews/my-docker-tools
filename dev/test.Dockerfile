FROM "<base image here>"

RUN pip install django==1.11

ADD test.entrypoint.sh /path/to/entrypoint.sh

RUN chmod +x /path/to/entrypoint.sh

ENTRYPOINT [ "/path/to/entrypoint.sh" ]