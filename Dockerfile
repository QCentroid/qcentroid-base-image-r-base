FROM python:3.12-slim
ENV PIP_ROOT_USER_ACTION=ignore
ENV SOLVER_PROGRAMMING_LANGUAGE=r
RUN apt-get clean -q && apt-get update -q && apt-get install -y -q libc-bin libcurl4-openssl-dev libgomp1 r-base r-base-dev && apt-get clean -q && rm -rf /var/lib/apt/lists/*
WORKDIR /problem
