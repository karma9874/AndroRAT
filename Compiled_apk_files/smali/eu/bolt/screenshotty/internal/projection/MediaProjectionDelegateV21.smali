.class public final Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;
.super Ljava/lang/Object;
.source "MediaProjectionDelegateV21.kt"

# interfaces
.implements Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;,
        Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ReleaseOnStopCallback;,
        Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;,
        Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaProjectionDelegateV21.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaProjectionDelegateV21.kt\neu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21\n*L\n1#1,234:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0001\u0018\u0000 72\u00020\u0001:\u0004789:B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\"\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019H\u0002J \u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\rH\u0002J(\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\rH\u0002J \u0010\"\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\rH\u0002J\u0012\u0010$\u001a\u0004\u0018\u00010\u00152\u0006\u0010%\u001a\u00020&H\u0002J\u0008\u0010\'\u001a\u00020(H\u0016J\"\u0010)\u001a\u00020\u00132\u0006\u0010*\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u00052\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0010\u0010.\u001a\u00020\u00132\u0006\u0010/\u001a\u000200H\u0002J\u0010\u00101\u001a\u00020\u00132\u0006\u00102\u001a\u000203H\u0002J\u0008\u00104\u001a\u00020\u000bH\u0002J\u0008\u00105\u001a\u00020\u0013H\u0002J\u000c\u00106\u001a\u00020\u0011*\u00020\u0003H\u0002R\u001c\u0010\u0007\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00030\u00030\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;",
        "Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegate;",
        "activity",
        "Landroid/app/Activity;",
        "permissionRequestCode",
        "",
        "(Landroid/app/Activity;I)V",
        "activityReference",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "captureThread",
        "Landroid/os/HandlerThread;",
        "mainThreadHandler",
        "Landroid/os/Handler;",
        "pendingResult",
        "Leu/bolt/screenshotty/internal/ScreenshotResultImpl;",
        "projectionManager",
        "Landroid/media/projection/MediaProjectionManager;",
        "captureInBackground",
        "",
        "projection",
        "Landroid/media/projection/MediaProjection;",
        "screenshotSpec",
        "Leu/bolt/screenshotty/internal/ScreenshotSpec;",
        "delayMs",
        "",
        "createImageReader",
        "Landroid/media/ImageReader;",
        "spec",
        "callbackHandler",
        "createVirtualDisplay",
        "Landroid/hardware/display/VirtualDisplay;",
        "surface",
        "Landroid/view/Surface;",
        "doCapture",
        "handler",
        "getMediaProjection",
        "accessData",
        "Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;",
        "makeScreenshot",
        "Leu/bolt/screenshotty/ScreenshotResult;",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onScreenshotCaptureFailed",
        "cause",
        "Leu/bolt/screenshotty/util/MakeScreenshotFailedException;",
        "onScreenshotCaptured",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "startCaptureThread",
        "stopCaptureThread",
        "getMediaProjectionManager",
        "Companion",
        "ImageAvailableListener",
        "ProjectionAccessData",
        "ReleaseOnStopCallback",
        "screenshotty-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final CAPTURE_THREAD_NAME:Ljava/lang/String; = "screenshotty"

.field public static final Companion:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$Companion;

.field private static final DIALOG_CLOSED_DELAY_MS:J = 0x96L

.field private static LAST_ACCESS_DATA:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData; = null

.field private static final VIRTUAL_DISPLAY_FLAGS:I = 0x9


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

.field private captureThread:Landroid/os/HandlerThread;

.field private final mainThreadHandler:Landroid/os/Handler;

.field private pendingResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

.field private final permissionRequestCode:I

