.class final Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;
.super Ljava/lang/Object;
.source "ScreenshotResultImpl.kt"

# interfaces
.implements Leu/bolt/screenshotty/ScreenshotResult$Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubscriptionImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001B1\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000f\u001a\u00020\u0005H\u0016R(\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR(\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;",
        "Leu/bolt/screenshotty/ScreenshotResult$Subscription;",
        "onSuccess",
        "Lkotlin/Function1;",
        "Leu/bolt/screenshotty/Screenshot;",
        "",
        "onError",
        "",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getOnError",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnError",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getOnSuccess",
        "setOnSuccess",
        "dispose",
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
.field private onError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onSuccess:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Leu/bolt/screenshotty/Screenshot;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "onSuccess"    # Lkotlin/jvm/functions/Function1;
    .param p2, "onError"    # Lkotlin/jvm/functions/Function1;
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
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;->onSuccess:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;->onError:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 76
    sget-object v0, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    invoke-virtual {v0}, Leu/bolt/screenshotty/internal/Utils;->checkOnMainThread()V

    .line 77
    const/4 v0, 0x0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;->onSuccess:Lkotlin/jvm/functions/Function1;

    .line 78
    iput-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;->onError:Lkotlin/jvm/functions/Function1;

    .line 79
    return-void
.end method

.method public final getOnError()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;->onError:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnSuccess()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Leu/bolt/screenshotty/Screenshot;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;->onSuccess:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final setOnError(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;->onError:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnSuccess(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Leu/bolt/screenshotty/Screenshot;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;->onSuccess:Lkotlin/jvm/functions/Function1;

    return-void
.end method
