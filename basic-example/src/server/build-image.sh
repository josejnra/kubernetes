#!/bin/bash

docker build -t josejnra/my-app:1.2.1 .

docker push josejnra/my-app:1.2.1
