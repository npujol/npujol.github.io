---
tags:
  - roadmap
  - kubernetes
  - kubernetes-kubernetes
  - ready
  - online
---

# kubernetes-kubernetes-installing-a-local-cluster

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/setting-up-kubernetes/installing-a-local-cluster)__

## Installing a Local Cluster

To install and configure a Kubernetes cluster on CentOS 7 or Ubuntu, you would need to setup the prerequisites and requirements for setting up a Kubernetes cluster after which you would be installing the Kubernetes components, including Kubeadm, Kubelet, and Kubectl and then you’ll need to connect the master and the worker nodes. Once the connection is established you can check it by deploying application on the cluster.

### Kubeadm, Kubelet, Kubectl

| Component | Description                                                                                                                         | Role in Kubernetes Cluster                                                                                                         | Usage                                                                                              |
| --------- | ----------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| Kubeadm   | A command-line tool that simplifies the process of setting up a Kubernetes cluster.                                                 | Used to initialize and configure a Kubernetes cluster by setting up essential components like API Server, Controller Manager, etc. | `kubeadm init` (to initialize a cluster), `kubeadm join` (to add nodes)                            |
| Kubelet   | An agent that runs on each node in the cluster, ensuring containers are running in Pods as defined by the Kubernetes control plane. | Manages the lifecycle of containers on individual nodes, monitors health, and communicates node status to the control plane.       | Runs as a background service on each node; no direct CLI commands (configured via YAML or systemd) |
| Kubectl   | A command-line tool used to interact with the Kubernetes API.                                                                       | Allows users to manage and control resources in the Kubernetes cluster by sending requests to the API Server.                      | `kubectl get`, `kubectl apply`, `kubectl delete`, etc.                                             |

## Resources

