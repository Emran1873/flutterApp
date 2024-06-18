FROM gitpod/workspace-full

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git -b stable --depth 1
ENV PATH="$PATH:/flutter/bin"

# Enable Flutter web
RUN flutter channel stable
RUN flutter upgrade
RUN flutter config --enable-web
