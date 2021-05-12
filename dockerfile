FROM cypress/base:10
RUN chgrp -R 0 /run && chmod -R g=u /run
RUN npm install --save-dev cypress
RUN $(npm bin)/cypress verify
RUN $(npm bin)/cypress run
