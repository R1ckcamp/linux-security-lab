#!/bin/bash

echo "Atualizando sistema..."
sudo apt update && sudo apt upgrade -y

echo "Instalando firewall UFW..."
sudo apt install ufw -y

echo "Liberando SSH..."
sudo ufw allow ssh

echo "Ativando firewall..."
sudo ufw enable

echo "Instalando Fail2Ban..."
sudo apt install fail2ban -y

echo "Ativando Fail2Ban..."
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

echo "Hardening básico concluído."
