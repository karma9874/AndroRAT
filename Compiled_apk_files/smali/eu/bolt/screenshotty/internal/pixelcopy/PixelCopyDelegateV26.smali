.class public final Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;
.super Ljava/lang/Object;
.source "PixelCopyDelegateV26.kt"

# interfaces
.implements Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegate;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPixelCopyDelegateV26.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PixelCopyDelegateV26.kt\neu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26\n*L\n1#1,92:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0018\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002R\u001c\u0010\u0007\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00030\u00030\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;",
        "Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegate;",
        "activity",
        "Landroid/app/Activity;",
        "floatingPanelRenderer",
        "Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;",
        "(Landroid/app/Activity;Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;)V",
        "activityReference",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "mainThreadHandler",
        "Landroid/os/Handler;",
        "pendingResult",
        "Leu/bolt/screenshotty/internal/ScreenshotResultImpl;",
        "doMakePixelCopy",
        "",
        "spec",
        "Leu/bolt/screenshotty/internal/ScreenshotSpec;",
        "makePixelCopyWhenDrawn",
        "makeScreenshot",
        "Leu/bolt/screenshotty/ScreenshotResult;",
        "onPixelCopyFailed",
        "error",
        "Ljava/lang/Exception;",
        "onPixelCopyTaken",
        "resultCode",
        "",
        "bitmap",
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
.field private final activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final floatingPanelRenderer:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;

.field private final mainThreadHandler:Landroid/os/Handler;

.field private pendingResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "floatingPanelRenderer"    # Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "floatingPanelRenderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->floatingPanelRenderer:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->activityReference:Ljava/lang/ref/WeakReference;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->mainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$doMakePixelCopy(Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;Landroid/app/Activity;Leu/bolt/screenshotty/internal/ScreenshotSpec;)V
    .locals 0
    .param p0, "$this"    # Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spec"    # Leu/bolt/screenshotty/internal/ScreenshotSpec;

    .line 22
    invoke-direct {p0, p1, p2}, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->doMakePixelCopy(Landroid/app/Activity;Leu/bolt/screenshotty/internal/ScreenshotSpec;)V

    return-void
.end method

