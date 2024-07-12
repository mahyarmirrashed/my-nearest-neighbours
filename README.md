# My Nearest Neighbour

## Project Overview

This project implements a distributed MQTT-based messaging system. Nodes on the
network broadcast their positions and simultaneously list their nearest
neighbours. It explores the capabilities of MQTT, Golang, and Kubernetes in a
cohesive, distributed environment.

Briefly, the system features multiple MQTT brokers and client nodes. MQTT
brokers are bridged together to relay messages between them. The system features
multiple MQTT brokers and client nodes. Client nodes perform a "random walk" and
communicate their positions within a simulated network environment.
Simultaneously, client nodes receive position updates from other network nodes
and, calculate and display their proximity to their nearest neighbours.

This setup is intended to showcase distributed systems concepts, network
communications, and real-time data handling.
