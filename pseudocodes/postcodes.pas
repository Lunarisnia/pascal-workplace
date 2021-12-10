program postcodes;

deklarasi
    kota: string;

deskripsi:
    kota <- input("Mohon masukkan nama kota: ");
    CASE kota:
        "Ciracas": write('Ciracas: 13720')
        "Cipayung": write('Cipayung: 16442')
        "Cakung": write('Cakung: 13910')
        "Duren Sawit": write('Duren Sawit: 13420')
        "Jatinegara": write('Jatinegara: 13250')
        "Kramat Jati": write('Kramat Jati: 13510')
        "Pasar Rebo": write('Pasar Rebo: 13710')
        "Matraman": write('Matraman: 13110')
        "Pulo Gadung": write('Pulo Gadung: 13260')
    ELSE
        write('Salah Input!')
    ENDCASE
