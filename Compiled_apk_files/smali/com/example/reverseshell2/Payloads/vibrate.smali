.class public Lcom/example/reverseshell2/Payloads/vibrate;
.super Ljava/lang/Object;
.source "vibrate.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/vibrate;->context:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public vib(I)V
    .locals 4
    .param p1, "i"    # I

    .line 16
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/vibrate;->context:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 18
    .local v0, "vibrator":Landroid/os/Vibrator;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 20
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 21
    const-wide/16 v2, 0x320

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_1

    .line 22
    :catch_0
    move-exception v2

    .line 23
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 18
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    .end local v1    # "k":I
    :cond_0
    return-void
.end method
