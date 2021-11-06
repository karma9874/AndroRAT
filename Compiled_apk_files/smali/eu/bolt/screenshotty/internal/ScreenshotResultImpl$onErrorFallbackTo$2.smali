.class final Leu/bolt/screenshotty/internal/ScreenshotResultImpl$onErrorFallbackTo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ScreenshotResultImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->onErrorFallbackTo(Lkotlin/jvm/functions/Function0;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "error",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $newResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

.field final synthetic $resultProvider:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Leu/bolt/screenshotty/internal/ScreenshotResultImpl;)V
    .locals 0

    iput-object p1, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$onErrorFallbackTo$2;->$resultProvider:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$onErrorFallbackTo$2;->$newResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$onErrorFallbackTo$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Throwable;

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    invoke-virtual {v0, p1}, Leu/bolt/screenshotty/internal/Utils;->logE(Ljava/lang/Throwable;)V

    .line 41
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$onErrorFallbackTo$2;->$resultProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/bolt/screenshotty/ScreenshotResult;

    .line 42
    .local v0, "next":Leu/bolt/screenshotty/ScreenshotResult;
    new-instance v1, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$onErrorFallbackTo$2$1;

    iget-object v2, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$onErrorFallbackTo$2;->$newResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    invoke-direct {v1, v2}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$onErrorFallbackTo$2$1;-><init>(Leu/bolt/screenshotty/internal/ScreenshotResultImpl;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$onErrorFallbackTo$2$2;

    iget-object v3, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$onErrorFallbackTo$2;->$newResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    invoke-direct {v2, v3}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$onErrorFallbackTo$2$2;-><init>(Leu/bolt/screenshotty/internal/ScreenshotResultImpl;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v2}, Leu/bolt/screenshotty/ScreenshotResult;->observe(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Leu/bolt/screenshotty/ScreenshotResult$Subscription;

    .line 43
    .end local v0    # "next":Leu/bolt/screenshotty/ScreenshotResult;
    return-void
.end method
