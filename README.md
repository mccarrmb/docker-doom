# docker-doom
A Zandronum server configuration and deployment tool utilizing a docker-based back-end.

## Usage

I'll write some instruction here when I finish testing.

## Note: There is currently a game-breaking bug in the Linux version of Zandronum 3.0
The bug is detailed here, https://zandronum.com/tracker/view.php?id=2775. The short story is that the Linux executable does not calculate resource hashes correctly on its end. This means that if you run a dedicated Linux server, Windows and macOS clients will get kicked because the hashes they send will not match what the Linux server came up with. Since this project uses Docker to set up servers, this bug puts the project in quite a pickle. 
