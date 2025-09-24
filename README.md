### 1. `stollar`
- `id` – unikal identifikator  
- `raqam` – stol raqami  
- `orinlar_soni` – stoldagi o‘rinlar soni  
- `holat` – stolning holati (Bo‘sh, Band, VIP, va h.k.)  

### 2. `menu`
- `id` – unikal identifikator  
- `taom_nomi` – taom nomi  
- `narxi` – taom narxi  
- `kategoriya` – taom turi (Asosiy, Ichimlik, Yengil va h.k.)  

### 3. `orders`
- `id` – unikal identifikator  
- `stol_id` – buyurtma qilingan stol (foreign key → `stollar.id`)  
- `menyu_id` – buyurtma qilingan taom (foreign key → `menu.id`)  
- `miqdor` – buyurtma soni  
- `sana` – buyurtma sanasi  

### Namunaviy ma’lumotlar
- **Stollar** jadvalida: 5 ta stol (raqamlari 10–14) turli holatlar bilan.  
- **Menu** jadvalida: 5 ta taom (Osh, Lag‘mon, Choy, Kola, Somsa).  
- **Orders** jadvalida: turli stollarga oid namunaviy buyurtmalar kiritilgan.  