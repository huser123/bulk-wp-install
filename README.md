# Bulk WordPress Install Script

## Leírás
Ez a shell script több WordPress példány automatikus telepítésére és konfigurálására szolgál. A szkript telepíti a WordPress-t, létrehozza a szükséges adatbázisokat, és alapértelmezett beállításokat végez el több weboldal egyszerre történő létrehozásához.

---

## Fő funkciók
1. **Több WordPress telepítés automatizálása:**
   - Létrehozza a megadott számú WordPress példányt egyedi könyvtárakban.

2. **Adatbázisok létrehozása:**
   - Automatikusan létrehozza a szükséges adatbázisokat minden WordPress példányhoz.

3. **Konfigurációs fájl generálása:**
   - Egyedi `wp-config.php` fájlokat hoz létre minden telepített példányhoz.c

---

## Használat

1. **Beállítások:**
   - Szerkeszd a szkriptet, és állítsd be az alábbi változókat:
     - `MYSQL_USER`: Az adatbázis root felhasználóneve.
     - `MYSQL_PASSWORD`: Az adatbázis root jelszava.

2. **Végrehajtási jog:**
   - Adj végrehajtási jogot a szkriptnek:
     ```bash
     chmod +x bulk-wp-install.sh
     ```

3. **Futtatás:**
   - Indítsd el a szkriptet:
     ```bash
     ./bulk-wp-install.sh
     ```

4. **Telepítés ellenőrzése:**
   - Látogasd meg az egyes WordPress weboldalakat az alap URL használatával.

---

## Követelmények
- Linux operációs rendszer
- MySQL vagy MariaDB telepítve és elérhető
- PHP 7.x vagy újabb
- Apache webszerver

