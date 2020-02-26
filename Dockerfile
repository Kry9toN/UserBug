# We're using Arch Linux
FROM anggarsx/arch:bleeding

#
# Clone repo and prepare working directory
#
RUN git clone -b ngebug https://github.com/Kry9toN/Userbug /root/userbot
RUN mkdir /root/userbot/bin/
RUN chmod 777 /root/userbot/
RUN chmod 777 /root/userbot/bin/
WORKDIR /root/userbot/

#
# Copies session and config (if it exists)
#
COPY ./sample_config.env ./userbot.session* ./config.env* /root/userbot/

CMD ["python3","-m","userbot"]
