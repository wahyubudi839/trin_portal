#!/bin/bash

# Masuk ke folder project
cd /home/wahyu/trin_portal || exit

# Tambahkan semua perubahan (bisa ubah kalau mau spesifik)
git add .

# Cek apakah ada perubahan sebelum commit
if ! git diff --cached --quiet; then
    git commit -m "Auto-backup: $(date '+%Y-%m-%d %H:%M:%S')"
    
    # (Opsional) push ke GitHub
    git push origin main
else
    echo "Tidak ada perubahan - $(date)"
fi
