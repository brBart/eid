eid authentication/isikutuvastus
================================

Examples for using Estonian eID for authentication.

eID kasutamise koodin�iteid.

Juhendid leiad lehelt http://eid.eesti.ee/index.php/Kasutaja_tuvastamine_veebis

Cgi programmide n�ited, mis loevad veebiserveri keskkonnamuutujast vajalikud v��rtused, 
teisendavad t�hestikud ja harutavad v�lja isiku eesnime, perenime ja isikukoodi, 
mis seej�rel veebilehel kuvatakse. 

autendi.php : Php variant
autendi.py  : Pythoni variant
autendi.rb  : Ruby variant

Serveri serfikaadifailide kokkupaneku skript Linuxis:

serveriserdid.sh

T�histusnimekirjade kokkupanek ja uuendamine Linuxis:

tyhistusnimekirjad.sh : T�histusnimekirjade esialgse kokkupaneku skript Linuxis
renew.sh              : nimekirjade automaatse uuendamise skript 
                        id.ee lehelt http://id.ee/public/renew.sh

T�histusnimekirjade haldamiseks vaata ka 
http://code.google.com/p/esteid/wiki/AuthConfApache#Apache_seadistamine






