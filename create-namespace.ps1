# create-namespace.ps1
# =======================================
# Author: Your Name
# Project: Kubernetes Namespace Manager
# Description: This script creates a namespace in Kubernetes using PowerShell.
# =======================================

param(
    [Parameter(Mandatory=$true)]
    [string]$NamespaceName
)

Write-Host "🚀 Creating Kubernetes namespace: $NamespaceName ..." -ForegroundColor Cyan

# Create the namespace
kubectl create namespace $NamespaceName

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Namespace '$NamespaceName' created successfully!" -ForegroundColor Green
} else {
    Write-Host "❌ Failed to create namespace '$NamespaceName'." -ForegroundColor Red
}
