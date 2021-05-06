.class public final Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateCompat;
.super Ljava/lang/Object;
.source "MediaProjectionDelegateCompat.kt"

# interfaces
.implements Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateCompat;",
        "Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;",
        "()V",
        "makeScreenshot",
        "Leu/bolt/screenshotty/ScreenshotResult;",
        "onActivityResult",
        "",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "screenshotty-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeScreenshot()Leu/bolt/screenshotty/ScreenshotResult;
    .locals 3

    .line 11
    sget-object v0, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;->Companion:Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;

    invoke-virtual {v0}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;->projectionNotSupported()Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    move-result-object v0

    .line 12
    .local v0, "exception":Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    sget-object v1, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->Companion:Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;->error(Ljava/lang/Throwable;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    move-result-object v1

    check-cast v1, Leu/bolt/screenshotty/ScreenshotResult;

    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 17
    return-void
.end method
