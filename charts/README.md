# Charts

This repository publishes its first-party Helm charts to GitHub Container Registry as OCI artifacts.

The publish workflow lives at [.github/workflows/publish-charts.yaml](/Users/zhoro/dev/cluster/.github/workflows/publish-charts.yaml). On pushes to `main`, it:

- selects the changed chart directories under `charts/*`
- packages those charts with Helm
- pushes them to `ghcr.io/gd-arnold/cluster/charts/<chart-name>:<chart-version>`

Manual `workflow_dispatch` runs publish every chart under `charts/*`.

To publish a new chart artifact, bump `version` in `Chart.yaml`. If that version already exists in GHCR, the workflow skips it.

Example references for this repository:

- `oci://ghcr.io/gd-arnold/cluster/charts/blog`
- `oci://ghcr.io/gd-arnold/cluster/charts/gateway-service`

Example commands:

```sh
helm registry login ghcr.io -u <github-user>
helm pull oci://ghcr.io/gd-arnold/cluster/charts/blog --version 0.1.0
helm install blog oci://ghcr.io/gd-arnold/cluster/charts/blog --version 0.1.0
```

GitHub's container registry creates new packages as private by default. If these charts should be installable without authentication, set each GHCR package to public after the first publish.
