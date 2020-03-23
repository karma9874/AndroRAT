.class public final Leu/bolt/screenshotty/internal/ExtensionsKt$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "Extensions.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/bolt/screenshotty/internal/ExtensionsKt;->doOnPreDraw(Landroid/view/View;ZLkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "eu/bolt/screenshotty/internal/ExtensionsKt$doOnPreDraw$1",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "onPreDraw",
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
.field final synthetic $action:Lkotlin/jvm/functions/Function0;

.field final synthetic $dropFrame:Z

.field final synthetic $observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Landroid/view/ViewTreeObserver;Lkotlin/jvm/functions/Function0;Z)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Landroid/view/ViewTreeObserver;
    .param p2, "$captured_local_variable$1"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$captured_local_variable$2"    # Z

    .line 8
    iput-object p1, p0, Leu/bolt/screenshotty/internal/ExtensionsKt$doOnPreDraw$1;->$observer:Landroid/view/ViewTreeObserver;

    iput-object p2, p0, Leu/bolt/screenshotty/internal/ExtensionsKt$doOnPreDraw$1;->$action:Lkotlin/jvm/functions/Function0;

    iput-boolean p3, p0, Leu/bolt/screenshotty/internal/ExtensionsKt$doOnPreDraw$1;->$dropFrame:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 10
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ExtensionsKt$doOnPreDraw$1;->$observer:Landroid/view/ViewTreeObserver;

    const-string v1, "observer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ExtensionsKt$doOnPreDraw$1;->$observer:Landroid/view/ViewTreeObserver;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 13
    :cond_0
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ExtensionsKt$doOnPreDraw$1;->$action:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 14
    iget-boolean v0, p0, Leu/bolt/screenshotty/internal/ExtensionsKt$doOnPreDraw$1;->$dropFrame:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
