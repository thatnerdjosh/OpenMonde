FROM mono

ENV DOTNET_CLI_TELEMETRY_OPTOUT true

# Ref: https://docs.microsoft.com/en-us/dotnet/core/install/linux-debian
RUN curl https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -o packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    rm packages-microsoft-prod.deb && \
    apt-get -y update && \
    apt-get -y install apt-transport-https && \
    apt-get -y update && \
    apt-get -y install dotnet-sdk-5.0

RUN apt-get -y install make
