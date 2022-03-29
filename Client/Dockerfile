# TheMadHuman's dockerization of Grimmie's AtlasC2 Client
FROM mcr.microsoft.com/dotnet/sdk:6.0
RUN mkdir /AtlasC2
COPY Client /AtlasC2/Client
RUN sed -i 's/net5.0/net6.0/' /AtlasC2/Client/Client.csproj
RUN sed -i 's/127.0.0.1:5000/atlasserver:1337/' /AtlasC2/Client/Program.cs
RUN dotnet build /AtlasC2/Client
CMD ["/AtlasC2/Client/bin/Debug/net6.0/Client"]
