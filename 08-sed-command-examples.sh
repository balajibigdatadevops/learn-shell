Operation:
---

1. Search and Replace
2. Delete the lines
3. Add your lines
4. Replace lines

sed is editor

Assume we have a file like this

root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin

sed 's/nologin/yeslogin/' file
  s -> substitute

To modify the file, we use -i option to sed command, else it does only change in output


Assume we have a file like this

root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin

Replace root with admin

sed 's/root/admin/' file
sed 's/root/admin/g' file



Delete Lines can happen in two ways
1. Line no
      sed '2d' file
2. Search a Word and delete those lines
      sed '/yeslogin/ d' file



Add your lines
sed '1 a Heloo World' file
sed '/bash/ a Hello World' file


Replace lines
sed '1 c Heloo World' file
sed '/bash/ c Hello World' file


sed -e '1d' -e '2 a Hello World' file

-e option is used to enable multiple operations with single sed command