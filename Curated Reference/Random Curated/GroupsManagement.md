# Linux Group Management Commands

## 1. View Groups and Memberships:

- Groups Details Stored At: `cat /etc/group`

```sh
> cat /etc/group | head -5
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:syslog,surya
```

``etc/group`` file definition type:
```sh
<group_name>:<password>:<GID>:<user_list_separated_by_comma>
```



- List of group for current user:  `groups`

```sh
> groups
adm cdrom sudo dip plugdev users lpadmin docker
```

SO current user is in above groups.

- Lst of group for certain user: `groups <username>`

```sh
> groups ram
ram : ram adm cdrom sudo dip plugdev users lpadmin docker
```

- Display detail group and id for current user: `id`

```sh
> id

uid=1000(ram) gid=1000(surya) groups=1000(surya),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),100(users),114(lpadmin),983(docker),984(ollama)
```

- Display detail group and id for current user: `id <username>`

## 2. Create and Modify Groups
- Create a new group: `sudo groupadd <groupname>`

```sh
sudo groupadd test_group

# A check to verify if group is created, created!!
> cat /etc/group | grep test_group
test_group:x:1002:
```

- Delete a group: `sudo groupdel <groupname>`

```sh
sudo groupdel test_group

# A check to verify if group is created, deleted
> cat /etc/group | grep test_group
```

- Modify existing group name: `sudo groupmod -n <new_groupname> <old_groupname>`

- Change Group ID: `sudo groupmod -g <new_GID> <groupname>`

## 3. Manage Group Memberships
- Add user to group: `sudo usermod -aG <groupname> <username>`, `-a` to appends the group without removing existing group memberships.

- Remove user from group: `sudo usermod -rG <group> <user>`

- View Members of specific group: `getent group <groupname>`

