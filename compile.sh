JULIA_VERSION="1.7.0-beta4"
PACKAGES='["IJulia", "BenchmarkTools", "Plots", "OrdinaryDiffEq", "DiffEqSensitivity", "Flux", "Zygote", "Distributions", "Statistics", "MLDatasets", "Parameters"]'

if [ -z `which julia` ]; then
  echo "Installing Julia..."
  JULIA_VER=`cut -d '.' -f -2 <<< "$JULIA_VERSION"`
  BASE_URL="https://julialang-s3.julialang.org/bin/linux/x64"
  URL="$BASE_URL/$JULIA_VER/julia-$JULIA_VERSION-linux-x86_64.tar.gz"
  curl $URL | tar -xf - -C /usr/local --strip-components 1
fi

echo "Adding packages..."
julia -e "using Pkg; Pkg.add($PACKAGES)"

echo "Making tarballs..."
tar --use-compress-program xz -cf - ~/.julia | split --bytes 95M --numeric-suffix - $JULIA_VERSION.tar.xz.

echo "Done!"