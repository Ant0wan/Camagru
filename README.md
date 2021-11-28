<!-- TITLE -->
<br />
<div align="center">
  <img src="logo.png" alt="Logo" width="80" height="80">
  <h1 align="center">Camagru</h3>
  <p align="center">
    A web application for sharing pictures.
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>


This project is also a dependeny of Inception Of Things - part3. V1 and V2 are specials used by Inception-Of-Things. They aimed at being deployed by ArgoCD.

### Stack

Element    |  Stack
---        | ---
App        | Vanilla HTML, CSS, JavaScript
Server     | Rust
Cluster    | K3d
CD         | ArgoCD
CI         | Gitlab

### Tools

icons: https://www.flaticon.com/
photoshop online: https://www.photopea.com/


### Screenshot
<div align="left"><img src="miniature.png" alt="miniature" width="500" height="500"></div>


### Insane Micro-Service Architecture

```shell

	 ---------           ----------
	| Stories | ----- > | Homepage |
	 ---------           ----------
                                ^
	 -------                |
	| Posts | ---------------
	 -------

	etc.. for each nav/page elements
```
