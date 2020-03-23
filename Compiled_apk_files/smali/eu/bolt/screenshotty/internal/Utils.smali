.class public final Leu/bolt/screenshotty/internal/Utils;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\neu/bolt/screenshotty/internal/Utils\n*L\n1#1,71:1\n52#1,5:72\n52#1,5:77\n52#1,5:82\n52#1,5:87\n52#1,5:92\n*E\n*S KotlinDebug\n*F\n+ 1 Utils.kt\neu/bolt/screenshotty/internal/Utils\n*L\n27#1,5:72\n32#1,5:77\n37#1,5:82\n42#1,5:87\n47#1,5:92\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u0012\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u0012\u0010\t\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007J\u0017\u0010\u000e\u001a\u00020\u00082\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0010H\u0082\u0008J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0006H\u0007J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\u0012\u0010\u0018\u001a\u00020\u00082\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0007J\u0012\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/Utils;",
        "",
        "()V",
        "LOG_ENABLED",
        "",
        "LOG_TAG",
        "",
        "checkOnMainThread",
        "",
        "closeSafely",
        "image",
        "Landroid/media/Image;",
        "reader",
        "Landroid/media/ImageReader;",
        "doSafely",
        "action",
        "Lkotlin/Function0;",
        "interruptSafely",
        "thread",
        "Landroid/os/HandlerThread;",
        "logE",
        "message",
        "throwable",
        "",
        "releaseSafely",
        "display",
        "Landroid/hardware/display/VirtualDisplay;",
        "stopSafely",
        "projection",
        "Landroid/media/projection/MediaProjection;",
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
.field public static final INSTANCE:Leu/bolt/screenshotty/internal/Utils;

.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "screenshot"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Leu/bolt/screenshotty/internal/Utils;

    invoke-direct {v0}, Leu/bolt/screenshotty/internal/Utils;-><init>()V

    sput-object v0, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final doSafely(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1, "action"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    .local v0, "$i$f$doSafely":I
    nop

    .line 53
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p0, v2}, Leu/bolt/screenshotty/internal/Utils;->logE(Ljava/lang/Throwable;)V

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public final checkOnMainThread()V
    .locals 2

    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 24
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "The method can be called only on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final closeSafely(Landroid/media/Image;)V
    .locals 4
    .param p1, "image"    # Landroid/media/Image;

    .line 27
    move-object v0, p0

    .local v0, "this_$iv":Leu/bolt/screenshotty/internal/Utils;
    const/4 v1, 0x0

    .line 72
    .local v1, "$i$f$doSafely":I
    nop

    .line 73
    const/4 v2, 0x0

    .line 28
    .local v2, "$i$a$-doSafely-Utils$closeSafely$1":I
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v2    # "$i$a$-doSafely-Utils$closeSafely$1":I
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e$iv":Ljava/lang/Exception;
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Leu/bolt/screenshotty/internal/Utils;->logE(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 29
    .end local v2    # "e$iv":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 76
    :goto_1
    nop

    .line 29
    .end local v0    # "this_$iv":Leu/bolt/screenshotty/internal/Utils;
    .end local v1    # "$i$f$doSafely":I
    return-void
.end method

.method public final closeSafely(Landroid/media/ImageReader;)V
    .locals 4
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 32
    move-object v0, p0

    .local v0, "this_$iv":Leu/bolt/screenshotty/internal/Utils;
    const/4 v1, 0x0

    .line 77
    .local v1, "$i$f$doSafely":I
    nop

    .line 78
    const/4 v2, 0x0

    .line 33
    .local v2, "$i$a$-doSafely-Utils$closeSafely$2":I
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v2    # "$i$a$-doSafely-Utils$closeSafely$2":I
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e$iv":Ljava/lang/Exception;
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Leu/bolt/screenshotty/internal/Utils;->logE(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 34
    .end local v2    # "e$iv":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 81
    :goto_1
    nop

    .line 34
    .end local v0    # "this_$iv":Leu/bolt/screenshotty/internal/Utils;
    .end local v1    # "$i$f$doSafely":I
    return-void
.end method

.method public final interruptSafely(Landroid/os/HandlerThread;)V
    .locals 4
    .param p1, "thread"    # Landroid/os/HandlerThread;

    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v0, p0

    .local v0, "this_$iv":Leu/bolt/screenshotty/internal/Utils;
    const/4 v1, 0x0

    .line 92
    .local v1, "$i$f$doSafely":I
    nop

    .line 93
    const/4 v2, 0x0

    .line 48
    .local v2, "$i$a$-doSafely-Utils$interruptSafely$1":I
    :try_start_0
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 49
    invoke-virtual {p1}, Landroid/os/HandlerThread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v2    # "$i$a$-doSafely-Utils$interruptSafely$1":I
    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e$iv":Ljava/lang/Exception;
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Leu/bolt/screenshotty/internal/Utils;->logE(Ljava/lang/Throwable;)V

    .line 96
    .end local v2    # "e$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .line 50
    .end local v0    # "this_$iv":Leu/bolt/screenshotty/internal/Utils;
    .end local v1    # "$i$f$doSafely":I
    return-void
.end method

.method public final logE(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    nop

    .line 70
    return-void
.end method

.method public final logE(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    nop

    .line 63
    return-void
.end method

.method public final releaseSafely(Landroid/hardware/display/VirtualDisplay;)V
    .locals 4
    .param p1, "display"    # Landroid/hardware/display/VirtualDisplay;

    .line 42
    move-object v0, p0

    .local v0, "this_$iv":Leu/bolt/screenshotty/internal/Utils;
    const/4 v1, 0x0

    .line 87
    .local v1, "$i$f$doSafely":I
    nop

    .line 88
    const/4 v2, 0x0

    .line 43
    .local v2, "$i$a$-doSafely-Utils$releaseSafely$1":I
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v2    # "$i$a$-doSafely-Utils$releaseSafely$1":I
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e$iv":Ljava/lang/Exception;
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Leu/bolt/screenshotty/internal/Utils;->logE(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 44
    .end local v2    # "e$iv":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 91
    :goto_1
    nop

    .line 44
    .end local v0    # "this_$iv":Leu/bolt/screenshotty/internal/Utils;
    .end local v1    # "$i$f$doSafely":I
    return-void
.end method

.method public final stopSafely(Landroid/media/projection/MediaProjection;)V
    .locals 4
    .param p1, "projection"    # Landroid/media/projection/MediaProjection;

    .line 37
    move-object v0, p0

    .local v0, "this_$iv":Leu/bolt/screenshotty/internal/Utils;
    const/4 v1, 0x0

    .line 82
    .local v1, "$i$f$doSafely":I
    nop

    .line 83
    const/4 v2, 0x0

    .line 38
    .local v2, "$i$a$-doSafely-Utils$stopSafely$1":I
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/projection/MediaProjection;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v2    # "$i$a$-doSafely-Utils$stopSafely$1":I
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e$iv":Ljava/lang/Exception;
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Leu/bolt/screenshotty/internal/Utils;->logE(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 39
    .end local v2    # "e$iv":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 86
    :goto_1
    nop

    .line 39
    .end local v0    # "this_$iv":Leu/bolt/screenshotty/internal/Utils;
    .end local v1    # "$i$f$doSafely":I
    return-void
.end method
