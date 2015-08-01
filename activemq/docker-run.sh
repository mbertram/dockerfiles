#!/bin/bash

docker run --name=activemq -p=61616:61616 -p=8161:8161 -p=61613:61613 -p=1883:1883 -p=61614:61614 -d mbertram/activemq