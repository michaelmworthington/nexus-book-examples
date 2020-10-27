rm -rf AWS-1.0
rm -rf VMWare-1.0
rm -rf VMWare-1.1

echo ""
echo ""
echo ""
echo "####################################################################################"
echo "                    Installing AWS 1.0"
echo "####################################################################################"
echo ""
echo ""
echo ""

mkdir AWS-1.0
cd AWS-1.0
nuget install -verbosity detailed -nocache -source http://localhost:8082/nexus/service/local/nuget/nuget-public/ -version 1.0 AWSImages
cd ..

echo ""
echo ""
echo ""
echo "####################################################################################"
echo "                    Installing VMWare 1.0"
echo "####################################################################################"
echo ""
echo ""
echo ""

mkdir VMWare-1.0
cd VMWare-1.0
nuget install -verbosity detailed -nocache -source http://localhost:8082/nexus/service/local/nuget/nuget-public/ -version 1.0 VMWareImages
cd ..

#echo ""
#echo ""
#echo ""
#echo "####################################################################################"
#echo "                    Installing VMWare 1.1"
#echo "####################################################################################"
#echo ""
#echo ""
#echo ""

#mkdir VMWare-1.1
#cd VMWare-1.1
#nuget install -verbosity detailed -nocache -source http://localhost:8082/nexus/service/local/nuget/nuget-public/ -version 1.1 VMWareImages
#cd ..