* [@article@How to Install a Kubernetes Cluster on CentOS 7](https://www.tecmint.com/install-kubernetes-cluster-on-centos-7/)
* [@article@How To Create a Kubernetes Cluster Using on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-create-a-kubernetes-cluster-using-kubeadm-on-ubuntu-20-04)
* [@article@Deploy a Kubernetes Cluster on Ubuntu Server with Microk8s](https://thenewstack.io/deploy-a-kubernetes-cluster-on-ubuntu-server-with-microk8s/)
* [@article@Local Kubernetes Clusters: A Comparison for Local Development and CI](https://senacor.blog/local-kubernetes-clusters-a-comparison-for-local-development-and-ci/)

| Tool            | Main Use Case         | Features                                          | Strengths                                   | Weaknesses                          |
|-----------------|-----------------------|---------------------------------------------------|---------------------------------------------|-------------------------------------|
| __Docker Desktop__ | Local development    | Simple UI, auto-image use in K8s                  | Mature, beginner-friendly                  | Limited metrics, proprietary       |
| __Rancher Desktop__ | Local development    | Metrics, UI, K8s dashboard                        | Open-source, polished UI                   | Occasional performance issues       |
| __Podman Desktop__ | Container engine      | Supports Kind clusters                            | Open-source, Docker CLI compatible         | Limited K8s integration            |
| __K3D__         | CI pipelines          | CLI-based, multi-node, fast startup               | Excellent for CI, lightweight              | Limited UI                          |
| __Kind__        | CI, lightweight dev    | CLI-based, multi-node support                    | Reliable, good for small clusters          | Slower startup than K3D            |
| __Minikube__    | Flexible use cases     | VM & container support, UI, dashboard            | Feature-rich, broad compatibility          | Slow startup                       |
| __MicroK8s__    | Local with feature set | CLI, metrics, version selector                   | Suitable for Ubuntu users, rich features   | Slowest startup time               |

### MInikube

- [tutorial](https://kubebyexample.com/learning-paths/application-development-kubernetes/lesson-1-running-containerized-applications-3)

## K3s

[Documentation](https://docs.k3s.io/quick-start)

### First steps

* [tutorial](https://www.suse.com/c/introduction-k3d-run-k3s-docker-src/)

#### Takeaways

* [This Answer](https://stackoverflow.com/questions/73243693/cant-create-k3d-cluster)

## K3D Tutorial

* __Documentation:__ [K3D Documentation](https://k3d.io/v5.7.4/)

* __Further Reading:__
  
* [Provision a High-Availability K3s Cluster with K3D](https://akyriako.medium.com/provision-a-high-availability-k3s-cluster-with-k3d-a7519f476c9c)
* [Introduction to K3D: Running K3s in Docker](https://www.suse.com/c/introduction-k3d-run-k3s-docker-src/)

### Own Tutorial

#### Step 1: Create the Cluster

Use the following command to create a K3D cluster with three server nodes, five agent nodes, and specific port mappings:

```bash
k3d cluster create --servers 3 --agents 5 -p "80:80@loadbalancer" -p "443:443@loadbalancer" --volume '/root/k3d/mycode:/code@agent:0'
```

#### Step 2: Verify Cluster Creation

Check if the cluster was created successfully:

```bash
k3d cluster list
```

#### Step 3: Update Kubernetes Configuration

Export the kubeconfig for the created cluster:

```bash
k3d kubeconfig get <CLUSTER_NAME> > ~/.kube/config
```

#### Step 4: Confirm Kubernetes Context

Ensure Kubernetes is using the correct context:

```bash
kubectl config current-context
```

The output should show `k3d-<CLUSTER_NAME>` as the current context.

#### Step 5: Access Traefik Dashboard

Forward the Traefik service to a local port for access:

```bash
kubectl port-forward -n kube-system "$(kubectl get pods -n kube-system | grep '^traefik-' | awk '{print $1}')" 9000:9000
```

You can access the Traefik dashboard [here](http://localhost:9000/dashboard/#/).
More about [[kubernetes-kubernetes-installing-a-local-cluster-taefik]]

#### Step 6: Access Kubernetes Control Panel

Proxy the Kubernetes control panel to your localhost:

```bash
kubectl proxy
```

Access the control panel at [127.0.0.1:8001](http://127.0.0.1:8001/).

#### Step 7: Check Namespaces and Services

To list all services in all namespaces, use:

```bash
kubectl get services --all-namespaces
```

### Overview of Services Up to This Point

| Namespace       | Service Name     | Type           | Cluster IP       | External IP(s)                     | Ports                           | Age |
|-----------------|------------------|----------------|------------------|------------------------------------|---------------------------------|------|
| `default`       | `kubernetes`     | `ClusterIP`    | `10.43.0.1`      | `<none>`                           | `443/TCP`                       | 23m  |
| `kube-system`   | `kube-dns`       | `ClusterIP`    | `10.43.0.10`     | `<none>`                           | `53/UDP`, `53/TCP`, `9153/TCP`  | 23m  |
| `kube-system`   | `metrics-server` | `ClusterIP`    | `10.43.15.178`   | `<none>`                           | `443/TCP`                       | 23m  |
| `kube-system`   | `traefik`        | `LoadBalancer` | `10.43.213.142`  | `172.19.0.2`, `172.19.0.3`, etc.  | `80:32422/TCP`, `443:30631/TCP` | 22m  |

* __ClusterIP Services__: Services like `kubernetes`, `kube-dns`, and `metrics-server` are limited to internal access, enabling core cluster operations like DNS resolution, API access, and metrics gathering.
* __LoadBalancer Service__: The `traefik` service uses a LoadBalancer, allowing external traffic on HTTP/HTTPS to reach the cluster, making services publicly accessible if needed.

#### K3D Kubernetes Dashboard Tutorial

This section guides you through setting up and accessing the Kubernetes Dashboard for your K3D cluster.

To deploy the Kubernetes Dashboard, follow the steps below:

Step 1. __Add the Kubernetes Dashboard Helm Repository__

```shell
helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/
```

Step 2. __Install the Kubernetes Dashboard__

Deploy the dashboard in the `kubernetes-dashboard` namespace:

```shell
helm upgrade --install kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard --create-namespace --namespace kubernetes-dashboard
```

Step 3. __Set Up Access Permissions__

Create and apply a `ServiceAccount` and `ClusterRoleBinding` for admin access:

* Copy the following YAML into a new file, such as `dashboard-adminuser.yaml`:

```yaml
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: admin-user
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
- kind: ServiceAccount
  name: admin-user
  namespace: kubernetes-dashboard


apiVersion: v1
kind: ServiceAccount
metadata:
  name: admin-user
  namespace: kubernetes-dashboard


apiVersion: v1
kind: Secret
metadata:
  name: admin-user
  namespace: kubernetes-dashboard
  annotations:
    kubernetes.io/service-account.name: "admin-user"
type: kubernetes.io/service-account-token
```

* Apply the file:

  ```shell
  kubectl apply -f dashboard-adminuser.yaml
  ```

Step 4. __Access the Dashboard__

* Retrieve the access token for the `admin-user` account:

```shell
kubectl get secret admin-user -n kubernetes-dashboard -o jsonpath={".data.token"} | base64 -d
```

* Go to the [Kubernetes Dashboard](https://localhost:8443/#/workloads?namespace=default) and enter the token when prompted for authentication.

> Note: You may need to set up port forwarding or use `kubectl proxy` to access the dashboard locally.

```bash
kubectl -n kubernetes-dashboard port-forward svc/kubernetes-dashboard-kong-proxy 8443:443
```

This configuration provides an accessible dashboard to monitor and manage workloads in your K3D cluster.

### Related projects

- [https://github.com/npujol/kaos](https://github.com/npujol/kaos) Follow k3d Readme Instructions.