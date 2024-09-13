# DNA Dot Plot Alignment Visualization
<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->

<!-- PROJECT LOGO -->
<br />
<div align="center">

<h3 align="center">Dot Plot Alignment</h3>

  <p align="center">
    Department of Bioinformatics, IBB, University of Tehran
    <br />
  </p>
</div>


<div align="center">
  <img src="Logo.png" alt="Alt text">
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#Overview">Overview</a>
    </li>
    <li><a href="#Methods">Methods Implemented</a></li>
    <li><a href="#Requirements">Requirements</a></li>
    <li><a href="#Usage">Usage</a></li>
    <li><a href="#Comparison_with_dotPlot_Function">Comparison with dotPlot Function</a></li>
    <li><a href="#Examples">Examples</a></li>
    <li><a href="#Contributing">Contributing</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
# DNA Dot Plot Alignment Visualization Implementations in R

## Overview
This repository implements a Dot Plot to visualize the alignment between two DNA strings. The plot shows matching regions between the two DNA sequences, providing a graphical representation of their alignment. The implementation here is inspired by the dotPlot function from the seqinr package in R, but the code is provided separately for you to compare and visualize DNA sequence alignments.
## Methods Implemented
This implementation allows you to:
1. Align two DNA strings.
2. Generate a dot plot visualization.
3.Compare the output with the R dotPlot function for validation.

## Requirements
<ul>
  <li>R version >= 4.0</li>
  <li>The seqinr package to run the comparison tests in R.</li>
</ul>

```bash
install.packages("seqinr")
```
<h2 id='Usage'>Usage</h2>

**1. Clone the repository:**
  ```bash
  git clone https://github.com/yourusername/dna-dotplot-alignment.git
cd dna-dotplot-alignment
```
**2. Run the Dot Plot implementation:**
Open main.R or DotPlotFunc.R in your preferred R environment (e.g., RStudio).<br>
To visualize the alignment between two DNA strings, you can use the function defined in the file:
```bash
  # Example usage
seq1 <- "AGCTAGC"
seq2 <- "CGCTAGT"
plot_dotplot(seq1, seq2)
```
<br>

**3. Compare with dotPlot function:**
You can also compare your dot plot output with the built-in dotPlot function from the seqinr package:
  ```bash
  library(seqinr)
dotPlot(seq1, seq2)
```
  
<h2 id="Comparison_with_dotPlot_Function">Comparison with dotPlot Function</h2>
This implementation is designed to be compared against the R dotPlot function from the seqinr package. The main difference is that this code allows more customization and flexibility, which can be particularly useful in research settings.

## Running the Comparison
You can run both your implementation and the seqinr::dotPlot function on the same sequences and visually compare the outputs. This helps to ensure that the method is correctly implemented.

### Examples
Here are some examples of aligning two DNA strings:<br>

**Example 1:**<br>
Sequence 1: AGCTAGC<br>
Sequence 2: CGCTAGT<br>
The resulting dot plot would visualize the alignment of matching bases between these sequences.<br>

**Example 2:**<br>
Sequence 1: ATGCATGC<br>
Sequence 2: TGCATGCA<br>
The resulting dot plot shows matching regions that can help identify conserved sections of the sequences.
## Contributing
Contributions are welcome! Please feel free to submit a Pull Request or open an issue to discuss any changes, features, or bug fixes.
<ol>
  <li>Fork the repository.</li>
  <li>Create a branch: git checkout -b feature-branch.</li>
  <li>Submit a pull request.
</li>
</ol>
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

vafaeeshaarbaf@gmail.com


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

Department of Bioinformatics, IBB, University of Tehran

<p align="right">(<a href="#readme-top">back to top</a>)</p>





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo_name.svg?style=for-the-badge
[contributors-url]: https://github.com/github_username/repo_name/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo_name.svg?style=for-the-badge
[forks-url]: https://github.com/github_username/repo_name/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo_name.svg?style=for-the-badge
[stars-url]: https://github.com/github_username/repo_name/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo_name.svg?style=for-the-badge
[issues-url]: https://github.com/github_username/repo_name/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo_name.svg?style=for-the-badge
[license-url]: https://github.com/github_username/repo_name/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/linkedin_username
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com
