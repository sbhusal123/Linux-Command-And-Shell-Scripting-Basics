# Some Useful Commands:

- **Check what values are there in environment variables:** ``printenv``

- **Check if last command was executed correctly (exited succssfully) or not:** ``echo $?``. This gives output `0` which means command executed successfully, non zero value means command exited with failure.

```bash
# can be used to check if last command ran well or not in shell script.
if [ $? -eq 0 ]; then
    echo "Command succeeded."
else
    echo "Command failed."
fi
```

- **Re-execute the last command:** ``!!``

- **Check the current shell interpreter:** ``echo $SHELL``

- **View directories only in current directory:** ``ls -d */``

- **Shell Autocompletions:**

```bash
# install autocompletion
sudo apt install bash-completion

# content for .bashrc
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
elif [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
fi
```
