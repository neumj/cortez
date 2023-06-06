FROM python:3.10.8

# Build MkDocs
WORKDIR /tmp
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
ENV PATH=$PATH:/root/.local/bin

# Run MkDocs
WORKDIR /docs
EXPOSE 8000

ENTRYPOINT [""]
CMD ["sh", "-c", "mkdocs serve --dev-addr=0.0.0.0:8000"]


