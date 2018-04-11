# docker-doom
A Zandronum server configuration and deployment tool utilizing a Docker-based back-end.

## Usage

1. Install Docker
2. Run `build-docker-doom.sh`
3. Run `docker-doom.sh`
4. Connect to your dumb shareware Doom server

## F.A.Q.

### Q. What if I want to customize this container to run a different Doom engine game?

__A.__ You're smart enough to create a GitHub account. You figure it out.  ...In the mean time, I'm working on a tool to help with it.

### Q. What if I'm on Windows?

__A.__ You can try building the image manually, but I currently don't have any PowerShell helper scripts to do this for you. Be aware that this image is Linux-based which means that it won't run alongside Windows-based containers.

### Q. Why wouldn't I just run these servers locally instead of firing up containers?

__A.__ You could totally do that. In fact, there really isn't much of a difference. I prefer to use Docker, though, because it saves me the hassle of trying to write clever UpStart/SystemD/rc.d-type service scripts and jobs. All I have to do is add `--restart always` to the run line and the Docker daemon will take care of keeping the servers running.

> __There is currently a game-breaking bug in the Linux version of Zandronum 3.0__  
> The bug is detailed here, https://zandronum.com/tracker/view.php?id=2775. The short story is that the Linux executable does not calculate resource hashes correctly on its end. This means that if you run a dedicated Linux server, Windows and macOS clients will get kicked because the hashes they send will not match what the Linux server came up with. Since this project uses a Linux-based Docker image, this bug puts us in quite a pickle... until the 3.1 release, anyway. 


