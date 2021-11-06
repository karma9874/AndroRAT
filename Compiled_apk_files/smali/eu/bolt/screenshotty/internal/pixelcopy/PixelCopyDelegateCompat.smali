.class public final Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateCompat;
.super Ljava/lang/Object;
.source "PixelCopyDelegateCompat.kt"

# interfaces
.implements Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateCompat;",
        "Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegate;",
        "()V",
        "makeScreenshot",
        "Leu/bolt/screenshotty/ScreenshotResult;",
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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeScreenshot()Leu/bolt/screenshotty/ScreenshotResult;
    .locals 3

    .line 10
    sget-object v0, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;->Companion:Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;

    invoke-virtual {v0}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;->pixelCopyNotSupported()Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    move-result-object v0

    .line 11
    .local v0, "exception":Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    sget-object v1, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->Companion:Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;->error(Ljava/lang/Throwable;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    move-result-object v1

    check-cast v1, Leu/bolt/screenshotty/ScreenshotResult;

    return-object v1
.end method
