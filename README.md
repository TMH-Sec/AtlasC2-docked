# AtlasC2-docked  
A containerization/portability project.  
Grimmie made AtlasC2 Framework, for a pure windows environment thus far.  
I ported it to Linux (server and client, we want it on kali...)!  

The implant needs to be compiled on windows for now, change the IP to your docker  
host machine. Change the port number to match your created listener port.  

We assume you have docker-ce installed. [Docker Install Kali](https://www.kali.org/docs/containers/installing-docker-on-kali/)  
We assume you are member of the docker group (or root).  

Easy install in home:  

```
cd ~  
git clone https://github.com/TMH-Sec/AtlasC2-docked.git  
cd AtlasC2-docked  
./install.sh  
```

To run:  

```
./startup.sh
```

The startup script will ask you about listener ports.  
Make sure your firewall is off, or that you allow your listener ports through.  
After selecting ports, the server starts in the background and you are greeted  
by the client prompt.  

After your engagement/lab time, you run the cleanup script to shutdown after you exit:  

```
./cleanup.sh
```

This C2 boasts a different focus.  

> Atlas is based around gaining a foothold within an environment and further utilizing   
> it to smuggle in C# (currently strictly C#) weaponry utilizing an HTTP based implant.  

Appreciate it, Dig it, Groove on it!    

If you like this project, feel free to support Grimmie's fundraising efforts.  
[FUND GRIMMIE](https://github.com/Gr1mmie/AtlasC2/blob/master/.github/FUNDING.yml)  
[AtlasC2 Utils](https://github.com/Gr1mmie/AtlasUtils)  

I WANNA SEE THIS GROW  
I containerized v1, imagine what's to come...  
