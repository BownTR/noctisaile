// sw.js - Service Worker for Background Persistence
self.addEventListener('install', (e) => {
  self.skipWaiting();
});

self.addEventListener('activate', (e) => {
  console.log("Sistem Servisi Aktif");
});

// Arka planda konum almayı denemek için placeholder (Browser bağımlı)
self.addEventListener('sync', (e) => {
  if (e.tag === 'konum-guncelle') {
     console.log("Arka plan senkronizasyonu tetiklendi.");
  }
});
