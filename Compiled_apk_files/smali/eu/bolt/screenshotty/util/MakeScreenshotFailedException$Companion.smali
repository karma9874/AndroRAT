.class public final Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;
.super Ljava/lang/Object;
.source "MakeScreenshotFailedException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0004J\u0006\u0010\u000c\u001a\u00020\u0004\u00a8\u0006\r"
    }
    d2 = {
        "Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;",
        "",
        "()V",
        "failedToAcquireImage",
        "Leu/bolt/screenshotty/util/MakeScreenshotFailedException;",
        "failedToCreateMediaProjection",
        "fallbackStrategiesFailed",
        "noActivityReference",
        "pixelCopyFailed",
        "code",
        "",
        "pixelCopyNotSupported",
        "projectionNotSupported",
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
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 10
    invoke-direct {p0}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final failedToAcquireImage()Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    .locals 2

    .line 15
    new-instance v0, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    const-string v1, "ImageReader::acquireLatestImage returned null"

    invoke-direct {v0, v1}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final failedToCreateMediaProjection()Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    .locals 2

    .line 13
    new-instance v0, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    const-string v1, "Failed to create MediaProjection object"

    invoke-direct {v0, v1}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final fallbackStrategiesFailed()Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    .locals 2

    .line 23
    new-instance v0, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    const-string v1, "All fallback strategies failed"

    invoke-direct {v0, v1}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final noActivityReference()Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    .locals 2

    .line 11
    new-instance v0, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    const-string v1, "Can\'t make a screenshot because Activity was garbage collected"

    invoke-direct {v0, v1}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final pixelCopyFailed(I)Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    .locals 3
    .param p1, "code"    # I

    .line 21
    new-instance v0, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PixelCopy failed, result code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final pixelCopyNotSupported()Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    .locals 2

    .line 19
    new-instance v0, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    const-string v1, "PixelCopy not supported on this API version"

    invoke-direct {v0, v1}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final projectionNotSupported()Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    .locals 2

    .line 17
    new-instance v0, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    const-string v1, "MediaProjection not supported on this API version"

    invoke-direct {v0, v1}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
