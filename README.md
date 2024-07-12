# My Nearest Neighbours

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

## Objectives

- To explore and demonstrate the integration of MQTT with distributed system
  architecture.
- To utilize Kubernetes for managing a scalable cluster of broker and client
  services.
- To develop proficiency in Go for network programming and Kubernetes for
  orchestration and deployment.

## Highlights

- **Multiple MQTT Brokers**: Brokers are interconnected, allowing messages to be
  synchronized across the entire network.
- **Client Nodes**: Nodes are implemented in Golang and handle random walks and
  proximity calculations dynamically.
- **Scalability**: Leveraging Kubernetes, the system can efficiently scale up to
  handle numerous client nodes, demonstrating the handling of increased network
  traffic and computational demands.
- **Interactive UI**: Each client node implements a terminal-based user
  interface for displaying real-time updates of node positions and interactions.
