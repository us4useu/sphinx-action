FROM sphinxdoc/sphinx:4.3.2

LABEL "maintainer"="us4us Ltd <dev@us4us.eu>"

RUN apt-get update \
 && apt-get install -yq --no-install-recommends \
    git

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
