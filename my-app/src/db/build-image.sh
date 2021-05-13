#!/bin/bash

docker build -t josejnra/my-app-db:1.0 .

docker push josejnra/my-app-db:1.0
