# Welcome to the Windows Operations Engineering Tasks!

This guide provides a series of tasks to help you get started with managing Windows systems using PowerShell. Each task is designed to help you understand specific commands and use cases, from basic to advanced levels. The tasks cover essential system maintenance, troubleshooting, user management, and more.

## Folder Structure

- CacheCleaning
- Debugging
- SystemMaintenance
- SystemRecovery
- UserManagement
- Networking
- Scheduling

## Task Descriptions

### Cache Cleaning

1. **Clear System Cache:**
   - **Question:** How do you clear the system cache on a Windows machine using PowerShell?
   - **Script:** `CacheCleaning/Clear-Cache.ps1`

### Debugging

2. **Check Event Logs for Errors:**

   - **Question:** How do you check the system and application event logs for errors in PowerShell?
   - **Script:** `Debugging/Check-EventLogs.ps1`

3. **Check Disk Health:**

   - **Question:** How do you check the health of the system disks?
   - **Script:** `Debugging/Check-DiskHealth.ps1`

4. **Monitor CPU Temperature:**

   - **Question:** How can you monitor the CPU temperature on your Windows machine?
   - **Script:** `Debugging/Check-CPUTemperature.ps1`

5. **Check Free Disk Space:**

   - **Question:** How do you check the available disk space on your Windows system?
   - **Script:** `Debugging/Check-FreeDiskSpace.ps1`

6. **Monitor Memory Usage:**

   - **Question:** How can you monitor the memory usage on your system using PowerShell?
   - **Script:** `Debugging/Check-MemoryUsage.ps1`

7. **Check High CPU/Memory Usage:**

   - **Question:** How can you detect processes with high CPU or memory usage?
   - **Script:** `Debugging/Check-HighLoad.ps1`

8. **Check Pagefile Usage:**
   - **Question:** How do you check the current usage of the pagefile?
   - **Script:** `Debugging/Check-PagefileUsage.ps1`

### System Maintenance

9. **Clear Old Logs:**

   - **Question:** How do you clear old system logs to free up disk space?
   - **Script:** `SystemMaintenance/Clear-OldLogs.ps1`

10. **Remove Temporary Files:**

    - **Question:** How do you remove temporary files from the system using PowerShell?
    - **Script:** `SystemMaintenance/Remove-TemporaryFiles.ps1`

11. **Optimize Drives:**
    - **Question:** How do you optimize your drives using the Windows built-in optimization tools?
    - **Script:** `SystemMaintenance/Optimize-Drives.ps1`

### System Recovery

12. **Automate Reboot on System Failure:**
    - **Question:** How do you configure the system to automatically reboot on a system failure?
    - **Script:** `SystemRecovery/Set-AutoReboot.ps1`

### User Management

13. **List User Accounts:**

    - **Question:** How do you list all user accounts on your system?
    - **Script:** `UserManagement/List-UserAccounts.ps1`

14. **Create a New User:**

    - **Question:** How do you create a new user on your Windows machine using PowerShell?
    - **Script:** `UserManagement/Create-NewUser.ps1`

15. **Delete a User Account:**
    - **Question:** How do you remove a user account from your system?
    - **Script:** `UserManagement/Remove-User.ps1`

### Networking

16. **Check Network Connectivity:**

    - **Question:** How do you test network connectivity to a remote host using PowerShell?
    - **Script:** `Networking/Check-NetworkConnectivity.ps1`

17. **Check Active Network Connections:**

    - **Question:** How do you list all active network connections on your system?
    - **Script:** `Networking/List-NetworkConnections.ps1`

18. **Get Network Adapter Information:**
    - **Question:** How do you get detailed information about network adapters on your system?
    - **Script:** `Networking/Get-NetworkAdapterInfo.ps1`

### Scheduling

19. **Schedule a Task with Task Scheduler:**

    - **Question:** How do you schedule a PowerShell script to run at specific intervals using Windows Task Scheduler?
    - **Script:** `Scheduling/Schedule-Task.ps1`

20. **List All Scheduled Tasks:**
    - **Question:** How do you list all scheduled tasks on your Windows machine?
    - **Script:** `Scheduling/List-ScheduledTasks.ps1`

## Contributing

Contributions are welcome! Please fork this repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License.
