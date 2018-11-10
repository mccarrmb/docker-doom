# docker-doom
A Zandronum server configuration and deployment tool utilizing a Docker-based back-end.

## Usage

1. Install Docker
2. Run `build-docker-doom.sh`
3. Run `docker-doom.sh`
4. Connect to your dumb shareware Doom server

## F.A.Q.

### Q. What if I want to customize this container to run a different Doom engine game?

__A.__ You can manually edit `Dockerfile`, `default.cfg`, `adminlist.txt`, `banlist.txt`, `whitelist.txt`, and `summon.bash` to include the desired settings... or just hold tight until I get the "Builder" tool completed. Just a heads up: you'll need Ruby version >= 2.5.0 installed to run this tool. I plan on testing this tool on the native Windows version of Ruby as well, so you shouldn't have to do any weird Linux subsystem magic to run it.

### Q. What if I'm on Windows?

__A.__ Good news! There is a PowerShell script included alongside the original Bash scripts. Just make sure your PowerShell environment is configured to run unsigned scripts via the [Set-ExecutionPolicy](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-6) cmdlet. I'm contemplating writing a seperate Dockerfile that will build a genuine Windows container, but that's a ways off.

### Q. Why wouldn't I just run these servers locally instead of firing up containers?

__A.__ You could totally do that. In fact, there really isn't much of a difference. I prefer to use Docker, though, because it saves me the hassle of trying to write clever UpStart/SystemD/rc.d-type service scripts and jobs. All I have to do is add `--restart always` to the run line and the Docker daemon will take care of keeping the servers running. Docker also makes it easier to run simultaneous instances since the network ports only have to be specified at container runtime - making custom config files for each port/instance unnecessary. You are more than welcome to use these resources in building your own non-container server, though. All of the configuration files - save for `summon.bash` - are OS agnostic, so you shouldn't have any problems using them on Windows, Linux, or macOS.
