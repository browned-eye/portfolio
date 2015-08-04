worker_processes 2
working_directory "/var/www/janineheiser"

timeout 30

# Specify path to socket unicorn listens to,
# we will use this in our nginx.conf later
listen "/var/www/janineheiser/tmp/sockets/unicorn_janineheiser.sock", :backlog => 64

# Set process id path
pid "/var/www/janineheiser/tmp/pids/unicorn_janineheiser.pid"

# Set log file paths
stderr_path "/var/www/janineheiser/logs/unicorn.stderr.log"
stdout_path "/var/www/janineheiser/logs/unicorn.stdout.log"
