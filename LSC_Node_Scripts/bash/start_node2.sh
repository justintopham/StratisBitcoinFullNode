#!/bin/sh
Message="Changing dir..."
NodesDirectory="$HOME/LocalSCNodes"
echo $Message
cd ../..
git checkout release/3.0.1.0-LSC
cd src/Stratis.LocalSmartContracts.NodeD
echo "Running standard node 2..."
echo "**Data held in $NodesDirectory/node2**"
dotnet run --no-build -datadir=$NodesDirectory/node2 -port=36203 -apiport=38203 -addnode=127.0.0.1:36201 -bind=127.0.0.1