.method public static final synthetic access$getMainThreadHandler$p(Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;)Landroid/os/Handler;
    .locals 1
    .param p0, "$this"    # Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;

    .line 22
    iget-object v0, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->mainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic access$onPixelCopyTaken(Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "$this"    # Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;
    .param p1, "resultCode"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 22
    invoke-direct {p0, p1, p2}, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->onPixelCopyTaken(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private final doMakePixelCopy(Landroid/app/Activity;Leu/bolt/screenshotty/internal/ScreenshotSpec;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spec"    # Leu/bolt/screenshotty/internal/ScreenshotSpec;

    .line 58
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 59
    .local v0, "copyDestination":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 60
    .local v1, "window":Landroid/view/Window;
    nop

    .line 61
    :try_start_0
    invoke-virtual {p2}, Leu/bolt/screenshotty/internal/ScreenshotSpec;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Leu/bolt/screenshotty/internal/ScreenshotSpec;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 62
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    new-instance v3, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$doMakePixelCopy$1;

    invoke-direct {v3, p0, v0}, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$doMakePixelCopy$1;-><init>(Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v3, Landroid/view/PixelCopy$OnPixelCopyFinishedListener;

    iget-object v4, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->mainThreadHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v4}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/Exception;
    invoke-direct {p0, v2}, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->onPixelCopyFailed(Ljava/lang/Exception;)V

    .line 65
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 67
    return-void
.end method

.method private final makePixelCopyWhenDrawn(Landroid/app/Activity;Leu/bolt/screenshotty/internal/ScreenshotSpec;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spec"    # Leu/bolt/screenshotty/internal/ScreenshotSpec;

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "activity.window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "activity.window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;

    invoke-direct {v1, p0, p1, p2}, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;-><init>(Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;Landroid/app/Activity;Leu/bolt/screenshotty/internal/ScreenshotSpec;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Leu/bolt/screenshotty/internal/ExtensionsKt;->doOnPreDraw(Landroid/view/View;ZLkotlin/jvm/functions/Function0;)V

    .line 55
    return-void
.end method

.method private final onPixelCopyFailed(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Exception;

    .line 86
    sget-object v0, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    invoke-virtual {v0}, Leu/bolt/screenshotty/internal/Utils;->checkOnMainThread()V

    .line 87
    iget-object v0, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->pendingResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    if-eqz v0, :cond_0

    .local v0, "it":Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    const/4 v1, 0x0

    .line 88
    .local v1, "$i$a$-let-PixelCopyDelegateV26$onPixelCopyFailed$1":I
    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->onError(Ljava/lang/Throwable;)V

    .line 89
    const/4 v2, 0x0

    check-cast v2, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    iput-object v2, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->pendingResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    .line 90
    .end local v0    # "it":Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    .end local v1    # "$i$a$-let-PixelCopyDelegateV26$onPixelCopyFailed$1":I
    nop

    .line 87
    nop

    .line 91
    :cond_0
    return-void
.end method

.method private final onPixelCopyTaken(ILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 70
    sget-object v0, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    invoke-virtual {v0}, Leu/bolt/screenshotty/internal/Utils;->checkOnMainThread()V

    .line 71
    iget-object v0, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->pendingResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    if-eqz v0, :cond_2

    .line 72
    .local v0, "result":Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    if-nez p1, :cond_1

    .line 73
    iget-object v1, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .local v1, "it":Landroid/app/Activity;
    const/4 v2, 0x0

    .line 74
    .local v2, "$i$a$-let-PixelCopyDelegateV26$onPixelCopyTaken$screenshotBitmap$1":I
    iget-object v3, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->floatingPanelRenderer:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;

    const-string v4, "it"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, p2}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;->tryRenderDialogs(Landroid/app/Activity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 73
    .end local v1    # "it":Landroid/app/Activity;
    .end local v2    # "$i$a$-let-PixelCopyDelegateV26$onPixelCopyTaken$screenshotBitmap$1":I
    if-eqz v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    move-object v1, p2

    .line 73
    :goto_0
    nop

    .line 76
    .local v1, "screenshotBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Leu/bolt/screenshotty/ScreenshotBitmap;

    invoke-direct {v2, v1}, Leu/bolt/screenshotty/ScreenshotBitmap;-><init>(Landroid/graphics/Bitmap;)V

    check-cast v2, Leu/bolt/screenshotty/Screenshot;

    invoke-virtual {v0, v2}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->onSuccess(Leu/bolt/screenshotty/Screenshot;)V

    .end local v1    # "screenshotBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 78
    :cond_1
    sget-object v1, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;->Companion:Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;

    invoke-virtual {v1, p1}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;->pixelCopyFailed(I)Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    move-result-object v1

    .line 79
    .local v1, "error":Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->onError(Ljava/lang/Throwable;)V

    .line 80
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    .end local v1    # "error":Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    :goto_1
    nop

    .line 82
    const/4 v1, 0x0

    check-cast v1, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    iput-object v1, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->pendingResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    .line 83
    return-void

    .line 71
    .end local v0    # "result":Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    :cond_2
    return-void
.end method


# virtual methods
.method public makeScreenshot()Leu/bolt/screenshotty/ScreenshotResult;
    .locals 4

    .line 33
    sget-object v0, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    invoke-virtual {v0}, Leu/bolt/screenshotty/internal/Utils;->checkOnMainThread()V

    .line 34
    iget-object v0, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->pendingResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    if-eqz v0, :cond_1

    .line 35
    if-eqz v0, :cond_0

    check-cast v0, Leu/bolt/screenshotty/ScreenshotResult;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 37
    :cond_1
    iget-object v0, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 38
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 39
    sget-object v1, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;->Companion:Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;

    invoke-virtual {v1}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;->noActivityReference()Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    move-result-object v1

    .line 40
    .local v1, "exception":Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    sget-object v2, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->Companion:Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;->error(Ljava/lang/Throwable;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    move-result-object v2

    check-cast v2, Leu/bolt/screenshotty/ScreenshotResult;

    return-object v2

    .line 42
    .end local v1    # "exception":Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    :cond_2
    new-instance v1, Leu/bolt/screenshotty/internal/ScreenshotSpec;

    invoke-direct {v1, v0}, Leu/bolt/screenshotty/internal/ScreenshotSpec;-><init>(Landroid/app/Activity;)V

    .line 43
    .local v1, "screenshotSpec":Leu/bolt/screenshotty/internal/ScreenshotSpec;
    new-instance v2, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    invoke-direct {v2, v1}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;-><init>(Leu/bolt/screenshotty/internal/ScreenshotSpec;)V

    .line 44
    .local v2, "newResult":Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    invoke-direct {p0, v0, v1}, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->makePixelCopyWhenDrawn(Landroid/app/Activity;Leu/bolt/screenshotty/internal/ScreenshotSpec;)V

    .line 45
    iput-object v2, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->pendingResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    .line 46
    move-object v3, v2

    check-cast v3, Leu/bolt/screenshotty/ScreenshotResult;

    return-object v3
.end method
