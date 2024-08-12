FROM mcr.microsoft.com/dotnet/aspnet:6.0 as runtime
WORKDIR /app
COPY . ./
EXPOSE 80
CMD ["dotnet", "modusgoAPI.dll"]
