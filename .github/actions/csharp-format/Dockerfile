FROM mcr.microsoft.com/dotnet/sdk:8.0

COPY CSharpFormat.csproj /CSharpFormat.csproj
RUN dotnet restore /CSharpFormat.csproj

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
