#!/bin/bash
clear
echo "$(tput bold) GERANDO CHAVE PUBLICA NO USUARIO ROOT. Script By @MajinBoo $(tput sgr0)"

rm -rf /root/id_rsa 1>/dev/null 2>/dev/null 
rm -rf /root/id_rsa.pub 1>/dev/null 2>/dev/null 
rm -rf /root/.ssh 1>/dev/null 2>/dev/null 


mkdir /root/.ssh 1>/dev/null 2>/dev/null 

sleep 2
echo "$(tput bold) (¡¡¡Coloque Senha no Passphrase!!!!) $(tput sgr0)"
echo "$(tput bold) (!!!Recomendo Que Coloque Senha!!!) $(tput sgr0)"
sleep 2

ssh-keygen -t rsa -b 4096 -f id_rsa

cat /root/id_rsa.pub >> /root/.ssh/id_rsa.pub

cat /root/id_rsa >> /root/.ssh/id_rsa

cat /root/id_rsa.pub >> /root/.ssh/authorized_keys

chmod 700 /root/.ssh 1>/dev/null 2>/dev/null

chmod 600 /root/.ssh/authorized_keys 1>/dev/null 2>/dev/null

sleep 3

echo "$(tput bold) Chave Publica e Privada, Copie a Chave Abaixo e Use No Terminal Com Passphrase). $(tput sgr0)"
sleep 5

rm -rf /root/id_rsa 1>/dev/null 2>/dev/null 
rm -rf /root/id_rsa.pub 1>/dev/null 2>/dev/null 

cat /root/.ssh/id_rsa

 
sleep 4
echo "$(tput bold) Chave Gerada Com Sucesso. Script By @MajinBoo $(tput sgr0)"