FROM ghcr.io/minhuw/base-dev:latest

# Install full TeXLive distribution and additional tools
RUN apt-get update && apt-get install -y \
    texlive-full \
    latexmk \
    biber \
    # PDF and image manipulation tools
    poppler-utils \
    qpdf \
    imagemagick \
    inkscape \
    ghostscript \
    # Python tools for LaTeX (pygments for minted, matplotlib for plots)
    python3-pygments \
    python3-matplotlib \
    python3-numpy \
    # Spell checking
    aspell \
    aspell-en \
    hunspell \
    hunspell-en-us \
    # Scientific plotting and data tools
    gnuplot \
    # Document conversion
    pandoc \
    # Additional fonts
    fonts-liberation \
    fonts-dejavu \
    fonts-noto \
    # Version control and utilities (if not in base)
    git \
    make \
    curl \
    wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set up LaTeX environment
ENV PATH="/usr/local/texlive/bin:${PATH}"
