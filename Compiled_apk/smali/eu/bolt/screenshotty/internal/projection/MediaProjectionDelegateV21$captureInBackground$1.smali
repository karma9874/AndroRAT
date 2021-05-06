.class final Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$captureInBackground$1;
.super Ljava/lang/Object;
.source "MediaProjectionDelegateV21.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->captureInBackground(Landroid/media/projection/MediaProjection;Leu/bolt/screenshotty/internal/ScreenshotSpec;J)V
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
.field final synthetic $captureThreadHandler:Landroid/os/Handler;

.field final synthetic $projection:Landroid/media/projection/MediaProjection;

.field final synthetic $screenshotSpec:Leu/bolt/screenshotty/internal/ScreenshotSpec;

.field final synthetic this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;


# direct methods
.method constructor <init>(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Landroid/media/projection/MediaProjection;Leu/bolt/screenshotty/internal/ScreenshotSpec;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$captureInBackground$1;->this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    iput-object p2, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$captureInBackground$1;->$projection:Landroid/media/projection/MediaProjection;

    iput-object p3, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$captureInBackground$1;->$screenshotSpec:Leu/bolt/screenshotty/internal/ScreenshotSpec;

    iput-object p4, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$captureInBackground$1;->$captureThreadHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 89
    iget-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$captureInBackground$1;->this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    iget-object v1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$captureInBackground$1;->$projection:Landroid/media/projection/MediaProjection;

    iget-object v2, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$captureInBackground$1;->$screenshotSpec:Leu/bolt/screenshotty/internal/ScreenshotSpec;

    iget-object v3, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$captureInBackground$1;->$captureThreadHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->access$doCapture(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Landroid/media/projection/MediaProjection;Leu/bolt/screenshotty/internal/ScreenshotSpec;Landroid/os/Handler;)V

    .line 90
    return-void
.end method
