
### 1. Isi inventory.yaml

Isi file ini adalah nama image yang akan digunakan untuk menjalankan container dan p IP dari VM target.

	all:
	  vars:
	    image_u: ubuntu:latest
	  hosts:
	    container-test-i:
	      ansible_host: 10.184.0.100

### 2. Isi playbook.yaml
	
	  - name: uji coba menjalankan docker container
	    hosts: container-test-i
	    become: false
	    tasks:
	    - docker_container:
	        name: ubuntu-ivan
	        image: "{{image_u}}"
	        interactive: true
	        tty: true
	        ports:
	          - "1234:1234"

Task ketiga adalah memjalankan docker conatiner. Pastikan container interactive lalu declarasikan juga port yang digunakan dengan dengan command ports:ports.