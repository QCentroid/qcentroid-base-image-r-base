FROM python:3.12-slim
ENV PIP_ROOT_USER_ACTION=ignore
ENV SOLVER_PROGRAMMING_LANGUAGE=r
RUN apt-get clean && apt-get update && apt-get install -y libc-bin libcurl4-openssl-dev libgomp1 r-base r-base-dev && apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR /problem