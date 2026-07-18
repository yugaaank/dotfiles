function code
    fcc-server >/dev/null 2>&1 &
    set server_pid $last_pid

    while not ss -ltn | grep -q ':8082'
        sleep 0.1
    end

    clear
    fcc-claude $argv

    kill $server_pid 2>/dev/null
end
