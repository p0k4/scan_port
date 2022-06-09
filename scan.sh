
#!/bin/bash
# Script para procurar portas abertas na rede.
clear
echo -n "rede?"
read rede
echo -n "porta?"
read porta

echo A executar scan de hosts na rede $rede com a porta $porta ...

nmap -sS -vv -p $porta $rede | grep "Discovered open port" | awk '{print 6}'

