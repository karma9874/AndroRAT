.class public final Leu/bolt/screenshotty/util/ScreenshotFileSaver;
.super Ljava/lang/Object;
.source "ScreenshotFileSaver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/bolt/screenshotty/util/ScreenshotFileSaver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Leu/bolt/screenshotty/util/ScreenshotFileSaver;",
        "",
        "compressFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "compressQuality",
        "",
        "(Landroid/graphics/Bitmap$CompressFormat;I)V",
        "saveToFile",
        "",
        "targetFile",
        "Ljava/io/File;",
        "screenshot",
        "Leu/bolt/screenshotty/Screenshot;",
        "screenshotToBitmap",
        "Landroid/graphics/Bitmap;",
        "Companion",
        "screenshotty-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Leu/bolt/screenshotty/util/ScreenshotFileSaver$Companion;

.field public static final QUALITY_BEST:I = 0x64


# instance fields
.field private final compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final compressQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Leu/bolt/screenshotty/util/ScreenshotFileSaver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leu/bolt/screenshotty/util/ScreenshotFileSaver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Leu/bolt/screenshotty/util/ScreenshotFileSaver;->Companion:Leu/bolt/screenshotty/util/ScreenshotFileSaver$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0
    .param p1, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "compressQuality"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu/bolt/screenshotty/util/ScreenshotFileSaver;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iput p2, p0, Leu/bolt/screenshotty/util/ScreenshotFileSaver;->compressQuality:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Bitmap$CompressFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "compressQuality"    # I
    .param p3, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 10
    invoke-direct {p0, p1, p2}, Leu/bolt/screenshotty/util/ScreenshotFileSaver;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void
.end method

.method private final screenshotToBitmap(Leu/bolt/screenshotty/Screenshot;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "screenshot"    # Leu/bolt/screenshotty/Screenshot;

    .line 23
    nop

    .line 24
    instance-of v0, p1, Leu/bolt/screenshotty/ScreenshotBitmap;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Leu/bolt/screenshotty/ScreenshotBitmap;

    invoke-virtual {v0}, Leu/bolt/screenshotty/ScreenshotBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 23
    nop

    .line 25
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final saveToFile(Ljava/io/File;Leu/bolt/screenshotty/Screenshot;)V
    .locals 4
    .param p1, "targetFile"    # Ljava/io/File;
    .param p2, "screenshot"    # Leu/bolt/screenshotty/Screenshot;

    const-string v0, "targetFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenshot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p2}, Leu/bolt/screenshotty/util/ScreenshotFileSaver;->screenshotToBitmap(Leu/bolt/screenshotty/Screenshot;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 17
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 20
    :cond_0
    iget-object v1, p0, Leu/bolt/screenshotty/util/ScreenshotFileSaver;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Leu/bolt/screenshotty/util/ScreenshotFileSaver;->compressQuality:I

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v3, Ljava/io/OutputStream;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 21
    return-void
.end method
