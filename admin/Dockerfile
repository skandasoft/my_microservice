FROM alpine:latest
RUN apk update
RUN apk --no-cache add nodejs
RUN mkdir -p /usr/src
WORKDIR /usr/src
COPY cron.js /usr/src/
COPY cron0.js /usr/src/
# Add crontab file in the cron directory
# COPY ./admin/crontab /etc/cron.d/admin-cron
#
# # Give execution rights on the cron job
# RUN chmod 0644 /etc/cron.d/admin-cron
#  
# Create the log file to be able to run tail
RUN touch /var/log/cron.log
#  
# # Run the command on container startup
# CMD crond && tail -f /var/log/cron.log

RUN touch crontab.tmp \

    && echo '* * * * * node /usr/src/cron.js >> /var/log/cron.log 2>&1' > crontab.tmp \

    && echo '* * * * * node /usr/src/cron0.js >> /var/log/cron.log 2>&1' >> crontab.tmp \

    && crontab crontab.tmp \
    && rm -rf crontab.tmp

CMD ["crond", "-f"]
