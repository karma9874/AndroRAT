.class final Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ReleaseOnStopCallback;
.super Landroid/media/projection/MediaProjection$Callback;
.source "MediaProjectionDelegateV21.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReleaseOnStopCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ReleaseOnStopCallback;",
        "Landroid/media/projection/MediaProjection$Callback;",
        "projection",
        "Landroid/media/projection/MediaProjection;",
        "imageReader",
        "Landroid/media/ImageReader;",
        "virtualDisplay",
        "Landroid/hardware/display/VirtualDisplay;",
        "(Landroid/media/projection/MediaProjection;Landroid/media/ImageReader;Landroid/hardware/display/VirtualDisplay;)V",
        "onStop",
        "",
        "screenshotty-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final imageReader:Landroid/media/ImageReader;

.field private final projection:Landroid/media/projection/MediaProjection;

.field private final virtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor <init>(Landroid/media/projection/MediaProjection;Landroid/media/ImageReader;Landroid/hardware/display/VirtualDisplay;)V
    .locals 1
    .param p1, "projection"    # Landroid/media/projection/MediaProjection;
    .param p2, "imageReader"    # Landroid/media/ImageReader;
    .param p3, "virtualDisplay"    # Landroid/hardware/display/VirtualDisplay;

    const-string v0, "projection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageReader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualDisplay"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    nop

    .line 211
    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    iput-object p1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ReleaseOnStopCallback;->projection:Landroid/media/projection/MediaProjection;

    iput-object p2, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ReleaseOnStopCallback;->imageReader:Landroid/media/ImageReader;

    iput-object p3, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ReleaseOnStopCallback;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .line 214
    sget-object v0, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    iget-object v1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ReleaseOnStopCallback;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0, v1}, Leu/bolt/screenshotty/internal/Utils;->releaseSafely(Landroid/hardware/display/VirtualDisplay;)V

    .line 215
    sget-object v0, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    iget-object v1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ReleaseOnStopCallback;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0, v1}, Leu/bolt/screenshotty/internal/Utils;->closeSafely(Landroid/media/ImageReader;)V

    .line 216
    iget-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ReleaseOnStopCallback;->projection:Landroid/media/projection/MediaProjection;

    move-object v1, p0

    check-cast v1, Landroid/media/projection/MediaProjection$Callback;

    invoke-virtual {v0, v1}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 217
    return-void
.end method
