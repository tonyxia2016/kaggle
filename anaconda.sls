/home/ubuntu/Miniconda2-latest-Linux-x86_64.sh:
  cmd.run:
    - name: wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
    - cwd: /home/ubuntu
    - creates: /home/ubuntu/miniconda2

/home/ubuntu/:
  cmd.script:
    - name: /home/ubuntu//Miniconda2-latest-Linux-x86_64.sh
    - args: -b -p /home/ubuntu/miniconda2
    - creates: /home/ubuntu/miniconda2

/home/ubuntu/miniconda2:
  file.directory:
    - user: ubuntu
    - group: ubuntu
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode