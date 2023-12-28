
ORG 0x0000 ; Alamat awal program

START:
    MOV R1, #0 ; Inisialisasi jumlah mobil terjual menjadi 0
    MOV R2, #500000 ; Inisialisasi harga mobil

SELL_CAR:
    CMP R1, #10 ; Membandingkan jumlah mobil terjual dengan 10
    JGE END ; Jika jumlah mobil terjual >= 10, lompat ke label END

    ; Proses penjualan mobil
    ADD R1, #1 ; Menambahkan 1 ke jumlah mobil terjual
    SUB R3, R2 ; Mengurangi harga mobil dari saldo pelanggan
    JNC SELL_CAR ; Jika tidak ada pinjaman, lanjutkan penjualan mobil

    ; Jika ada pinjaman
    MOV R4, #100000 ; Inisialisasi jumlah pinjaman
    ADD R3, R4 ; Menambahkan pinjaman ke saldo pelanggan
    JMP SELL_CAR ; Kembali ke label SELL_CAR untuk melanjutkan penjualan mobil

END:
    ; Proses akhir penjualan mobil
    ; Tambahkan instruksi-instruksi yang diperlukan di sini

END ; Akhir program