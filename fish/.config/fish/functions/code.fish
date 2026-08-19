# Custom code shortcut to start and manage the fcc server and claude client
function code
    # Start the fcc-server in the background
    fcc-server >/dev/null 2>&1 &
    set server_pid $last_pid

    # Wait for the server to bind to port 8082
    while not ss -ltn | grep -q ':8082'
        sleep 0.1
    end

    # Clear terminal and run fcc-claude with arguments
    clear
    fcc-claude $argv

    # Clean up by killing the background server
    kill $server_pid 2>/dev/null
end
