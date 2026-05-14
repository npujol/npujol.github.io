______________________________________________________________________

tags:

- roadmap
- kubernetes
- kubernetes-patterns
- ready
- online

______________________________________________________________________

# kubernetes-patterns-helm-charts

## Contents

\_\_Roadmap info from [ roadmap website ] (<https://roadmap.sh/kubernetes/deployment-patterns/helm-charts>) \_\_

## Helm Charts

Helm
is
a
Kubernetes
package
manager
that
simplifies
the
deployment
and
management
of
complex
applications
through
the
use
of
reusable
and
versioned
Helm
charts.These
charts
are
composed
of
YAML
files
that
describe
related
sets
of
Kubernetes
resources
and
can
be
customized
using
values
files
and
templating with Go templates. Helm charts can also have dependencies on other charts and be stored in a centralized repository like Helm Hub for easy sharing and access. By utilizing Helm, teams can streamline application management and reduce duplication of effort.

## Resources

- [@official@Helm Docs](https://helm.sh/docs/)
- [@video@What is Helm in Kubernetes? Helm and Helm Charts explained](https://www.youtube.com/watch?v=-ykwb1d0DXU)
- [@feed@Explore top posts about Helm](https://app.daily.dev/tags/helm?ref=roadmapsh)
- [Artifact Hub](https://artifacthub.io/)

## Examples

1. __Nginx Ingress Controller__

- Helm Chart for managing NGINX as an ingress controller for Kubernetes clusters.
- [Link to Chart](https://artifacthub.io/packages/helm/ingress-nginx/ingress-nginx)

1. __Prometheus__

- Helm Chart for deploying Prometheus to monitor Kubernetes clusters.
- [Link to Chart](https://artifacthub.io/packages/helm/prometheus-community/prometheus)

1. __Grafana__

- Helm Chart for deploying Grafana for visualizing data from various sources like Prometheus.
- [Link to Chart](https://artifacthub.io/packages/helm/grafana/grafana)

1. __MySQL__

- Helm Chart for deploying MySQL databases.
- [Link to Chart](https://artifacthub.io/packages/helm/bitnami/mysql)

1. __Elasticsearch__

- Helm Chart for deploying Elasticsearch, a distributed search and analytics engine.
- [Link to Chart](https://artifacthub.io/packages/helm/elastic/elasticsearch)

1. __Jenkins__

- Helm Chart for deploying Jenkins for automating software development processes.
- [Link to Chart](https://artifacthub.io/packages/helm/jenkinsci/jenkins)

1. __WordPress__

- Helm Chart for deploying WordPress websites.
- [Link to Chart](https://artifacthub.io/packages/helm/bitnami/wordpress)

1. __Redis__

- Helm Chart for deploying Redis, an in-memory data structure store.
- [Link to Chart](https://artifacthub.io/packages/helm/bitnami/redis)
