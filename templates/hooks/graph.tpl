<script src="https://visjs.github.io/vis-network/standalone/umd/vis-network.min.js"></script>
<script>
    async function fetch_export() {
        const exported = await fetch("/-/export.json");
        return await exported.json();
    }

    fetch_export().then(exported => {

        const nodes = new vis.DataSet();
        const edges = new vis.DataSet();

        for (const [md, file] of Object.entries(exported.files)) {
            nodes.add({ id: file.url, label: file.url })
            edges.add(
                file.links.map(link => ({ from: file.url, to: link.resolvedRelTarget.contents }))
            )
        }


        const container = document.getElementById("graph");
        const data = {
            nodes: nodes,
            edges: edges,
        };
        const options = {
            nodes: {
                shape: "dot",
                scaling: {
                    min: 10,
                    max: 30,
                },
            },
            edges: {
                width: 0.15,
                color: { inherit: "from" },
                smooth: {
                    type: "continuous",
                },
            },
            physics: {
                stabilization: false,
                barnesHut: {
                    gravitationalConstant: -80000,
                    springConstant: 0.001,
                    springLength: 200,
                },
            },
            interaction: {
                tooltipDelay: 200,
                hideEdgesOnDrag: true,
            },
        };

        const network = new vis.Network(container, data, options);
        network.on("click", function (params) {
            if (params.nodes.length) {
                window.location.href = params.nodes[0]
            }
        });
    });
</script>

<style>
    #graph {
        height: 100vh;
    }
</style>