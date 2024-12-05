# Linux Group Management Commands

## 1. View Groups and Memberships:

- Groups Details Stored At: `cat /etc/group`

- List of group for current user:  `groups`

- Lst of group for certain user: `groups <username>`

- Display detail group and id for current user: `id`

- Display detail group and id for current user: `id <username>`

## 2. Create and Modify Groups
- Create a new group: `sudo groupadd <groupname>`

- Delete a group: `sudo groupdel <groupname>`

- Modify existing group name: `sudo groupmod -n <new_groupname> <old_groupname>`

- Change Group ID: `sudo groupmod -g <new_GID> <groupname>`

## 3. Manage Group Memberships
- Add user to group: `sudo usermod -aG <groupname> <username>`, `-a` to appends the group without removing existing group memberships.

- Remove user from group: `sudo usermod -rG test1 surya`

- View Members of specific group: `getent group <groupname>`

