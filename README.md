## Cara membuat docker image dan Menjalankan Container

### 1. Buat Dockerfile berisi konfigurasi docker. Saya menggunakan konfigurasi seperti pada tulisan dibawah

    FROM ubuntu:18.04
    LABEL Name="whoami_ivan"
    LABEL Version="0.1.0"
    RUN apt-get update
    RUN apt-get install vim python -y
    ENTRYPOINT ["/bin/bash"]
    FROM python:3.8
    WORKDIR /app
    COPY . /app
    CMD ["python", "hallo_dunia.py"]
    
Letakan Dockerfile di dalam satu repositori yang sama dengan program yang ingin dijalankan

### 2. Build image dan jalankan container dengan perintah seperti dibawah pada VM atau Powershell

Membuat image

    docker build -t ubuntu:by_ivanderiaw .
    docker images

Selanjutnya running image dengan pada port 8081 dengan command dibawah

`docker run -it -d --expose 8081 --name whoami_ivanderiaw ubuntu:by_ivanderiaw`

Jika ingin melihat daftar image dan daftar container yang berjalan:

    docker images
    docker ps

## Melihat konfigurasi dan IP Address Container
Untuk melihat konfigurasi kontainer jalankan perintah dibawah ini:

`docker inspect whoami`

Untuk melihat IP Address container gunakan command di atas lalu scroll ke bawah hingga bagian "networking" nanti akan ada object yang menyimpan nilai "IPAddress"

## Hasil Percobaan


IP address dari container whoami adalah: 172.17.0.2 <br/>
IP address dari container whoami_ivanderiaw : 172.17.0.7


File hidden didapatkan dengan cara berikut

#### 1. Inspect containare whoami

    docker inspect f301b98cba61

 #### 2. Lihat bagian mount lalu cd ke path yang dituju.

    cd /home/local/.docker
  
 #### 3. Lihat isi directory nya lalu lihat isi file whoami

    ls
    cat whoami

 #### 4. Hasilnya adalah

    Oofooni1eeb9aengol3feekiph6fieve

image yang digunakan pada container whoami : secret:aequaix9De6dii1ay4HeeWai2obie6Ei <br/>
image yang digunakan pada container whoami_ivanderiaw : ubuntu:by_ivanderiaw

