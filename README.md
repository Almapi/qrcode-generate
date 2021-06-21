# QRCode generate project

This repository is to create automated QRCodes for all entries in the file list.txt.
The list.txt file needs the following syntax:
```bash
NAMEOFFILE;https://linkofqrcode.tld
```

## Prequisites

1. You need the command qrencode
   https://linux.die.net/man/1/qrencode
2. You need the command convert
   https://linux.die.net/man/1/convert
3. You need the command potrace
   https://linux.die.net/man/1/potrace

### Todos

1. Convert everything into docker
2. Install necessary tools in docker
3. Execute the script in docker
4. Copy the created files out of docker to the local system
   

