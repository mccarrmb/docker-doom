# docker-doom

A Zandronum server configuration and deployment tool utilizing a Docker-based back-end.

## Usage

1. Install Docker
2. Run `build-docker-doom.bash` or `build-docker-doom.ps1`
3. Run `docker-doom.bash` or `docker-doom.ps1`
4. Connect to your dumb shareware Doom server!

## FAQ

**Q. What if I want to customize this container to run a different Doom engine game?**

**A.** You can manually edit `Dockerfile`, `default.cfg`, `adminlist.txt`, `banlist.txt`, `whitelist.txt`, and `summon.bash` to include the desired settings. I was entertaining the idea of making a tool for this, but most folks using a container _probably_ already have the configs they need.

**Q. What if I'm on Windows?**

**A.** There is a PowerShell script included that will allow you to build either the Linux or the Windows container variants (Just run the script with the parameter `-HostOs windows` or `-HostOs windows-server` to build the Windows-based version). Make sure your PowerShell environment is configured to run unsigned scripts via the [Set-ExecutionPolicy](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-6) cmdlet.

**Q. Why wouldn't I just run these servers locally instead of firing up containers?**

**A.** You could totally do that. In fact, there really isn't much of a difference. I prefer to use Docker, though, because it saves me the hassle of trying to write clever UpStart/SystemD/rc.d-type service scripts and jobs. All I have to do is add `--restart always` to the run line and the Docker daemon will take care of keeping the servers running. Docker also makes it easier to run simultaneous instances which makes custom config files for each port/instance unnecessary. You are more than welcome to use these resources in building your own non-container server, though. All of the configuration files - save for `summon.bash` - are OS agnostic, so you shouldn't have any problems using them on Windows, Linux, or macOS.

**Q. How much do I have to know about Docker to run this?**

**A.** If you're running the Linux container on a Mac or Windows host, the only thing you _should_ have to know is how to install Docker. The scripts are set up to handle building and running the container. MacOS and Windows versions of Docker offer a nice interface for starting/stopping any containers should things get out of hand. Unfortunately, the Linux version is terminal-driven and I'm not aware of any great desktop tools that exist at this time. In the case you're running a Linux host, you should probably learn the `docker stop` and `docker rm` terminal commands.

If you're running the Windows containers, you can still use the Docker Desktop tool. However, you'll have to manage the networking properties via Hyper-V. I really wouldn't recommend the Windows container unless you absolutely need it **and** you also have Hyper-V experience.
