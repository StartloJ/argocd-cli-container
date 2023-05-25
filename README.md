# argocd-cli-container

Apply ArgoCD cli to container platform templates

## Build manual

1. You will be clone this repo to local and run cmd.

    ```bash
    git clone git@github.com:StartloJ/argocd-cli-container.git
    docker build -t argocd-cli:v2.7.3-alpine
    ```

2. Pull image from `hub.docker.io`.

    ```bash
    docker pull dukecyber/argo-cli:v2.7.3-alpine
    ```

## Usage

1. With docker, You will exe into container and do any with ArgoCD API

   ```bash
    $ docker run --rm -it dukecyber/argo-cli:v2.7.3-alpine ash
    $ argocd version
     argocd: v2.7.3+e7891b8
     BuildDate: 2023-05-24T15:51:26Z
     GitCommit: e7891b899a35dca06ae94965ea5ae2a86b344848
     GitTreeState: clean
     GoVersion: go1.19.9
     Compiler: gc
     Platform: linux/amd64
     FATA[0000] Argo CD server address unspecified
   ```

2. With Kubernetes, You should deploy with `k8s/deployment.yaml` and use kubectl to exec into Pods.

    ```bash
    $ kubectl apply -f k8s/dpeloyment.yaml
    $ kubectl exec -it argocd-cli ash
    $ argocd version
     argocd: v2.7.3+e7891b8
     BuildDate: 2023-05-24T15:51:26Z
     GitCommit: e7891b899a35dca06ae94965ea5ae2a86b344848
     GitTreeState: clean
     GoVersion: go1.19.9
     Compiler: gc
     Platform: linux/amd64
     FATA[0000] Argo CD server address unspecified
    ```
