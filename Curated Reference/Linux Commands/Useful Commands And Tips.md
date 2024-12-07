# Some Useful Commands:

- **Check what values are there in environment variables:** ``printenv``

- **Check if last command was executed correctly or not:** ``echo $?``. This gives output `0` which means command executed successfully, non zero value means command exited with failure.

```bash
# can be used to check if last command ran well or not in shell script.
if [ $? -eq 0 ]; then
    echo "Command succeeded."
else
    echo "Command failed."
fi
```

- **Re-execute the last command:** ``!!``

