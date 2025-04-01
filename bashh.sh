apt-get update
apt-get install -y wget
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
apt-get update && \
apt-get install -y dotnet-sdk-7.0
apt-get update && \
apt-get install -y aspnetcore-runtime-7.0
 
export PATH="$PATH:$HOME/.dotnet:$HOME/.dotnet/tools"
 
dotnet --list-sdks
dotnet --list-runtimes