.field private final projectionManager:Landroid/media/projection/MediaProjectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->Companion:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permissionRequestCode"    # I

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->permissionRequestCode:I

    .line 39
    invoke-direct {p0, p1}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->getMediaProjectionManager(Landroid/app/Activity;)Landroid/media/projection/MediaProjectionManager;

    move-result-object v0

    iput-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->projectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->mainThreadHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->activityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$doCapture(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Landroid/media/projection/MediaProjection;Leu/bolt/screenshotty/internal/ScreenshotSpec;Landroid/os/Handler;)V
    .locals 0
    .param p0, "$this"    # Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;
    .param p1, "projection"    # Landroid/media/projection/MediaProjection;
    .param p2, "spec"    # Leu/bolt/screenshotty/internal/ScreenshotSpec;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 34
    invoke-direct {p0, p1, p2, p3}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->doCapture(Landroid/media/projection/MediaProjection;Leu/bolt/screenshotty/internal/ScreenshotSpec;Landroid/os/Handler;)V

    return-void
.end method

.method public static final synthetic access$getPendingResult$p(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    .locals 1
    .param p0, "$this"    # Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    .line 34
    iget-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->pendingResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    return-object v0
.end method

.method public static final synthetic access$onScreenshotCaptureFailed(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Leu/bolt/screenshotty/util/MakeScreenshotFailedException;)V
    .locals 0
    .param p0, "$this"    # Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;
    .param p1, "cause"    # Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    .line 34
    invoke-direct {p0, p1}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->onScreenshotCaptureFailed(Leu/bolt/screenshotty/util/MakeScreenshotFailedException;)V

    return-void
.end method

.method public static final synthetic access$onScreenshotCaptured(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "$this"    # Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 34
    invoke-direct {p0, p1}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->onScreenshotCaptured(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic access$setPendingResult$p(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Leu/bolt/screenshotty/internal/ScreenshotResultImpl;)V
    .locals 0
    .param p0, "$this"    # Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;
    .param p1, "<set-?>"    # Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    .line 34
    iput-object p1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->pendingResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    return-void
.end method

.method public static final synthetic access$stopCaptureThread(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;)V
    .locals 0
    .param p0, "$this"    # Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    .line 34
    invoke-direct {p0}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->stopCaptureThread()V

    return-void
.end method

.method private final captureInBackground(Landroid/media/projection/MediaProjection;Leu/bolt/screenshotty/internal/ScreenshotSpec;J)V
    .locals 3
    .param p1, "projection"    # Landroid/media/projection/MediaProjection;
    .param p2, "screenshotSpec"    # Leu/bolt/screenshotty/internal/ScreenshotSpec;
    .param p3, "delayMs"    # J

    .line 86
    invoke-direct {p0}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->startCaptureThread()Landroid/os/HandlerThread;

    move-result-object v0

    .line 87
    .local v0, "captureThread":Landroid/os/HandlerThread;
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 88
    .local v1, "captureThreadHandler":Landroid/os/Handler;
    new-instance v2, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$captureInBackground$1;

    invoke-direct {v2, p0, p1, p2, v1}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$captureInBackground$1;-><init>(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Landroid/media/projection/MediaProjection;Leu/bolt/screenshotty/internal/ScreenshotSpec;Landroid/os/Handler;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 90
    nop

    .line 88
    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    return-void
.end method

.method static synthetic captureInBackground$default(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Landroid/media/projection/MediaProjection;Leu/bolt/screenshotty/internal/ScreenshotSpec;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 85
    const-wide/16 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->captureInBackground(Landroid/media/projection/MediaProjection;Leu/bolt/screenshotty/internal/ScreenshotSpec;J)V

    return-void
.end method

.method private final createImageReader(Landroid/media/projection/MediaProjection;Leu/bolt/screenshotty/internal/ScreenshotSpec;Landroid/os/Handler;)Landroid/media/ImageReader;
    .locals 4
    .param p1, "projection"    # Landroid/media/projection/MediaProjection;
    .param p2, "spec"    # Leu/bolt/screenshotty/internal/ScreenshotSpec;
    .param p3, "callbackHandler"    # Landroid/os/Handler;

    .line 113
    invoke-virtual {p2}, Leu/bolt/screenshotty/internal/ScreenshotSpec;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Leu/bolt/screenshotty/internal/ScreenshotSpec;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    .line 114
    .local v0, "imageReader":Landroid/media/ImageReader;
    new-instance v1, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;

    invoke-virtual {p2}, Leu/bolt/screenshotty/internal/ScreenshotSpec;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Leu/bolt/screenshotty/internal/ScreenshotSpec;->getHeight()I

    move-result v3

    invoke-direct {v1, p0, p1, v2, v3}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;-><init>(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Landroid/media/projection/MediaProjection;II)V

    check-cast v1, Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {v0, v1, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 115
    const-string v1, "imageReader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/view/Surface;Leu/bolt/screenshotty/internal/ScreenshotSpec;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 9
    .param p1, "projection"    # Landroid/media/projection/MediaProjection;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "spec"    # Leu/bolt/screenshotty/internal/ScreenshotSpec;
    .param p4, "callbackHandler"    # Landroid/os/Handler;

    .line 119
    nop

    .line 120
    invoke-virtual {p3}, Leu/bolt/screenshotty/internal/ScreenshotSpec;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Leu/bolt/screenshotty/internal/ScreenshotSpec;->getHeight()I

    move-result v3

    invoke-virtual {p3}, Leu/bolt/screenshotty/internal/ScreenshotSpec;->getDensityDpi()I

    move-result v4

    .line 121
    nop

    .line 122
    nop

    .line 119
    const-string v1, "screenshotty"

    const/16 v5, 0x9

    const/4 v7, 0x0

    move-object v0, p1

    move-object v6, p2

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    const-string v1, "projection.createVirtual\u2026callbackHandler\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final doCapture(Landroid/media/projection/MediaProjection;Leu/bolt/screenshotty/internal/ScreenshotSpec;Landroid/os/Handler;)V
    .locals 5
    .param p1, "projection"    # Landroid/media/projection/MediaProjection;
    .param p2, "spec"    # Leu/bolt/screenshotty/internal/ScreenshotSpec;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 94
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/media/ImageReader;

    .line 95
    .local v1, "imageReader":Landroid/media/ImageReader;
    check-cast v0, Landroid/hardware/display/VirtualDisplay;

    .line 96
    .local v0, "virtualDisplay":Landroid/hardware/display/VirtualDisplay;
    nop

    .line 97
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->createImageReader(Landroid/media/projection/MediaProjection;Leu/bolt/screenshotty/internal/ScreenshotSpec;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object v2

    move-object v1, v2

    .line 98
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const-string v3, "imageReader.surface"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, p2, p3}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/view/Surface;Leu/bolt/screenshotty/internal/ScreenshotSpec;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v2

    move-object v0, v2

    .line 99
    new-instance v2, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ReleaseOnStopCallback;

    invoke-direct {v2, p1, v1, v0}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ReleaseOnStopCallback;-><init>(Landroid/media/projection/MediaProjection;Landroid/media/ImageReader;Landroid/hardware/display/VirtualDisplay;)V

    .line 100
    .local v2, "callback":Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ReleaseOnStopCallback;
    move-object v3, v2

    check-cast v3, Landroid/media/projection/MediaProjection$Callback;

    invoke-virtual {p1, v3, p3}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "callback":Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ReleaseOnStopCallback;
    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    invoke-virtual {v3, v0}, Leu/bolt/screenshotty/internal/Utils;->releaseSafely(Landroid/hardware/display/VirtualDisplay;)V

    .line 103
    sget-object v3, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    invoke-virtual {v3, v1}, Leu/bolt/screenshotty/internal/Utils;->closeSafely(Landroid/media/ImageReader;)V

    .line 104
    sget-object v3, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    invoke-virtual {v3, p1}, Leu/bolt/screenshotty/internal/Utils;->stopSafely(Landroid/media/projection/MediaProjection;)V

    .line 105
    new-instance v3, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    invoke-direct {v3, v4}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v3}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->onScreenshotCaptureFailed(Leu/bolt/screenshotty/util/MakeScreenshotFailedException;)V

    .line 106
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 108
    return-void
.end method

.method private final getMediaProjection(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;)Landroid/media/projection/MediaProjection;
    .locals 4
    .param p1, "accessData"    # Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;

    .line 162
    invoke-virtual {p1}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "data":Landroid/content/Intent;
    const/4 v1, 0x0

    .local v1, "$i$a$-let-MediaProjectionDelegateV21$getMediaProjection$1":I
    iget-object v2, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->projectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;->getResultCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    .end local v0    # "data":Landroid/content/Intent;
    .end local v1    # "$i$a$-let-MediaProjectionDelegateV21$getMediaProjection$1":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final getMediaProjectionManager(Landroid/app/Activity;)Landroid/media/projection/MediaProjectionManager;
    .locals 2
    .param p1, "$this$getMediaProjectionManager"    # Landroid/app/Activity;

    .line 165
    nop

    .line 166
    const-string v0, "media_projection"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/media/projection/MediaProjectionManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    .line 165
    if-eqz v0, :cond_1

    .line 167
    return-object v0

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final onScreenshotCaptureFailed(Leu/bolt/screenshotty/util/MakeScreenshotFailedException;)V
    .locals 2
    .param p1, "cause"    # Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    .line 136
    iget-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptureFailed$1;

    invoke-direct {v1, p0, p1}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptureFailed$1;-><init>(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Leu/bolt/screenshotty/util/MakeScreenshotFailedException;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method private final onScreenshotCaptured(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 127
    iget-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptured$1;

    invoke-direct {v1, p0, p1}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptured$1;-><init>(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Landroid/graphics/Bitmap;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method private final startCaptureThread()Landroid/os/HandlerThread;
    .locals 3

    .line 144
    sget-object v0, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    invoke-virtual {v0}, Leu/bolt/screenshotty/internal/Utils;->checkOnMainThread()V

    .line 145
    iget-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->captureThread:Landroid/os/HandlerThread;

    .line 146
    .local v0, "thread":Landroid/os/HandlerThread;
    if-nez v0, :cond_0

    .line 147
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "screenshotty"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 148
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 149
    iput-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->captureThread:Landroid/os/HandlerThread;

    .line 151
    :cond_0
    return-object v0
.end method

.method private final stopCaptureThread()V
    .locals 3

    .line 155
    iget-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->captureThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .local v0, "it":Landroid/os/HandlerThread;
    const/4 v1, 0x0

    .line 156
    .local v1, "$i$a$-let-MediaProjectionDelegateV21$stopCaptureThread$1":I
    sget-object v2, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    invoke-virtual {v2, v0}, Leu/bolt/screenshotty/internal/Utils;->interruptSafely(Landroid/os/HandlerThread;)V

    .line 157
    const/4 v2, 0x0

    check-cast v2, Landroid/os/HandlerThread;

    iput-object v2, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->captureThread:Landroid/os/HandlerThread;

    .line 158
    .end local v0    # "it":Landroid/os/HandlerThread;
    .end local v1    # "$i$a$-let-MediaProjectionDelegateV21$stopCaptureThread$1":I
    nop

    .line 155
    nop

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public makeScreenshot()Leu/bolt/screenshotty/ScreenshotResult;
    .locals 12

    .line 48
    sget-object v0, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    invoke-virtual {v0}, Leu/bolt/screenshotty/internal/Utils;->checkOnMainThread()V

    .line 49
    iget-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->pendingResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    .line 50
    .local v0, "result":Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    if-eqz v0, :cond_0

    .line 51
    move-object v1, v0

    check-cast v1, Leu/bolt/screenshotty/ScreenshotResult;

    return-object v1

    .line 53
    :cond_0
    iget-object v1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 54
    .local v1, "activity":Landroid/app/Activity;
    if-nez v1, :cond_1

    .line 55
    sget-object v2, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;->Companion:Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;

    invoke-virtual {v2}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;->noActivityReference()Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    move-result-object v2

    .line 56
    .local v2, "exception":Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    sget-object v3, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->Companion:Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;->error(Ljava/lang/Throwable;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    move-result-object v3

    check-cast v3, Leu/bolt/screenshotty/ScreenshotResult;

    return-object v3

    .line 58
    .end local v2    # "exception":Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    :cond_1
    new-instance v2, Leu/bolt/screenshotty/internal/ScreenshotSpec;

    invoke-direct {v2, v1}, Leu/bolt/screenshotty/internal/ScreenshotSpec;-><init>(Landroid/app/Activity;)V

    .line 59
    .local v2, "screenshotSpec":Leu/bolt/screenshotty/internal/ScreenshotSpec;
    new-instance v3, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    invoke-direct {v3, v2}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;-><init>(Leu/bolt/screenshotty/internal/ScreenshotSpec;)V

    move-object v10, v3

    .line 60
    .local v10, "newResult":Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    sget-object v3, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->LAST_ACCESS_DATA:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;

    if-eqz v3, :cond_2

    .local v3, "p1":Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;
    const/4 v4, 0x0

    .local v4, "$i$a$-unknown-MediaProjectionDelegateV21$makeScreenshot$projection$1":I
    move-object v5, p0

    check-cast v5, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    invoke-direct {v5, v3}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->getMediaProjection(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;)Landroid/media/projection/MediaProjection;

    move-result-object v3

    .end local v3    # "p1":Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;
    .end local v4    # "$i$a$-unknown-MediaProjectionDelegateV21$makeScreenshot$projection$1":I
    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    move-object v11, v3

    .line 61
    .local v11, "projection":Landroid/media/projection/MediaProjection;
    if-nez v11, :cond_3

    .line 62
    iget-object v3, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->projectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v3}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v3

    iget v4, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->permissionRequestCode:I

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 64
    :cond_3
    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, v11

    move-object v5, v2

    invoke-static/range {v3 .. v9}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->captureInBackground$default(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Landroid/media/projection/MediaProjection;Leu/bolt/screenshotty/internal/ScreenshotSpec;JILjava/lang/Object;)V

    .line 65
    :goto_1
    nop

    .line 66
    iput-object v10, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->pendingResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    .line 67
    move-object v3, v10

    check-cast v3, Leu/bolt/screenshotty/ScreenshotResult;

    return-object v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->pendingResult:Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->getSpec()Leu/bolt/screenshotty/internal/ScreenshotSpec;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 72
    .local v0, "screenshotSpec":Leu/bolt/screenshotty/internal/ScreenshotSpec;
    iget v1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->permissionRequestCode:I

    if-ne p1, v1, :cond_1

    .line 73
    new-instance v1, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;

    invoke-direct {v1, p2, p3}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;-><init>(ILandroid/content/Intent;)V

    .line 74
    .local v1, "accessData":Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;
    invoke-direct {p0, v1}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->getMediaProjection(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;)Landroid/media/projection/MediaProjection;

    move-result-object v2

    .line 75
    .local v2, "mediaProjection":Landroid/media/projection/MediaProjection;
    if-eqz v2, :cond_0

    .line 76
    const-wide/16 v3, 0x96

    invoke-direct {p0, v2, v0, v3, v4}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->captureInBackground(Landroid/media/projection/MediaProjection;Leu/bolt/screenshotty/internal/ScreenshotSpec;J)V

    .line 77
    sput-object v1, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->LAST_ACCESS_DATA:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;

    goto :goto_0

    .line 79
    :cond_0
    sget-object v3, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;->Companion:Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;

    invoke-virtual {v3}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;->failedToCreateMediaProjection()Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    move-result-object v3

    .line 80
    .local v3, "exception":Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    invoke-direct {p0, v3}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->onScreenshotCaptureFailed(Leu/bolt/screenshotty/util/MakeScreenshotFailedException;)V

    .line 81
    .end local v1    # "accessData":Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;
    .end local v2    # "mediaProjection":Landroid/media/projection/MediaProjection;
    .end local v3    # "exception":Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    :cond_1
    :goto_0
    nop

    .line 83
    return-void

    .line 71
    .end local v0    # "screenshotSpec":Leu/bolt/screenshotty/internal/ScreenshotSpec;
    :cond_2
    return-void
.end method
