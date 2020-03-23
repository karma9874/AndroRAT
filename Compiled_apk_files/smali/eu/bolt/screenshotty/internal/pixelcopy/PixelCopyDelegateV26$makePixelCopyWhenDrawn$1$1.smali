.class final Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1$1;
.super Ljava/lang/Object;
.source "PixelCopyDelegateV26.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;->invoke()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;


# direct methods
.method constructor <init>(Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;)V
    .locals 0

    iput-object p1, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1$1;->this$0:Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 52
    iget-object v0, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1$1;->this$0:Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;

    iget-object v0, v0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;->this$0:Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;

    iget-object v1, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1$1;->this$0:Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;

    iget-object v1, v1, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1$1;->this$0:Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;

    iget-object v2, v2, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26$makePixelCopyWhenDrawn$1;->$spec:Leu/bolt/screenshotty/internal/ScreenshotSpec;

    invoke-static {v0, v1, v2}, Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;->access$doMakePixelCopy(Leu/bolt/screenshotty/internal/pixelcopy/PixelCopyDelegateV26;Landroid/app/Activity;Leu/bolt/screenshotty/internal/ScreenshotSpec;)V

    .line 53
    return-void
.end method
