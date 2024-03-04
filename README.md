# C# dolgozat

Dolgozat feltöltése
## 1. lépés: 
nyitsd meg a powershellt, majd írd be a következő parancsokat <br>
`FONTOS` A vezteknev_keresztnev helyére a saját vezetékneved és keresztnevedet írd ékezet nélkül. pl: szanto_benjamin
```cmd
cd ~\Desktop
git clone https://github.com/vellt/14_2_2_csop_doga
cd 14_2_2_csop_doga
git checkout -b "vezeknev_keresztnev"
mkdir adb
mkdir konzol
mkdir backend
explorer .
```
Megnyíilik a fájlkezelő. Ide másoljunk be mindent a megfelelő mappába. Értelemszerűen!

Majd vissza a PowerShellre. `FONTOS` A vezteknev_keresztnev helyére a saját vezetékneved és keresztnevedet írd ékezet nélkül. Amit az első pontban adtál meg pl: szanto_benjamin
```cmd
cd ~\Desktop\14_2_2_csop_doga
git add .
git commit -m "kész"
git push origin "vezeknev_keresztnev"
```
