FROM ./

ENV PORT 5005

WORKDIR /app COPY ./ ./

CMD [“run”, “-p”, “5005:$PORT”, “-m”, “models”,"–credentials", “credentials.yml”, “–enable-api”, “–log-file”, “out.log”, “–endpoints”, “endpoints.yml”]

EXPOSE 5005


