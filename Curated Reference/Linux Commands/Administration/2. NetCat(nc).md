# NetCat Utility (nc):

## Intro and Usage

Tool for
- networking tasks
- testing connections
- sending and recieving data over network
- can create TCP/UDP connections, scan ports, transfer files, and debug services.

> Can operate in client and server mode.


```sh
# Manual for `nc` (Netcat) Command

## Name
`nc` - arbitrary TCP and UDP connections and listens

## Synopsis
```bash
nc [OPTIONS] [DESTINATION] [PORT]
```

**Options:**

- `-l`: Listen mode for incoming connections.

- `-p <port>` : Specify the local port for the connection.

- `-z` : Scan mode; only check for open ports without sending data. Note that this mode test connection by opening, and closing a connection for scan / test. 

- `-v` : Verbose output; provides more details about the connection.

- `-n` : Do not resolve DNS; use numeric IP addresses only.

- `-u` : Use UDP instead of TCP.

- `-w <seconds>` : Set a timeout for the connection.

- `-k` : Keep the connection open for multiple clients in listen mode. Note that simultaneous client connection at a single time is not prohibited.

- `-e <command>` : Execute a command after a connection is established.

- `-4` : Use IPv4 only.

- `-6` : Use IPv6 only.

## Examples:

### 1. Check if Port is Open:

```sh
nc -zv 192.168.1.1 80
```

This checks 192.168.1.1 on port 80 to see if it's open. `z` flag for scan mode, `v` flag for verbose output.

To check for multiple ports: ``nc -zv 192.168.1.1 80-90``

### 2. Simple TCP Server Chat:**

> **Note that:** ``nc`` doesnt supports multiple client connections. i.e. multiple clients cannot connect to a single tcp server. There are some alternatives too.

- **i. Start a TCP connection on port:** ``nc -l localhost 1234``, this creates a server that listens on a port ``1234``. 

> Note: the server spinned with ``nc -l localhost 1234`` will terminate once the client disconnects. To prevent this use ``nc -lk localhost 1234`` ``k`` flag specifies to keep alive.

- **ii. Connect to port** from another terminal: ``nc localhost 1234``

> Note: Both client and server can send messages this way. So, this is a bidirectional. Hence, input and output redirect ``<`` and ``>`` can be used in case of both client and server.

### 3. Connect To TCP Server: ``nc [HOST/IP] [PORT]``

### 4. Sending and Recieving File:

- **Transfer file (Sender / Server):** ``nc -l 1234 < file.txt``, this sends file.txt content to a client connecting on port 1234. Note that, if the keep alive flag ``-k`` is used, the file content is only accessible by the first client.

- **Recieve File (Client):** ``nc 192.168.1.1 1234 > file.txt`` this connects to 192.168.1.1 on port 1234 and saves the received data to file.txt.

In this case we are using redirect operator ``>`` or ``<``. Few Cases:

Here, we are redirecting the content of ``file.txt`` to the server with `<` input redirect. Since the nc creates bidirectional connection, the content of 

