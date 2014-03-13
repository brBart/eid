#!/bin/bash

# Loo fail server.key 

openssl genrsa -out server.key 1024

# Loo edaspidiseks signeerimiseks m�eldud fail server.csr, vastates mitmetele k�simustele:

openssl req -new -key server.key -out server.csr

# Loo katsetamiseks ise signeeritud fail server.crt. 
# Seda ei pea veebiserver usaldusv��rseks sertifikaadiks ning n�uab kasutajalt erikinnitust, 
# et ta on ikka n�us selle sertifikaadiga saidile minema.
# Taoline kinnituse k�simine ei ole muidugi aktsepteeritav avalikult kasutuses veebilehel, 
# k�ll on ta aga OK katsetamiseks:

openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt

# Ametliku ja usaldusv��rse server.crt faili saad ise signeerimise asemel AS Sertifitseerimiskeskusest
# tellides: mine lehele http://sk.ee/teenused/veebiserveri-sertifikaadid . 
# Selliselt tellitud sertifikaadifaili korral ei anna brauser enam mingeid hoiatusi.

# Hangi AS Sertifitseerimiskeskusest kesksed sertifikaadid, vt ka https://sk.ee/repositoorium/sk-sertifikaadid/

wget http://sk.ee/upload/files/JUUR-SK.PEM.cer
wget http://sk.ee/upload/files/EECCRCA.pem.cer
wget http://sk.ee/upload/files/ESTEID-SK%202007.PEM.cer
wget http://sk.ee/upload/files/ESTEID-SK%202011.pem.cer

# Liida mitu sertifikaati �heks failiks:

cat JUUR-SK.PEM.cer EECCRCA.pem.cer 'ESTEID-SK 2007.PEM.cer' 'ESTEID-SK 2011.pem.cer' > id.crt

