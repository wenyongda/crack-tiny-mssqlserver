FROM mcr.microsoft.com/mssql/server:2022-latest
USER root
RUN cd /opt/mssql/bin/ && mv sqlservr sqlservr.old 
COPY crack.py /opt/mssql/bin/
WORKDIR /opt/mssql/bin/
RUN apt-get update && apt-get install -y python2
RUN ls && python2 /opt/mssql/bin/crack.py && chmod -R 777 /opt/mssql/bin/sqlservr
