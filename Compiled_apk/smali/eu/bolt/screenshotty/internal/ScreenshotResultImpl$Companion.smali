.class public final Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;
.super Ljava/lang/Object;
.source "ScreenshotResultImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenshotResultImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenshotResultImpl.kt\neu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion\n*L\n1#1,97:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;",
        "",
        "()V",
        "error",
        "Leu/bolt/screenshotty/internal/ScreenshotResultImpl;",
        "e",
        "",
        "from",
        "another",
        "Leu/bolt/screenshotty/ScreenshotResult;",
        "success",
        "screenshot",
        "Leu/bolt/screenshotty/Screenshot;",
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

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 82
    invoke-direct {p0}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/Throwable;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;-><init>(Leu/bolt/screenshotty/internal/ScreenshotSpec;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    .local v1, "$this$apply":Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    const/4 v2, 0x0

    .line 88
    .local v2, "$i$a$-apply-ScreenshotResultImpl$Companion$error$1":I
    invoke-virtual {v1, p1}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->onError(Ljava/lang/Throwable;)V

    .line 89
    .end local v1    # "$this$apply":Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    .end local v2    # "$i$a$-apply-ScreenshotResultImpl$Companion$error$1":I
    nop

    .line 87
    nop

    .line 89
    return-object v0
.end method

.method public final from(Leu/bolt/screenshotty/ScreenshotResult;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    .locals 3
    .param p1, "another"    # Leu/bolt/screenshotty/ScreenshotResult;

    const-string v0, "another"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;-><init>(Leu/bolt/screenshotty/internal/ScreenshotSpec;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    .local v0, "result":Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    new-instance v1, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion$from$1;

    invoke-direct {v1, v0}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion$from$1;-><init>(Leu/bolt/screenshotty/internal/ScreenshotResultImpl;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion$from$2;

    invoke-direct {v2, v0}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion$from$2;-><init>(Leu/bolt/screenshotty/internal/ScreenshotResultImpl;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v1, v2}, Leu/bolt/screenshotty/ScreenshotResult;->observe(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Leu/bolt/screenshotty/ScreenshotResult$Subscription;

    .line 94
    return-object v0
.end method

.method public final success(Leu/bolt/screenshotty/Screenshot;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    .locals 3
    .param p1, "screenshot"    # Leu/bolt/screenshotty/Screenshot;

    const-string v0, "screenshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;-><init>(Leu/bolt/screenshotty/internal/ScreenshotSpec;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    .local v1, "$this$apply":Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    const/4 v2, 0x0

    .line 84
    .local v2, "$i$a$-apply-ScreenshotResultImpl$Companion$success$1":I
    invoke-virtual {v1, p1}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->onSuccess(Leu/bolt/screenshotty/Screenshot;)V

    .line 85
    .end local v1    # "$this$apply":Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    .end local v2    # "$i$a$-apply-ScreenshotResultImpl$Companion$success$1":I
    nop

    .line 83
    nop

    .line 85
    return-object v0
.end method
