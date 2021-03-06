# Sample verbose configuration file for Unicorn (not Rack)
#
# This configuration file documents many features of Unicorn
# that may not be needed for some applications. See
# http://unicorn.bogomips.org/examples/unicorn.conf.minimal.rb
# for a much simpler configuration file.
#
# See http://unicorn.bogomips.org/Unicorn/Configurator.html for complete
# documentation.

# Use at least one worker per core if you're on a dedicated server,
# more will usually help for _short_ waits on databases/caches.
worker_processes 4

# Since Unicorn is never exposed to outside clients, it does not need to
# run on the standard HTTP port (80), there is no reason to start Unicorn
# as root unless it's from system init scripts.
# If running the master process as root and the workers as an unprivileged
# user, do this to switch euid/egid in the workers (also chowns logs):
# user "unprivileged_user", "unprivileged_group"

# Help ensure your application will always spawn in the symlinked
# "current" directory that Capistrano sets up.
working_directory "/home/bob/mgr_Wojciech_Bozek/mgr_mongoid" # available in 0.94.0+

# listen on both a Unix domain socket and a TCP port,
# we use a shorter backlog for quicker failover when busy

# nuke workers after 30 seconds instead of 60 seconds (the default)
timeout 30

# feel free to point this anywhere accessible on the filesystem
pid "/home/bob/mgr_Wojciech_Bozek/mgr_mongoid/pids/unicorn.pid"

# By default, the Unicorn logger will write to stderr.
# Additionally, ome applications/frameworks log to stderr or stdout,
# so prevent them from going to /dev/null when daemonized here:
stderr_path "/home/bob/mgr_Wojciech_Bozek/mgr_mongoid/log/unicorn.stderr.log"
stdout_path "/home/bob/mgr_Wojciech_Bozek/mgr_mongoid/log/unicorn.stdout.log"

listen '/tmp/unicorn.mgr_active_record.sock'

worker_processes 2
