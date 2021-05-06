.class final Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer$tryRenderDialogs$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FloatingPanelRenderer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;->tryRenderDialogs(Landroid/app/Activity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;",
        "Ljava/lang/Boolean;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer$tryRenderDialogs$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer$tryRenderDialogs$1;

    invoke-direct {v0}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer$tryRenderDialogs$1;-><init>()V

    sput-object v0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer$tryRenderDialogs$1;->INSTANCE:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer$tryRenderDialogs$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;

    invoke-virtual {p0, p1}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer$tryRenderDialogs$1;->invoke(Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;)Z
    .locals 1
    .param p1, "it"    # Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;->isDialog()Z

    move-result v0

    return v0
.end method
