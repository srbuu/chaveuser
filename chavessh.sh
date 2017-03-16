#!/bin/bash
clear
echo ""
echo "$(tput bold) GERANDO CHAVE PUBLICA NA SSH. Script By @MajinBoo $(tput sgr0)"
echo "" 
 
echo "Qual o nome do usuario ?"
read nome

userdel $nome 1>/dev/null 2>/dev/null 
 
rm -rf /var/spool/mail/$nome 1>/dev/null 2>/dev/null 
rm -rf /home/$nome 1>/dev/null 2>/dev/null 
 

useradd $nome 
 
passwd $nome 
 
rm -rf /root/id_rsa 1>/dev/null 2>/dev/null 
rm -rf /root/id_rsa.pub 1>/dev/null 2>/dev/null 

mkdir /home/$nome 1>/dev/null 2>/dev/null 
mkdir /home/$nome/.ssh 1>/dev/null 2>/dev/null 

sleep 2
echo "$(tput bold) (¡¡¡Nao Coloque Senha no Passphrase!!!!) $(tput sgr0)"
echo "$(tput bold) (Apenas De Dois Enter No Proximo Passo) $(tput sgr0)"
sleep 2

ssh-keygen -t rsa -b 2048 -f id_rsa

 
cat /root/id_rsa.pub >> /home/$nome/.ssh/id_rsa.pub

cat /root/id_rsa >> /home/$nome/.ssh/id_rsa

cat /root/id_rsa.pub >> /home/$nome/.ssh/authorized_keys

chmod 700 /home/$nome/.ssh 1>/dev/null 2>/dev/null

chmod 600 /home/$nome/.ssh/authorized_keys 1>/dev/null 2>/dev/null

chown -R $nome:$nome /home/$nome/.ssh 1>/dev/null 2>/dev/null

sleep 3
 
echo "$(tput bold) (Copie a Chave Abaixo e Cole No Http Injector ou KPN Em  $(tput sgr0)"
echo "$(tput bold) Chave Publica e Usem Sem a Necessidade de Senha SSH). $(tput sgr0)"
sleep 5

rm -rf /root/id_rsa 1>/dev/null 2>/dev/null 
rm -rf /root/id_rsa.pub 1>/dev/null 2>/dev/null 

cat /home/$nome/.ssh/id_rsa

 
sleep 4
echo "$(tput bold) Chave Gerada Com Sucesso. Script By @MajinBoo $(tput sgr0)"