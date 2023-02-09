
# Telnet Port Checker

This script checks for the Telnet service on a specified port for a list of hosts. The list of hosts can be specified either directly in the code or read from a text file.

## Requirements

-   Python 3

## Usage

1.  Clone or download this repository.
2.  Open a terminal and navigate to the directory where the script is stored.
3.  If you want to specify the list of hosts directly in the code, edit the `host_list` variable in the script as needed. If you want to read the list of hosts from a text file, create a text file named `hosts.txt` in the same directory as the script, with one hostname (or IP address) per line.
4.  Set the `port` variable in the script to the port that you want to check.
5.  Run the script with the following command:

	`python telnet_port_checker.py`

## Output

The script will output a message for each host indicating whether the Telnet service is listening on the specified port or not. If the Telnet service is listening on the port, the output will be:

`Telnet service is listening on port [port number] of host [hostname].`

If the Telnet service is not listening on the port, the output will be:

`Telnet service is NOT listening on port [port number] of host [hostname]: [error message].`

## Notes

-   The script sets a timeout of 5 seconds for each connection attempt. If a connection cannot be established within this time, the script will assume that the Telnet service is not listening on the port.
-   The script closes the socket after each connection attempt.