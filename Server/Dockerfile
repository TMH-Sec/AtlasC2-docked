# TheMadHuman's dockerization of Grimmie's AtlasC2 Server
FROM  mcr.microsoft.com/dotnet/sdk:6.0
RUN apt clean && apt update
RUN apt install -qy python3 python3-pip
RUN pip3 install supervisor
RUN mkdir /home/supervisord
COPY supervisord.conf /etc/supervisord.conf
RUN apt install -qy nginx
RUN rm /etc/nginx/sites-enabled/default
COPY default /etc/nginx/sites-enabled/default 
RUN mkdir /AtlasC2
COPY APIModels /AtlasC2/APIModels
COPY TeamServer /AtlasC2/TeamServer
RUN sed -i 's/net5.0/net6.0/' /AtlasC2/APIModels/APIModels.csproj
RUN sed -i 's/net5.0/net6.0/' /AtlasC2/TeamServer/TeamServer.csproj
RUN sed -i 's/5.6.3/6.2.3/' /AtlasC2/TeamServer/TeamServer.csproj
RUN dotnet build /AtlasC2/TeamServer
CMD ["supervisord", "-n", "-c", "/etc/supervisord.conf"]
