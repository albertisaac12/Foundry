# Resolving Docker "Permission Denied" Error

## Steps to Fix

### 1. Add Your User to the `docker` Group

By adding your user to the `docker` group, you can run Docker commands without needing `sudo`:

```bash
sudo usermod -aG docker $USER
```

### 2. Log Out and Log Back In

For the group changes to take effect, you need to log out of your session and log back in. Alternatively, you can run the following command to apply the new group without logging out:

```bash
newgrp docker
```

### 3. Verify Docker Access

To check if the issue is resolved, run the following command to test Docker without `sudo`:

```bash
docker run hello-world
```

If the setup is correct, you should see a message from Docker confirming that everything is working.

## Troubleshooting

### Ensure Docker Service is Running

If you still face issues, ensure that the Docker service is running:

```bash
sudo systemctl start docker
```

### Reboot the System

If logging out and back in doesn't resolve the issue, try rebooting your system.

---

By following these steps, you should be able to run Docker commands without encountering the "permission denied" error.

```

This `README.md` provides a guide on resolving the Docker permission issue by adding the user to the `docker` group and troubleshooting further if needed.
```
