INSTALL_DIR="$HOME/bin"
# Install Trivy
echo "Installing Trivy..."
sudo curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -s -- -b "$INSTALL_DIR" v0.50.4

# Run Trivy to scan for vulnerabilities and output to trivy-vulnerabilities.txt
PROJECT_DIR=$(pwd)
"$INSTALL_DIR/trivy" fs --scanners vuln --format table --output trivy-vulnerabilities.txt "$PROJECT_DIR"
