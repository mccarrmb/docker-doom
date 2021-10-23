# docker-doom

A Zandronum server configuration and deployment tool utilizing a Docker-based back-end.

## Usage

1. Install Docker
2. Run `build-docker-doom.bash` or `build-docker-doom.ps1`
3. Run `docker-doom.bash` or `docker-doom.ps1`
4. Connect to your dumb shareware Doom server

## FAQ

**Q. What if I want to customize this container to run a different Doom engine game?**

**A.** You can manually edit `Dockerfile`, `default.cfg`, `adminlist.txt`, `banlist.txt`, `whitelist.txt`, and `summon.bash` to include the desired settings. I was entertaining the idea of making a tool for this, but most folks using a container probably already have the configs they need.

**Q. What if I'm on Windows?**

**A.** Good news! There is a PowerShell script included alongside the original Bash scripts. Just make sure your PowerShell environment is configured to run unsigned scripts via the [Set-ExecutionPolicy](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-6) cmdlet. I'm contemplating writing a separate Dockerfile that will build a genuine Windows container, but that's a ways off.

**Q. Why wouldn't I just run these servers locally instead of firing up containers?**

**A.** You could totally do that. In fact, there really isn't much of a difference. I prefer to use Docker, though, because it saves me the hassle of trying to write clever UpStart/SystemD/rc.d-type service scripts and jobs. All I have to do is add `--restart always` to the run line and the Docker daemon will take care of keeping the servers running. Docker also makes it easier to run simultaneous instances which makes custom config files for each port/instance unnecessary. You are more than welcome to use these resources in building your own non-container server, though. All of the configuration files - save for `summon.bash` - are OS agnostic, so you shouldn't have any problems using them on Windows, Linux, or macOS.

**Q. How much do I have to know about Docker to run this?**

**A.** Honestly? The only thing you have to know is how to install Docker. The scripts are set up to handle building and running the container. macOS and Windows versions of Docker offer a nice interface for stopping any containers should things get out of hand. Unfortunately, the Linux version is terminal-driven and I'm not aware of any great desktop tools that exist at this time. In this case, you should probably learn the `docker stop` and `docker rm` commands.
