FROM cscfi/shibboleth-idp

ENV IDP_HOME=/opt/shibboleth-idp

MAINTAINER sami.silen@csc.fi

ADD customized-shibboleth-idp/ /opt/shibboleth-idp/

RUN chown -R root:root $IDP_HOME \
    && chmod -R 550 $IDP_HOME \
    && chmod -R 775 $IDP_HOME/metadata

