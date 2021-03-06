# Puppet Task Name: timesync
#
#
#
# You can write Puppet tasks in any language you want and it's easy to
# adapt an existing Python, PowerShell, Ruby, etc. script. Learn more at:
# https://puppet.com/docs/bolt/0.x/writing_tasks.html
#
echo "Reconfiguring W32Time..."
w32tm /config /syncfromflags:MANUAL /manualpeerlist:"0.nl.pool.ntp.org 1.nl.pool.ntp.org" /update
echo ""
echo "Resyncing clock..."
w32tm /resync
echo ""
echo "Current time source:"
w32tm /query /source
echo ""
echo "All configured time sources:"
w32tm /query /peers
