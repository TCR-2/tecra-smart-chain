# Tecra smart chain

TCR2 chain is based on Ethereum public-permissioned solutions such as Clique and Aura. It's part of Tecra tokenization platform (app.tecra.space) 
that allows project Creators to enlist their project tokens and collect funds from Investors who can support project ideas. 
Solution based on blockchain technology ensures trust and transparency. Next step in the development process will be launching a custom decentralised exchange and extending Creators’ business possibilities. 
Project tokens will be tradable on Tecra DEX using liquidity pool model.

This repository contains container based configuration and genesis file to run node in livenet network.

### Network parameters: 
  |    |     |
  |----|-----|
  |symbol|TCR|
  |networkId   | 20531812  |
  |explorer   |  https://explorer.tecra.space |
  |block time   | 10s  |
  |validators  | 7  |
  
### Running docker based node:

Before starting the node install docker/docker-compose and adjust files in enode-keys and keystore folders with your settings.
Then run command:
> docker-compose up -d
