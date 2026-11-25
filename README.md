<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset=".github/brand/brainlife-mark-on-dark.svg">
    <img src=".github/brand/brainlife-mark-on-light.svg" alt="brainlife.io" width="140">
  </picture>
</p>

<h1 align="center">ui-conn</h1>

<p align="center">
  CONN functional connectivity toolbox for brainlife.io datasets.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-legacy-lightgrey.svg" alt="Status: legacy">
  <a href="https://brainlife.io"><img src="https://img.shields.io/badge/brainlife.io-site-3b9fd0.svg" alt="brainlife.io"></a>
  <a href="https://brainlife.io/docs"><img src="https://img.shields.io/badge/Docs-brainlife.io%2Fdocs-005981.svg" alt="Documentation"></a>
  <a href="https://doi.org/10.1038/s41592-024-02237-2"><img src="https://img.shields.io/badge/DOI-10.1038%2Fs41592--024--02237--2-e57536.svg" alt="Nature Methods paper"></a>
</p>

> [!WARNING]
> **Legacy / not maintained.** This viewer is no longer offered for any datatype on brainlife.io (checked 2026-11). For volumes and tracts use [ui-niivue](https://github.com/brainlife/ui-niivue); for tracts also [ui-tractview](https://github.com/brainlife/ui-tractview).

## 🧠 At a glance

| | |
|---|---|
| 🧭 **What** | Docker container that runs [CONN functional connectivity toolbox](https://web.conn-toolbox.org/) on a virtual desktop; brainlife.io starts it with [abcd-novnc](https://github.com/brainlife/abcd-novnc) and streams it to the browser |
| 🗂️ **Datatypes** | Not assigned to any datatype on brainlife.io (checked 2026-11) |
| 🕰️ **Last change** | 2017-12-20 |

## ⚙️ How brainlife.io runs it

When a user opens a dataset with this viewer, [abcd-novnc](https://github.com/brainlife/abcd-novnc) (itself an ABCD App run by amaretti) pulls the container, starts it with the dataset mounted (path in `INPUT_DIR`), sets a one-time VNC password (`X11VNC_PASSWORD`) and proxies the VNC session to the browser through noVNC. GPU viewers use VirtualGL.

## 💻 Build and try it

```bash
git clone https://github.com/brainlife/ui-conn && cd ui-conn
./build.sh                          # docker build (see the script for the image name)
```
Run the image with Docker, mounting a dataset as input, and connect a VNC client to port 5900.

## 📝 Notes

Opens `/input/output.mat`.

## 🔗 Related

[ui-niivue](https://github.com/brainlife/ui-niivue) (current in-browser viewer) · [abcd-novnc](https://github.com/brainlife/abcd-novnc) (desktop viewer launcher) · [warehouse-next](https://github.com/brainlife/warehouse-next) (datatypes and their viewers)

## 📚 Citing

If you use brainlife.io in your work, please cite:

> Hayashi S, Caron BA, Heinsfeld AS, et al. brainlife.io: a decentralized and open-source cloud platform to support neuroscience research. *Nature Methods* 21:809–813 (2024). [doi:10.1038/s41592-024-02237-2](https://doi.org/10.1038/s41592-024-02237-2)

## 🤝 Contributing

Issues and pull requests are welcome in this repository. For help using brainlife.io, see the [documentation](https://brainlife.io/docs).

## ⚖️ License

This repository does not include a license file yet.

<p align="center"><sub>brainlife.io · Brain data across scales. One place to analyze, share and publish it. · The University of Texas at Austin</sub></p>
