.class public final Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;
.super Ljava/lang/Object;
.source "FloatingPanelData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u000f\u001a\u00020\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;",
        "",
        "rootView",
        "Landroid/view/View;",
        "windowFrame",
        "Landroid/graphics/Rect;",
        "layoutParams",
        "Landroid/view/WindowManager$LayoutParams;",
        "(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)V",
        "getLayoutParams",
        "()Landroid/view/WindowManager$LayoutParams;",
        "getRootView",
        "()Landroid/view/View;",
        "getWindowFrame",
        "()Landroid/graphics/Rect;",
        "isDialog",
        "",
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
.field private final layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final rootView:Landroid/view/View;

.field private final windowFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "windowFrame"    # Landroid/graphics/Rect;
    .param p3, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowFrame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;->rootView:Landroid/view/View;

    iput-object p2, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;->windowFrame:Landroid/graphics/Rect;

    iput-object p3, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public final getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 10
    iget-object v0, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final getRootView()Landroid/view/View;
    .locals 1

    .line 8
    iget-object v0, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public final getWindowFrame()Landroid/graphics/Rect;
    .locals 1

    .line 9
    iget-object v0, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;->windowFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final isDialog()Z
    .locals 2

    .line 12
    iget-object v0, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
