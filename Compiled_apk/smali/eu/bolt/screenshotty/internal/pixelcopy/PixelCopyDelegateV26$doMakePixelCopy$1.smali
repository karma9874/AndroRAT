.class final Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$doMakePixelCopy$1;
.super Ljava/lang/Object;
.source "PixelCopyDelegateV26.kt"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->doMakePixelCopy(Landroid/app/Activity;Leu/bolt/screenshotty/internal/ScreenshotSpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "onPixelCopyFinished"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $copyDestination:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;


# direct methods
.method constructor <init>(Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$doMakePixelCopy$1;->this$0:Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;

    iput-object p2, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$doMakePixelCopy$1;->$copyDestination:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 3
    .param p1, "it"    # I

    .line 62
    iget-object v0, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$doMakePixelCopy$1;->this$0:Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;

    iget-object v1, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$doMakePixelCopy$1;->$copyDestination:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    const-string v2, "copyDestination"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->access$onPixelCopyTaken(Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;ILandroid/graphics/Bitmap;)V

    return-void
.end method
