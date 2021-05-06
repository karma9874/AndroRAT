.class public final Leu/bolt/screenshotty/internal/ExtensionsKt;
.super Ljava/lang/Object;
.source "Extensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "doOnPreDraw",
        "",
        "Landroid/view/View;",
        "dropFrame",
        "",
        "action",
        "Lkotlin/Function0;",
        "screenshotty-lib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final doOnPreDraw(Landroid/view/View;ZLkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p0, "$this$doOnPreDraw"    # Landroid/view/View;
    .param p1, "dropFrame"    # Z
    .param p2, "action"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$doOnPreDraw"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 8
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Leu/bolt/screenshotty/internal/ExtensionsKt$doOnPreDraw$1;

    invoke-direct {v1, v0, p2, p1}, Leu/bolt/screenshotty/internal/ExtensionsKt$doOnPreDraw$1;-><init>(Landroid/view/ViewTreeObserver;Lkotlin/jvm/functions/Function0;Z)V

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 18
    return-void
.end method
