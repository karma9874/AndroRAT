.class public interface abstract Leu/bolt/screenshotty/ScreenshotResult;
.super Ljava/lang/Object;
.source "ScreenshotResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/bolt/screenshotty/ScreenshotResult$Subscription;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001:\u0001\nJ0\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00052\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u0005H&\u00a8\u0006\u000b"
    }
    d2 = {
        "Leu/bolt/screenshotty/ScreenshotResult;",
        "",
        "observe",
        "Leu/bolt/screenshotty/ScreenshotResult$Subscription;",
        "onSuccess",
        "Lkotlin/Function1;",
        "Leu/bolt/screenshotty/Screenshot;",
        "",
        "onError",
        "",
        "Subscription",
        "screenshotty-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# virtual methods
.method public abstract observe(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Leu/bolt/screenshotty/ScreenshotResult$Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Leu/bolt/screenshotty/Screenshot;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Leu/bolt/screenshotty/ScreenshotResult$Subscription;"
        }
    .end annotation
.end method
