# Use Gitpod's full workspace image as the base image
FROM gitpod/workspace-full

# Install dependencies
RUN sudo apt-get update && sudo apt-get install -y lib32stdc++6 libglu1-mesa

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git -b stable --depth 1
ENV PATH="/flutter/bin:/flutter/bin/cache/dart-sdk/bin:$PATH"

# Pre-download development binaries
RUN flutter precache

# Enable Flutter web
RUN flutter channel stable
RUN flutter upgrade
RUN flutter config --enable-web
