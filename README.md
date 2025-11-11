# SPRINT 2 / EXERCICI 1

# DESCRIPCIO
Una òptica, anomenada “Cul d'Ampolla”, vol informatitzar la gestió dels clients/es i vendes d'ulleres.
En primer lloc, l'òptica vol saber quin és el proveïdor de cadascuna de les ulleres. En concret vol saber de cada proveïdor:
El nom
L'adreça (carrer, número, pis, porta, ciutat, codi postal i país)
Telèfon
Fax
NIF.

La política de compres de l'òptica es basa que les ulleres d'una marca es compraran a un únic proveïdor (així en podrà treure més bons preus), però poden comprar ulleres de diverses marques a un proveïdor. De les ulleres vol saber:
La marca.
La graduació de cadascun dels vidres.
El tipus de muntura (flotant, pasta o metàl·lica).
El color de la muntura.
El color de cada vidre.
El preu.

Dels clients/es vol emmagatzemar:
El nom.
L'adreça postal.
El telèfon.
El correu electrònic.
La data de registre.
Quan arriba un/a client/a nou, emmagatzemar el/la client/a que li ha recomanat l'establiment (sempre que algú li hagi recomanat).
El nostre sistema haurà d’indicar qui ha sigut l’empleat/da que ha venut cada ullera.

# TECNOLOGIES UTILITZADES
Gestió de la Base de Dades
MySQL Server: El sistema gestor de bases de dades (SGBD) que conté les teves dades.
MySQL Workbench: L'eina gràfica (GUI) que has fet servir per administrar la teva base de dades i per exportar-la.
mysqldump: L'eina de línia de comandes (que Workbench utilitza internament) per crear l'arxiu d'exportació .sql.
SQL: El llenguatge de consultes utilitzat dins de l'arxiu init.sql per definir l'estructura i les dades de la base de dades.
________________________________________
Entorn de Virtualització i Contenidors
Docker: La plataforma principal de contenidors que et permet empaquetar i executar l'aplicació (en aquest cas, la base de dades) en un entorn aïllat.
Docker Compose: L'eina per definir i gestionar aplicacions Docker multi-contenidor (o, com en aquest cas, simplificar la gestió d'un sol contenidor).
Imatge Docker de MySQL: La plantilla oficial de MySQL (ex: mysql:latest) que Docker descarrega de Docker Hub per crear el contenidor.
________________________________________
Gestió del Projecte i Control de Versions
Git: El sistema de control de versions que s'utilitza per rastrejar els canvis en els arxius del teu projecte.
GitHub: La plataforma de hosting (allotjament web) on puges el teu repositori Git per compartir-lo.
Terminal (CLI): L'eina de línia de comandes (com PowerShell, CMD, o Terminal de Mac/Linux) per executar comandaments de git i docker-compose.
________________________________________
Formats d'Arxiu i Configuració
YAML (.yml): El format de sintaxi simple que hem fet servir per escriure l'arxiu docker-compose.yml.
.gitignore: Un arxiu de text pla que li diu a Git quins arxius o carpetes ha d'ignorar i no pujar al repositori (com .env o mysql-data/).
.env: Un arxiu de text pla per emmagatzemar variables d'entorn, com ara les contrasenyes, de forma segura i fora del codi.
Markdown (.md): El llenguatge de format de text que hem utilitzat per crear l'arxiu README.md.

# REQUISISTS
Per a Windows
Sistema Operatiu:
Recomanat: Windows 10 (versió 21H2 o superior) o Windows 11 (versió 21H2 o superior).
S'admeten les edicions Home, Pro, Enterprise o Education.
Backend de Docker: Cal tenir el WSL 2 (Windows Subsystem for Linux 2) activat. Docker Desktop t'ajudarà a instal·lar-lo o activar-lo durant la seva pròpia instal·lació.
Hardware:
Processador de 64 bits amb traducció d'adreces de segon nivell (SLAT).
4 GB de RAM (es recomana 8 GB o més per a una bona experiència).
La virtualització de hardware ha d'estar activada a la BIOS/UEFI.
Per a macOS
Sistema Operatiu:
Docker Desktop admet les tres versions principals més recents de macOS. Per exemple, si la versió actual és "macOS 15 Sonoma", s'admetrien Sonoma, Ventura i Monterey.
Hardware (Mac amb Apple Silicon - M1, M2, M3...)
4 GB de RAM (recomanat 8 GB o més).
Es recomana instal·lar Rosetta 2, ja que algunes eines opcionals de Docker encara ho poden necessitar.
Hardware (Mac amb Intel)
Model de Mac de 2010 o més recent.
Processador amb suport per a virtualització MMU (es pot comprovar a la terminal amb sysctl kern.hv_support).
4 GB de RAM (recomanat 8 GB o més).

# Execució:
Clonar el Repositori [https://github.com/EL_TEU_USUARI/EL_TEU_PROJECTE.git](https://github.com/EL_TEU_USUARI/EL_TEU_PROJECTE.git) # 
No requereix connexió a internet ni cap base de dades externa.
