.class final Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PixelCopyDelegateV26.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->makePixelCopyWhenDrawn(Landroid/app/Activity;Leu/bolt/screenshotty/internal/ScreenshotSpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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

.field final synthetic $spec:Leu/bolt/screenshotty/internal/ScreenshotSpec;

.field final synthetic this$0:Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;


# direct methods
.method constructor <init>(Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;Landroid/app/Activity;Leu/bolt/screenshotty/internal/ScreenshotSpec;)V
    .locals 0

    iput-object p1, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;->this$0:Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;

    iput-object p2, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;->$spec:Leu/bolt/screenshotty/internal/ScreenshotSpec;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 51
    iget-object v0, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;->this$0:Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;

    invoke-static {v0}, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->access$getMainThreadHandler$p(Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1$1;

    invoke-direct {v1, p0}, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1$1;-><init>(Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method
