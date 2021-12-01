2. Zbudować obraz i nazwać go lab4docker

docker build -t lab4docker .

3.   Utworzyć   volumen   o   nazwie  RemoteVol  wykorzystujący   odpowiedni   sterownik   (plugin),   by
miejsce przechowywania danych znajdowało się na systemie macierzystym:
a. dla studentów, których macierzystym systemem jest Linux – katalog udostępniany poprzez NFS
(v3 lub v4 – do wyboru)


docker service create -d name nfs-service mount 'type=volume,source=RemoteVol,target=/app,volume-driver=local,volume-opt=type=nfs,volume-opt=device=:/var/lib/docker/volumes,volume-opt=o=addr=10.0.2.15' nginx:latest

4. Uruchomić kontener o nazwie alpine4 na bazie zbudowanego obrazu lab5docker w taki sposób,
by:
a. podłączyć do niego utworzony wolumen RemoteVol w miejsce katalogu /logi w systemie plików
kontenera. 
a. korzystając z informacji w podpunkcie E, dla tego kontenera ograniczyć ilość  wykorzystywanej
pamięci RAM do 512MB.

docker run -d --mount source=RemoteVol,target=/logi --memory=512m --name alpine4 lab4docker