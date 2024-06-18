#!/bin/bash

# Instalar a extensão mysqli do PHP
docker-php-ext-install mysqli

# Copiar o arquivo de configuração do Apache para o diretório correto (já mapeado via volumes)
# Ativar o novo site
a2ensite softTech.conf

# Desativar o site padrão
a2dissite 000-default.conf

# Reiniciar o Apache para aplicar as mudanças
service apache2 restart

# Manter o container rodando
sleep infinity
