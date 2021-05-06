.class public final Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;
.super Ljava/lang/Object;
.source "FallbackDelegate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u0010*\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R\u001c\u0010\n\u001a\u0010\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u00030\u00030\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "strategies",
        "",
        "Leu/bolt/screenshotty/FallbackStrategy;",
        "panelRenderer",
        "Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;",
        "(Landroid/app/Activity;Ljava/util/List;Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;)V",
        "activityRef",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "makeScreenshot",
        "Leu/bolt/screenshotty/ScreenshotResult;",
        "tryTakeScreenshot",
        "Landroid/graphics/Bitmap;",
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
.field private final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final strategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/bolt/screenshotty/FallbackStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "strategies"    # Ljava/util/List;
    .param p3, "panelRenderer"    # Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "+",
            "Leu/bolt/screenshotty/FallbackStrategy;",
            ">;",
            "Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strategies"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "panelRenderer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;->activityRef:Ljava/lang/ref/WeakReference;

    .line 19
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Leu/bolt/screenshotty/internal/fallback/DefaultFallbackStrategy;

    invoke-direct {v1, p3}, Leu/bolt/screenshotty/internal/fallback/DefaultFallbackStrategy;-><init>(Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;->strategies:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$tryTakeScreenshot(Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;Leu/bolt/screenshotty/FallbackStrategy;Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "$this"    # Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;
    .param p1, "$this$access_u24tryTakeScreenshot"    # Leu/bolt/screenshotty/FallbackStrategy;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 13
    invoke-direct {p0, p1, p2}, Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;->tryTakeScreenshot(Leu/bolt/screenshotty/FallbackStrategy;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private final tryTakeScreenshot(Leu/bolt/screenshotty/FallbackStrategy;Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "$this$tryTakeScreenshot"    # Leu/bolt/screenshotty/FallbackStrategy;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 40
    nop

    .line 41
    :try_start_0
    invoke-interface {p1, p2}, Leu/bolt/screenshotty/FallbackStrategy;->takeScreenshot(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Leu/bolt/screenshotty/internal/Utils;->logE(Ljava/lang/Throwable;)V

    .line 44
    const/4 v1, 0x0

    move-object v0, v1

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 45
    return-object v0
.end method


# virtual methods
.method public final makeScreenshot()Leu/bolt/screenshotty/ScreenshotResult;
    .locals 5

    .line 22
    iget-object v0, p0, Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 23
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 24
    sget-object v1, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;->Companion:Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;

    invoke-virtual {v1}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;->noActivityReference()Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    move-result-object v1

    .line 25
    .local v1, "error":Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    sget-object v2, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->Companion:Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;->error(Ljava/lang/Throwable;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    move-result-object v2

    check-cast v2, Leu/bolt/screenshotty/ScreenshotResult;

    return-object v2

    .line 27
    .end local v1    # "error":Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    :cond_0
    nop

    .line 30
    nop

    .line 27
    nop

    .line 29
    nop

    .line 27
    nop

    .line 28
    nop

    .line 27
    iget-object v1, p0, Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;->strategies:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 28
    new-instance v2, Leu/bolt/screenshotty/internal/fallback/FallbackDelegate$makeScreenshot$fallbackBitmap$1;

    invoke-direct {v2, p0, v0}, Leu/bolt/screenshotty/internal/fallback/FallbackDelegate$makeScreenshot$fallbackBitmap$1;-><init>(Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;Landroid/app/Activity;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 29
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 30
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    check-cast v1, Landroid/graphics/Bitmap;

    .line 31
    .local v1, "fallbackBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 32
    new-instance v2, Leu/bolt/screenshotty/ScreenshotBitmap;

    invoke-direct {v2, v1}, Leu/bolt/screenshotty/ScreenshotBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    .local v2, "screenshot":Leu/bolt/screenshotty/ScreenshotBitmap;
    sget-object v3, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->Companion:Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;

    move-object v4, v2

    check-cast v4, Leu/bolt/screenshotty/Screenshot;

    invoke-virtual {v3, v4}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;->success(Leu/bolt/screenshotty/Screenshot;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    move-result-object v3

    check-cast v3, Leu/bolt/screenshotty/ScreenshotResult;

    .end local v2    # "screenshot":Leu/bolt/screenshotty/ScreenshotBitmap;
    goto :goto_0

    .line 35
    :cond_1
    sget-object v2, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;->Companion:Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;

    invoke-virtual {v2}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;->fallbackStrategiesFailed()Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    move-result-object v2

    .line 36
    .local v2, "error":Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    sget-object v3, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->Companion:Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;->error(Ljava/lang/Throwable;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    move-result-object v3

    check-cast v3, Leu/bolt/screenshotty/ScreenshotResult;

    .line 31
    .end local v2    # "error":Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    :goto_0
    return-object v3
.end method
