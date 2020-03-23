.class public final Leu/bolt/screenshotty/util/ScreenshotFileSaver$Companion;
.super Ljava/lang/Object;
.source "ScreenshotFileSaver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/bolt/screenshotty/util/ScreenshotFileSaver;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0003\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Leu/bolt/screenshotty/util/ScreenshotFileSaver$Companion;",
        "",
        "()V",
        "QUALITY_BEST",
        "",
        "create",
        "Leu/bolt/screenshotty/util/ScreenshotFileSaver;",
        "compressFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "compressQuality",
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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 27
    invoke-direct {p0}, Leu/bolt/screenshotty/util/ScreenshotFileSaver$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Leu/bolt/screenshotty/util/ScreenshotFileSaver$Companion;Landroid/graphics/Bitmap$CompressFormat;IILjava/lang/Object;)Leu/bolt/screenshotty/util/ScreenshotFileSaver;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 31
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 32
    const/16 p2, 0x64

    :cond_1
    invoke-virtual {p0, p1, p2}, Leu/bolt/screenshotty/util/ScreenshotFileSaver$Companion;->create(Landroid/graphics/Bitmap$CompressFormat;I)Leu/bolt/screenshotty/util/ScreenshotFileSaver;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroid/graphics/Bitmap$CompressFormat;I)Leu/bolt/screenshotty/util/ScreenshotFileSaver;
    .locals 2
    .param p1, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "compressQuality"    # I

    const-string v0, "compressFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Leu/bolt/screenshotty/util/ScreenshotFileSaver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Leu/bolt/screenshotty/util/ScreenshotFileSaver;-><init>(Landroid/graphics/Bitmap$CompressFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
