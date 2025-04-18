---
tags:
- roadmap
- kubernetes
- kubernetes-topics
- ready
- online
- variables
---

# kubernetes-topics-custom-controllers

- [Doc-Ref](https://github.com/kubernetes-sigs/kustomize)
## Contents

I'll help you understand the different approaches to handling variables in Kubernetes manifests using Kustomize.

Here's a comparative analysis of the main methods:

| Method | Syntax | Scope | Dynamic Updates | Built-in to Kustomize |
|--------|---------|--------|-----------------|---------------------|
| ConfigMapGenerator | `configMapGenerator` in kustomization.yaml | Namespace | Yes | Yes |
| SecretGenerator | `secretGenerator` in kustomization.yaml | Namespace | Yes | Yes |
| Vars | `vars` field in kustomization.yaml | Cross-resource references | No | Yes |
| Replacements | `replacements` in kustomization.yaml | Any field in any resource | Yes | Yes |
| Values/ValuesFrom | `.env` files or literals in kustomization.yaml | ConfigMaps and Secrets | Yes | Yes |
| Patches | Strategic merge or JSON patches | Any resource field | Yes | Yes |

## Characteristics and Trade-offss

ConfigMapGenerator:

- Best for application configuration
- Automatically handles updates and rolling deployments
- Limited to ConfigMap format
- Cannot handle sensitive data

SecretGenerator:

- Similar to ConfigMapGenerator but for sensitive data
- Built-in base64 encodings
- Supports multiple formats (files, literals, env files)
- Requires careful handling of secret values

Vars:

- Useful for cross-resource references
- Limited to specific fields (names, labels)
- Not as flexible as replacements
- Good for maintaining consistency

Replacements:

- Most flexible option
- Can modify any field in any resource
- More complex configuration
- Potential for errors if not carefully managed

Let's look at examples for each method:

## Best Practices and Tips

1. Use ConfigMapGenerator and SecretGenerator for most application configurations:
   - They provide automatic hash suffixes for updates
   - Handle format conversion automatically
   - Integrate well with Kubernetes native resources

2. Use Replacements for complex scenarios:
   - When you need to modify specific fields in resources
   - For cross-resource value propagation
   - When dealing with dynamic values

3. Use Vars sparingly:
   - Best for simple name references
   - When you need to ensure consistency across resources
   - For service discovery scenarios

4. Consider environment overlays:
   - Create base configurations
   - Use overlays for environment-specific values
   - Maintain clear separation of concerns

5. Security considerations:
   - Never commit secrets to version control
   - Use SecretGenerator with external secret sources
   - Consider using sealed secrets or external secret management solutions

```yaml
# 1. ConfigMapGenerator Example
# kustomization.yaml
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization

configMapGenerator:
- name: app-config
  literals:
  - DB_HOST=mysql.default.svc.cluster.local
  - DB_PORT=3306
  files:
  - configs/app.properties

---
# Deployment using ConfigMap
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-app
spec:
  template:
    spec:
      containers:
      - name: app
        envFrom:
        - configMapRef:
            name: app-config

# 2. SecretGenerator Example
# kustomization.yaml
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization

secretGenerator:
- name: app-secrets
  files:
  - secrets/api.key
  literals:
  - DB_PASSWORD=secretvalue

---
# Deployment using Secret
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-app
spec:
  template:
    spec:
      containers:
      - name: app
        envFrom:
        - secretRef:
            name: app-secrets

# 3. Vars Example
# kustomization.yaml
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization

vars:
- name: SERVICE_NAME
  objref:
    kind: Service
    name: my-service
    apiVersion: v1
  fieldref:
    fieldpath: metadata.name

---
# Service referenced by Vars
apiVersion: v1
kind: Service
metadata:
  name: my-service
spec:
  ports:
  - port: 8080

# 4. Replacements Example
# kustomization.yaml
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization

replacements:
- source:
    kind: ConfigMap
    name: env-config
    fieldPath: data.REPLICA_COUNT
  targets:
  - select:
      kind: Deployment
      name: my-app
    fieldPaths:
    - spec.replicas

---
# ConfigMap with replacement values
apiVersion: v1
kind: ConfigMap
metadata:
  name: env-config
data:
  REPLICA_COUNT: "3"

# 5. Values/ValuesFrom Example
# kustomization.yaml
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization

configMapGenerator:
- name: app-config
  behavior: merge
  envs:
  - configs/.env

---
# configs/.env
APP_PORT=8080
APP_NAME=myapp

# 6. Patches Example
# kustomization.yaml
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization

patches:
- patch: |-
    apiVersion: apps/v1
    kind: Deployment
    metadata:
      name: my-app
    spec:
      template:
        spec:
          containers:
          - name: app
            resources:
              requests:
                memory: "256Mi"
              limits:
                memory: "512Mi"
  target:
    kind: Deployment
    name: my-app

# Strategic merge patch
patchesStrategicMerge:
- |-
  apiVersion: apps/v1
  kind: Deployment
  metadata:
    name: my-app
  spec:
    replicas: 3
```

Here are the Kustomize best practices with simple explanations and practical examples:

1. Base and Overlays
   - What: Split your config into a base (common stuff) and overlays (environment-specific changes)
   - Example:
   ```yaml
   # Project structure
   base/
     kustomization.yaml    # Common config
     deployment.yaml
   overlays/
     dev/
       kustomization.yaml  # Dev-specific changes
     prod/
       kustomization.yaml  # Prod-specific changes
   ```

2. Unique Names
   - What: Add prefixes/suffixes to avoid name conflicts
   - Example:
   ```yaml
   # kustomization.yaml
   namePrefix: dev-
   nameSuffix: -v1
   resources:
   - deployment.yaml
   ```

3. Common Labels
   - What: Use consistent labels to organize resources
   - Example:
   ```yaml
   # kustomization.yaml
   commonLabels:
     app: myapp
     env: prod
     team: frontend
   ```

4. ConfigMap Generation
   - What: Generate ConfigMaps from files instead of writing them manually
   - Example:
   ```yaml
   # kustomization.yaml
   configMapGenerator:
   - name: app-config
     files:
     - config.properties
     - settings.json
   ```

5. Resource Management
   - What: Keep related resources together in folders
   - Example:
   ```yaml
   # Project structure
   base/
     frontend/
       deployment.yaml
       service.yaml
     backend/
       deployment.yaml
       service.yaml
   ```

6. Resource Limits
   - What: Always set CPU and memory limits
   - Example:
   ```yaml
   # deployment.yaml
   resources:
     limits:
       memory: "256Mi"
       cpu: "500m"
     requests:
       memory: "128Mi"
       cpu: "250m"
   ```

7. Image Management
   - What: Control image versions centrally
   - Example:
   ```yaml
   # kustomization.yaml
   images:
   - name: nginx
     newName: my-registry/nginx
     newTag: v1.2.3
   ```

8. Environment Variables
   - What: Use ConfigMaps for env vars instead of hardcoding
   - Example:
   ```yaml
   # deployment.yaml
   envFrom:
   - configMapRef:
       name: app-config
   ```

9. Patches

- What: Use patches to modify specific parts of resources
- Example:
```yaml
# kustomization.yaml
patchesStrategicMerge:
- update-memory.yaml  # Only changes memory settings
```

10. Documentation

- What: Add README files to explain your setup
- Example:
```markdown
# dev/README.md
This overlay contains development-specific settings:
- Lower resource limits
- Debug mode enabled
- Local database connection
```