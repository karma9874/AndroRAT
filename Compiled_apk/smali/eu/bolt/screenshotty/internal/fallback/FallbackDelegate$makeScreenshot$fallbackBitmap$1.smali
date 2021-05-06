.class final Leu/bolt/screenshotty/internal/fallback/FallbackDelegate$makeScreenshot$fallbackBitmap$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FallbackDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;->makeScreenshot()Leu/bolt/screenshotty/ScreenshotResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Leu/bolt/screenshotty/FallbackStrategy;",
        "Landroid/graphics/Bitmap;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Bitmap;",
        "it",
        "Leu/bolt/screenshotty/FallbackStrategy;",
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic this$0:Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;


# direct methods
.method constructor <init>(Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Leu/bolt/screenshotty/internal/fallback/FallbackDelegate$makeScreenshot$fallbackBitmap$1;->this$0:Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;

    iput-object p2, p0, Leu/bolt/screenshotty/internal/fallback/FallbackDelegate$makeScreenshot$fallbackBitmap$1;->$activity:Landroid/app/Activity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Leu/bolt/screenshotty/FallbackStrategy;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "it"    # Leu/bolt/screenshotty/FallbackStrategy;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Leu/bolt/screenshotty/internal/fallback/FallbackDelegate$makeScreenshot$fallbackBitmap$1;->this$0:Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;

    iget-object v1, p0, Leu/bolt/screenshotty/internal/fallback/FallbackDelegate$makeScreenshot$fallbackBitmap$1;->$activity:Landroid/app/Activity;

    invoke-static {v0, p1, v1}, Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;->access$tryTakeScreenshot(Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;Leu/bolt/screenshotty/FallbackStrategy;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Leu/bolt/screenshotty/FallbackStrategy;

    invoke-virtual {p0, p1}, Leu/bolt/screenshotty/internal/fallback/FallbackDelegate$makeScreenshot$fallbackBitmap$1;->invoke(Leu/bolt/screenshotty/FallbackStrategy;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
