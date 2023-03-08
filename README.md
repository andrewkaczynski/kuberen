# kuberen
Simple CLI to rename Kubernetes resources

More info at my blog: [How to change the Kubernetes resource name? Let's write a simple Bash CLI](https://k8sky.dev/index.php/2023/03/08/how-to-change-the-kubernetes-resource-name-lets-write-a-simple-bash-cli/)

## Usage

```bash
./kuberen --help
kuberen - Simple tool to rename Kubernetes resources

Usage:
  kuberen RESOURCE NAME TARGETNAME [OPTIONS]
  kuberen --help | -h
  kuberen --version | -v

Options:
  --namespace, -n NAMESPACE
    Namespace (default: default)

  --help, -h
    Show this help

  --version, -v
    Show version number

Arguments:
  RESOURCE
    Kubernetes resource type

  NAME
    Current name of the resource

  TARGETNAME
    Target name of the resource

Examples:
  kuberen deployment my-app my-app-1
  kuberen secret token token-old -n kube-system
```