#!/bin/bash
# SDK Man replaced GVM. Using for Groovy, Gradle, and Maven Version Management
#export SDKMAN_DIR="$HOME/.sdkman"
#[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
#yes | sdk install java 8.0.252.j9-adpt

export JVM_ARGS="-Dnashorn.args=--no-deprecation-warning"

home="/home/gustavo/1.12.2"

# vai para a raiz do usuario e entra na r
cd
cd 1.12.2

# pega pid do antigo processo java
old_java=$(pgrep -f 1.12.2)
if [ ${#old_java} -ge 3 ]
then
	echo "Processo anterior com id: $old_java"
	# mata processo antigo
	kill -9 $old_java
	echo "Matando processo de id: $old_java"
else
	echo "Iniciando Novo Servidor! Aguarde..."
fi

#$home/ngrok authtoken 1cMj54TxX3DSjHuDsuvZY2Av73v_79eZpYVvscMVSc7xC15YX
#nohup $home/ngrok tcp --region=us 25565 &

#echo ""
#ip=$(curl --silent http://127.0.0.1:4040/api/tunnels | jq '.tunnels[0].public_url')
#echo "IP DO SERVIDOR: $ip"
#echo ""
java -Xmx1024m -Xms1024m -jar forge-1.12.2-14.23.5.2855.jar nogui &


