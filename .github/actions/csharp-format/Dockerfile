FROM mcr.microsoft.com/dotnet/sdk:8.0

RUN dotnet tool install --global csharpier

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
