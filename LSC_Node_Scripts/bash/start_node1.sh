#!/bin/sh
Message="Changing dir..."
NodesDirectory="$HOME/LocalSCNodes"
echo $Message
cd ../..
git checkout release/3.0.1.0-LSC
cd src/Stratis.LocalSmartContracts.NodeD
echo "Running standard node 1..."
echo "**Data held in $NodesDirectory/node1**"
dotnet run --no-build -datadir=$NodesDirectory/node1 -port=36202 -apiport=38202 -addnode=127.0.0.1:36201 -bind=127.0.0.1