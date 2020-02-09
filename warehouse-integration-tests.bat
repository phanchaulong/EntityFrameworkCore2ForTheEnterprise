cls
set initialPath=%cd%
set rothschildHouseISPath=%cd%\Resources\RothschildHouse\RothschildHouse.IdentityServer
set rothschildHousePath=%cd%\Resources\RothschildHouse\RothschildHouse
set onlineStoreISPath=%cd%\Source\Backend\OnlineStore\OnlineStore.API.Identity
set srcPath=%cd%\Source\Backend\OnlineStore\OnlineStore.API.Warehouse
set testPath=%cd%\Source\Backend\OnlineStore\OnlineStore.API.Warehouse.IntegrationTests
cd %rothschildHouseISPath%
start dotnet run
cd %rothschildHousePath%
start dotnet run
cd %onlineStoreISPath%
start dotnet run
cd %srcPath%
dotnet build
cd %testPath%
dotnet test
cd %initialPath%
pause
