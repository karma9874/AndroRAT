.class final Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptured$1;
.super Ljava/lang/Object;
.source "MediaProjectionDelegateV21.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->onScreenshotCaptured(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;


# direct methods
.method constructor <init>(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptured$1;->this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    iput-object p2, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptured$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 128
    new-instance v0, Leu/bolt/screenshotty/ScreenshotBitmap;

    iget-object v1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptured$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Leu/bolt/screenshotty/ScreenshotBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 129
    .local v0, "screenshot":Leu/bolt/screenshotty/ScreenshotBitmap;
    iget-object v1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptured$1;->this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    invoke-static {v1}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->access$getPendingResult$p(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Leu/bolt/screenshotty/Screenshot;

    invoke-virtual {v1, v2}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->onSuccess(Leu/bolt/screenshotty/Screenshot;)V

    .line 130
    :cond_0
    iget-object v1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptured$1;->this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    const/4 v2, 0x0

    check-cast v2, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    invoke-static {v1, v2}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->access$setPendingResult$p(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Leu/bolt/screenshotty/internal/ScreenshotResultImpl;)V

    .line 131
    iget-object v1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptured$1;->this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    invoke-static {v1}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->access$stopCaptureThread(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;)V

    .line 132
    .end local v0    # "screenshot":Leu/bolt/screenshotty/ScreenshotBitmap;
    return-void
.end method
