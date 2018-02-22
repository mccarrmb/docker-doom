# docker-doom
A Zandronum server configuration and deployment tool utilizing a docker-based back-end.

## Usage

1. Install Docker
2. Run `build-docker-doom.sh`
3. Run `docker-doom.sh`
4. Connect to your dumb shareware Doom server

> __There is currently a game-breaking bug in the Linux version of Zandronum 3.0__  
> The bug is detailed here, https://zandronum.com/tracker/view.php?id=2775. The short story is that the Linux executable does not calculate resource hashes correctly on its end. This means that if you run a dedicated Linux server, Windows and macOS clients will get kicked because the hashes they send will not match what the Linux server came up with. Since this project uses Docker to set up servers, this bug puts the project in quite a pickle. 


