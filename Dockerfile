# Build stage
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY . ./
RUN dotnet restore
RUN dotnet publish -c Release -o /app/publish

# Runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app

# Create a directory for the database and make it writable
RUN mkdir -p /app/Data && chmod 777 /app/Data

# Copy published files
COPY --from=build /app/publish .

# Set environment variable for production
ENV ASPNETCORE_ENVIRONMENT=Production
ENV DOTNET_RUNNING_IN_CONTAINER=true

# Configure Data Protection to use a persistent key directory
RUN mkdir -p /app/keys && chmod 777 /app/keys
ENV ASPNETCORE_DATA_PROTECTION_KEYS_DIR=/app/keys

ENTRYPOINT ["dotnet", "TodoApp.dll"]