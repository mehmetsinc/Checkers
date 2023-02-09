import socket

def check_telnet_port(host, port):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.settimeout(5)
    try:
        s.connect((host, port))
        print(f"Telnet service is listening on port {port} of host {host}.")
        return True
    except socket.error as e:
        print(f"Telnet service is NOT listening on port {port} of host {host}: {e}")
        return False
    finally:
        s.close()

with open("hosts.txt") as f:
    host_list = [line.strip() for line in f.readlines()]

port = 22

for host in host_list:
    check_telnet_port(host, port)
