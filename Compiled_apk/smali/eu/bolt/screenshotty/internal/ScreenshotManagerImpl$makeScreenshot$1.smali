.class final Leu/bolt/screenshotty/internal/ScreenshotManagerImpl$makeScreenshot$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ScreenshotManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;->makeScreenshot()Leu/bolt/screenshotty/ScreenshotResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Leu/bolt/screenshotty/ScreenshotResult;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Leu/bolt/screenshotty/ScreenshotResult;",
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
.field final synthetic this$0:Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;


# direct methods
.method constructor <init>(Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;)V
    .locals 0

    iput-object p1, p0, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl$makeScreenshot$1;->this$0:Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Leu/bolt/screenshotty/ScreenshotResult;
    .locals 1

    .line 30
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl$makeScreenshot$1;->this$0:Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;

    invoke-static {v0}, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;->access$getMediaProjectionDelegate$p(Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;)Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;

    move-result-object v0

    invoke-interface {v0}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;->makeScreenshot()Leu/bolt/screenshotty/ScreenshotResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl$makeScreenshot$1;->invoke()Leu/bolt/screenshotty/ScreenshotResult;

    move-result-object v0

    return-object v0
.end method
