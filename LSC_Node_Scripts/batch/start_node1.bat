@ECHO OFF 
set Message=Changing dir...
set NodesDirectory=%HOME%\LocalSCNodes
@ECHO ON
echo %Message%
@ECHO OFF 
cd ..\..
git checkout release/3.0.1.0-LSC
cd src\Stratis.LocalSmartContracts.NodeD
@ECHO ON
echo Running standard node 1...
echo **Data held in %NodesDirectory%\node1**
dotnet run -datadir=%NodesDirectory%\node1 -port=36202 -apiport=38202 -addnode=127.0.0.1:36201 -bind=127.0.0.1