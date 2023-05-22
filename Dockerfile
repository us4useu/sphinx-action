FROM sphinxdoc/sphinx:4.3.2

LABEL "maintainer"="us4us Ltd <dev@us4us.eu>"

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
