.class public final Leu/bolt/screenshotty/internal/fallback/DefaultFallbackStrategy;
.super Ljava/lang/Object;
.source "DefaultFallbackStrategy.kt"

# interfaces
.implements Leu/bolt/screenshotty/FallbackStrategy;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/fallback/DefaultFallbackStrategy;",
        "Leu/bolt/screenshotty/FallbackStrategy;",
        "floatingPanelRenderer",
        "Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;",
        "(Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;)V",
        "takeScreenshot",
        "Landroid/graphics/Bitmap;",
        "activity",
        "Landroid/app/Activity;",
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
.field private final floatingPanelRenderer:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;


# direct methods
.method public constructor <init>(Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;)V
    .locals 1
    .param p1, "floatingPanelRenderer"    # Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;

    const-string v0, "floatingPanelRenderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu/bolt/screenshotty/internal/fallback/DefaultFallbackStrategy;->floatingPanelRenderer:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;

    return-void
.end method


# virtual methods
.method public takeScreenshot(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Leu/bolt/screenshotty/internal/ScreenshotSpec;

    invoke-direct {v0, p1}, Leu/bolt/screenshotty/internal/ScreenshotSpec;-><init>(Landroid/app/Activity;)V

    .line 16
    .local v0, "spec":Leu/bolt/screenshotty/internal/ScreenshotSpec;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "activity.window"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "activity.window.decorView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .local v1, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Leu/bolt/screenshotty/internal/ScreenshotSpec;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Leu/bolt/screenshotty/internal/ScreenshotSpec;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 18
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 19
    iget-object v3, p0, Leu/bolt/screenshotty/internal/fallback/DefaultFallbackStrategy;->floatingPanelRenderer:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;

    const-string v4, "bitmap"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1, v2}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;->tryRenderDialogs(Landroid/app/Activity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method
