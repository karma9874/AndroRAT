.class public final Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;
.super Ljava/lang/Object;
.source "ScreenshotManagerImpl.kt"

# interfaces
.implements Leu/bolt/screenshotty/ScreenshotManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0018\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0018\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\"\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;",
        "Leu/bolt/screenshotty/ScreenshotManager;",
        "activity",
        "Landroid/app/Activity;",
        "fallbackStrategies",
        "",
        "Leu/bolt/screenshotty/FallbackStrategy;",
        "permissionRequestCode",
        "",
        "(Landroid/app/Activity;Ljava/util/List;I)V",
        "fallbackDelegate",
        "Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;",
        "mediaProjectionDelegate",
        "Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;",
        "panelRenderer",
        "Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;",
        "pixelCopyDelegate",
        "Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegate;",
        "createMediaProjectionDelegate",
        "createPixelCopyDelegate",
        "makeScreenshot",
        "Leu/bolt/screenshotty/ScreenshotResult;",
        "onActivityResult",
        "",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
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
.field private final fallbackDelegate:Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;

.field private final mediaProjectionDelegate:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;

.field private final panelRenderer:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;

.field private final pixelCopyDelegate:Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegate;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fallbackStrategies"    # Ljava/util/List;
    .param p3, "permissionRequestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "+",
            "Leu/bolt/screenshotty/FallbackStrategy;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallbackStrategies"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;

    sget-object v1, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider;->Companion:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$Companion;

    invoke-virtual {v1}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$Companion;->getInstance()Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;-><init>(Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider;)V

    iput-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;->panelRenderer:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;

    .line 24
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;->panelRenderer:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;

    invoke-direct {p0, p1, v0}, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;->createPixelCopyDelegate(Landroid/app/Activity;Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;)Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegate;

    move-result-object v0

    iput-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;->pixelCopyDelegate:Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegate;

    .line 25
    invoke-direct {p0, p1, p3}, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;->createMediaProjectionDelegate(Landroid/app/Activity;I)Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;

    move-result-object v0

    iput-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;->mediaProjectionDelegate:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;

    .line 26
    new-instance v0, Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;

    iget-object v1, p0, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;->panelRenderer:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;

    invoke-direct {v0, p1, p2, v1}, Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;-><init>(Landroid/app/Activity;Ljava/util/List;Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;)V

    iput-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;->fallbackDelegate:Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;

    return-void
.end method

.method public static final synthetic access$getFallbackDelegate$p(Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;)Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;
    .locals 1
    .param p0, "$this"    # Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;

    .line 17
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;->fallbackDelegate:Leu/bolt/screenshotty/internal/fallback/FallbackDelegate;

    return-object v0
.end method

.method public static final synthetic access$getMediaProjectionDelegate$p(Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;)Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;
    .locals 1
    .param p0, "$this"    # Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;

    .line 17
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;->mediaProjectionDelegate:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;

    return-object v0
.end method

.method private final createMediaProjectionDelegate(Landroid/app/Activity;I)Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permissionRequestCode"    # I

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 47
    new-instance v0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    invoke-direct {v0, p1, p2}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;-><init>(Landroid/app/Activity;I)V

    check-cast v0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateCompat;

    invoke-direct {v0}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateCompat;-><init>()V

    check-cast v0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;

    .line 46
    :goto_0
    nop

    .line 50
    return-object v0
.end method

.method private final createPixelCopyDelegate(Landroid/app/Activity;Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;)Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegate;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "panelRenderer"    # Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 40
    new-instance v0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;

    invoke-direct {v0, p1, p2}, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;-><init>(Landroid/app/Activity;Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;)V

    check-cast v0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegate;

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateCompat;

    invoke-direct {v0}, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateCompat;-><init>()V

    check-cast v0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegate;

    .line 39
    :goto_0
    nop

    .line 43
    return-object v0
.end method


# virtual methods
.method public makeScreenshot()Leu/bolt/screenshotty/ScreenshotResult;
    .locals 2

    .line 29
    nop

    .line 31
    nop

    .line 29
    nop

    .line 30
    nop

    .line 29
    sget-object v0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->Companion:Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;

    iget-object v1, p0, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;->pixelCopyDelegate:Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegate;

    invoke-interface {v1}, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegate;->makeScreenshot()Leu/bolt/screenshotty/ScreenshotResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;->from(Leu/bolt/screenshotty/ScreenshotResult;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    move-result-object v0

    .line 30
    new-instance v1, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl$makeScreenshot$1;

    invoke-direct {v1, p0}, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl$makeScreenshot$1;-><init>(Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->onErrorFallbackTo(Lkotlin/jvm/functions/Function0;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    move-result-object v0

    .line 31
    new-instance v1, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl$makeScreenshot$2;

    invoke-direct {v1, p0}, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl$makeScreenshot$2;-><init>(Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->onErrorFallbackTo(Lkotlin/jvm/functions/Function0;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    move-result-object v0

    check-cast v0, Leu/bolt/screenshotty/ScreenshotResult;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;->mediaProjectionDelegate:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;

    invoke-interface {v0, p1, p2, p3}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;->onActivityResult(IILandroid/content/Intent;)V

    .line 36
    return-void
.end method
