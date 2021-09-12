# Precompiled Julia environment for Google Colaboratory 

<a href="https://colab.research.google.com/github/shivak/julia-colab/blob/master/notebook.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>
</a>

Installing Julia, and a basic handful of machine learning packages, takes 20 minutes in Colab (and other REPL environments). <a href="notebook.ipynb">This notebook</a> loads precompiled binaries and cuts
the installation time to ~30 seconds. Just hit "Open in Colab" above, run the initialization cell, and start working.

This downloads a Julia binary (from julia.org) and a working .julia "depot" directory (from this repo). Then, it installs IJulia for use in the notebook. The depot directory is tarballed with <a href="compile.sh">compile.sh</a>. 
Ideally, we'd use PackageCompiler to produce a sysimage; unfortunately, as of this writing, this does not successfully copy over artifacts / JLLs. This notebook is not meant to be a long-term solution - just something to get you up and running on Colab.