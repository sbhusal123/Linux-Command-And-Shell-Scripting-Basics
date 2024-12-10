# User, Group And Permissions

This part consists of summary.

## 1. User and Group

Basically user and group management command goes like:

### 1.1. Part from Shadow Util

- Universally available accros most linux distros.

```bash
<user|group><add|mod|del>

- useradd => add a user
- usermod => modify user
- userdel => delete a user

- groupadd => add a group
- groupmod => modify a group
- groupdel => delete a group
```

### 1.2. Other way

```bash
<add|del><user|group>

- adduser => add a user
- deluser => delete a group
- addgroup => add a user
- delgroup => delete a group
```

- Configuration located at: ``/etc/<add|del><user|group>``, i.e. ``/etc/adduser.conf`` or ``/etc/deluser.conf`` ..
