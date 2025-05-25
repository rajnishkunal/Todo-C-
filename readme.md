# TodoApp

A comprehensive Todo application built with C# that allows users to manage their tasks efficiently. Features include task creation, editing, deletion, and status tracking with a clean and intuitive interface.
## Walkthrough Video
https://youtu.be/GOzFNakziDk 

## Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Installation](#installation)
- [Configuration](#configuration)
- [Running the Application](#running-the-application)

- [License](#license)

## Prerequisites

Before you begin, ensure you have the following installed on your machine:

- **.NET SDK** (version X.X or later)
  - Download from [Microsoft .NET Downloads](https://dotnet.microsoft.com/download)
  - Verify installation: `dotnet --version`
- **Git** for cloning the repository
  - Download from [git-scm.com](https://git-scm.com/)
- **Visual Studio** or **Visual Studio Code** (recommended IDE)
  - [Visual Studio Community](https://visualstudio.microsoft.com/vs/community/) (free)
  - [Visual Studio Code](https://code.visualstudio.com/) with C# extension

### Optional Tools

- **SQL Server** (if using database features)
- **Docker** (if containerization is used)

## Getting Started

### 1. Clone the Repository

```bash
# Clone the repository
git clone https://github.com/rajnishkunal/Todo-C-.git

# Navigate to the project directory
cd Todo-C-
```



## Installation

### 1. Restore NuGet Packages

```bash
# Restore all project dependencies
dotnet restore
```

### 3. Build the Project

```bash
# Build the entire solution
dotnet build

# Or build in Release mode
dotnet build --configuration Release
```

### 4. Verify Installation

```bash
# Check if the project builds successfully
dotnet build --verbosity normal
```

## Configuration

### 1. Environment Settings

Create an `appsettings.json` file (if not present) or update the existing one:

```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=(localdb)\\mssqllocaldb;Database=YourDbName;Trusted_Connection=true;"
  },
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft.AspNetCore": "Warning"
    }
  },
  "AllowedHosts": "*"
}
```

### 2. Database Setup (if applicable)

```bash
# Install Entity Framework tools (if using EF Core)
dotnet tool install --global dotnet-ef

# Create and apply database migrations
dotnet ef database update
```

### 3. Environment Variables

Set any required environment variables:

```bash
# Windows (Command Prompt)
set ASPNETCORE_ENVIRONMENT=Development

# Windows (PowerShell)
$env:ASPNETCORE_ENVIRONMENT="Development"

# macOS/Linux
export ASPNETCORE_ENVIRONMENT=Development
```

## Running the Application

### Method 1: Using .NET CLI

```bash
# Run the application
dotnet run

# Run with specific project file
dotnet run --project src/TodoApp/TodoApp.csproj

# Run in watch mode (auto-restart on file changes)
dotnet watch run
```

### Method 2: Using Visual Studio

1. Open the solution file (`.sln`) in Visual Studio
2. Set the startup project (right-click project → "Set as Startup Project")
3. Press `F5` or click the "Start" button

### Method 3: Using Visual Studio Code

1. Open the project folder in VS Code
2. Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac)
3. Type ".NET: Generate Assets for Build and Debug"
4. Press `F5` to start debugging

### Access the Application

Once running, the application will be available at:

- **HTTP**: `http://localhost:5000`
- **HTTPS**: `https://localhost:5001`
- **API**: `http://localhost:5000/api` (if applicable)



## Troubleshooting

### Common Issues

**Issue**: `dotnet` command not found
- **Solution**: Install .NET SDK and ensure it's in your PATH

**Issue**: Build errors about missing packages
- **Solution**: Run `dotnet restore` to restore NuGet packages

**Issue**: Database connection errors
- **Solution**: Check connection string in `appsettings.json` and ensure database server is running

**Issue**: Port already in use
- **Solution**: Stop other applications using the port or change the port in `launchSettings.json`

### Getting Help

- Check the [Issues](https://github.com/rajnishkunal/Todo-C-/issues) page
- Review the [.NET Documentation](https://docs.microsoft.com/en-us/dotnet/)
- Join our community discussions



## License

This project is licensed under the [MIT License](LICENSE) - see the LICENSE file for details.

---

## Additional Resources

- [.NET Documentation](https://docs.microsoft.com/en-us/dotnet/)
- [ASP.NET Core Documentation](https://docs.microsoft.com/en-us/aspnet/core/)
- [C# Programming Guide](https://docs.microsoft.com/en-us/dotnet/csharp/)

---

**Questions?** Feel free to reach out by creating an issue or contacting [rajnishkunal](https://github.com/rajnishkunal).