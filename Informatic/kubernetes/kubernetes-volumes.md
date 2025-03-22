---
tags:
- roadmap
- Informatic
- kubernetes
- ready
- online
- volumes
- storage
- kubernetes-volumes
---

# kubernetes-volumes

## Contents

- [[kubernetes-volumes-stateful-applications]]
- [[kubernetes-volumes-csi-drivers]]

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/volumes)__

## Storage and Volumes

Volumes provide directories accessible to containers running in a pod and can be backed by various storage types. Persistent volumes are independent of pods and can be reused by multiple pods, while persistent volume claims request specific amounts of storage from persistent volumes. Storage classes allow administrators to define different storage types that can be dynamically provisioned.

## Resources

- [officialStorage Documentation](https://kubernetes.io/docs/concepts/storage/)
- [officialPersistent Volumes Documentation](https://kubernetes.io/docs/concepts/storage/persistent-volumes/)
- [videoThe basics of stateful applications in Kubernetes](https://www.youtube.com/watch?v=GieXzb91I40)
- [feedExplore top posts about Storage](https://app.daily.dev/tags/storage?ref=roadmapsh)
- https://kubebyexample.com/learning-paths/kubernetes-fundamentals/what-volume


## Kubernetes Shared Volume Options Comparison

| Storage Solution | Access Mode | Cloud/On-Prem | Performance | Data Persistence | Setup Complexity | Use Cases |
|------------------|-------------|---------------|-------------|------------------|-----------------|-----------|
| NFS (Network File System) | ReadWriteMany | Both | Medium | Yes | Medium | General file sharing, legacy applications |
| AWS EFS | ReadWriteMany | AWS | Medium | Yes | Low (on AWS) | AWS workloads requiring shared access |
| Azure Files | ReadWriteMany | Azure | Medium | Yes | Low (on Azure) | Azure workloads requiring shared access |
| GCP Filestore | ReadWriteMany | GCP | Medium | Yes | Low (on GCP) | GCP workloads requiring shared access |
| Rook/Ceph | ReadWriteMany, ReadWriteOnce | Both | High | Yes | High | Production workloads with high performance needs |
| Longhorn | ReadWriteMany, ReadWriteOnce | Both | Medium-High | Yes | Medium | Kubernetes-native storage solution |
| OpenEBS | ReadWriteMany, ReadWriteOnce | Both | Medium | Yes | Medium | Kubernetes-native storage for various workloads |
| HostPath with node affinity | ReadWriteOnce (per node) | On-Prem | High | Limited (node-bound) | Low | Development, testing (NOT for production) |
| emptyDir with data sync | N/A (pod-local) | Both | High | No (ephemeral) | Low | Temporary file sharing, data processing |
| Persistent Volume Claims + init containers | ReadWriteOnce | Both | Storage-dependent | Yes | Medium | Read-heavy workloads where data can be copied |
| StorageOS | ReadWriteMany, ReadWriteOnce | Both | High | Yes | Medium-High | Containerized stateful applications |
| Portworx | ReadWriteMany, ReadWriteOnce | Both | High | Yes | Medium-High | Mission-critical stateful workloads |
| GlusterFS | ReadWriteMany | Both | Medium | Yes | High | Large-scale distributed file system needs |

## Key Characteristics

### Access Modes
- **ReadWriteOnce (RWO)**: Volume can be mounted as read-write by a single node
- **ReadWriteMany (RWX)**: Volume can be mounted as read-write by many nodes
- **ReadOnlyMany (ROX)**: Volume can be mounted as read-only by many nodes

### Performance Considerations
- **Network Latency**: Network-based solutions (NFS, cloud file systems) add latency
- **Caching**: Some solutions offer caching to improve performance
- **Throughput vs. IOPS**: Different workloads need different performance profiles

### Data Safety
- **Replication**: How data is protected against node failures
- **Backup Integration**: Ease of backing up the shared data
- **Disaster Recovery**: Geographic redundancy options

### Management Overhead
- **Maintenance**: Required ongoing maintenance
- **Monitoring**: Available metrics and monitoring tools
- **Scaling**: Ability to grow with your application needs
