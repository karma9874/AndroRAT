.class public final Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
.super Ljava/lang/Object;
.source "ScreenshotResultImpl.kt"

# interfaces
.implements Leu/bolt/screenshotty/ScreenshotResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;,
        Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenshotResultImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenshotResultImpl.kt\neu/bolt/screenshotty/internal/ScreenshotResultImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,97:1\n1587#2,2:98\n1587#2,2:100\n*E\n*S KotlinDebug\n*F\n+ 1 ScreenshotResultImpl.kt\neu/bolt/screenshotty/internal/ScreenshotResultImpl\n*L\n20#1,2:98\n30#1,2:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J0\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00100\u00142\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00100\u0014H\u0016J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0006J\u0016\u0010\u0017\u001a\u00020\u00002\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0019H\u0007J\u000e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0008R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000cj\u0008\u0012\u0004\u0012\u00020\r`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/ScreenshotResultImpl;",
        "Leu/bolt/screenshotty/ScreenshotResult;",
        "spec",
        "Leu/bolt/screenshotty/internal/ScreenshotSpec;",
        "(Leu/bolt/screenshotty/internal/ScreenshotSpec;)V",
        "deliveredError",
        "",
        "deliveredScreenshot",
        "Leu/bolt/screenshotty/Screenshot;",
        "getSpec",
        "()Leu/bolt/screenshotty/internal/ScreenshotSpec;",
        "subscriptions",
        "Ljava/util/ArrayList;",
        "Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;",
        "Lkotlin/collections/ArrayList;",
        "checkResultNotSet",
        "",
        "observe",
        "Leu/bolt/screenshotty/ScreenshotResult$Subscription;",
        "onSuccess",
        "Lkotlin/Function1;",
        "onError",
        "error",
        "onErrorFallbackTo",
        "resultProvider",
        "Lkotlin/Function0;",
        "screenshot",
        "Companion",
        "SubscriptionImpl",
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
.field public static final Companion:Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;


# instance fields
.field private deliveredError:Ljava/lang/Throwable;

.field private deliveredScreenshot:Leu/bolt/screenshotty/Screenshot;

.field private final spec:Leu/bolt/screenshotty/internal/ScreenshotSpec;

.field private final subscriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->Companion:Leu/bolt/screenshotty/internal/ScreenshotResultImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;-><init>(Leu/bolt/screenshotty/internal/ScreenshotSpec;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Leu/bolt/screenshotty/internal/ScreenshotSpec;)V
    .locals 1
    .param p1, "spec"    # Leu/bolt/screenshotty/internal/ScreenshotSpec;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->spec:Leu/bolt/screenshotty/internal/ScreenshotSpec;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->subscriptions:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Leu/bolt/screenshotty/internal/ScreenshotSpec;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 9
    const/4 p1, 0x0

    check-cast p1, Leu/bolt/screenshotty/internal/ScreenshotSpec;

    :cond_0
    invoke-direct {p0, p1}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;-><init>(Leu/bolt/screenshotty/internal/ScreenshotSpec;)V

    return-void
.end method

.method private final checkResultNotSet()V
    .locals 2

    .line 65
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->deliveredScreenshot:Leu/bolt/screenshotty/Screenshot;

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->deliveredError:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 68
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempted to set ScreenshotResult content multiple times"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public final getSpec()Leu/bolt/screenshotty/internal/ScreenshotSpec;
    .locals 1

    .line 9
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->spec:Leu/bolt/screenshotty/internal/ScreenshotSpec;

    return-object v0
.end method

.method public observe(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Leu/bolt/screenshotty/ScreenshotResult$Subscription;
    .locals 4
    .param p1, "onSuccess"    # Lkotlin/jvm/functions/Function1;
    .param p2, "onError"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Leu/bolt/screenshotty/Screenshot;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Leu/bolt/screenshotty/ScreenshotResult$Subscription;"
        }
    .end annotation

    const-string v0, "onSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    invoke-virtual {v0}, Leu/bolt/screenshotty/internal/Utils;->checkOnMainThread()V

    .line 49
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->deliveredScreenshot:Leu/bolt/screenshotty/Screenshot;

    .line 50
    .local v0, "screenshot":Leu/bolt/screenshotty/Screenshot;
    iget-object v1, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->deliveredError:Ljava/lang/Throwable;

    .line 51
    .local v1, "error":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 52
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v2, Leu/bolt/screenshotty/Subscriptions;->INSTANCE:Leu/bolt/screenshotty/Subscriptions;

    invoke-virtual {v2}, Leu/bolt/screenshotty/Subscriptions;->disposed()Leu/bolt/screenshotty/ScreenshotResult$Subscription;

    move-result-object v2

    goto :goto_0

    .line 54
    :cond_0
    if-eqz v1, :cond_1

    .line 55
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v2, Leu/bolt/screenshotty/Subscriptions;->INSTANCE:Leu/bolt/screenshotty/Subscriptions;

    invoke-virtual {v2}, Leu/bolt/screenshotty/Subscriptions;->disposed()Leu/bolt/screenshotty/ScreenshotResult$Subscription;

    move-result-object v2

    goto :goto_0

    .line 58
    :cond_1
    new-instance v2, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;

    invoke-direct {v2, p1, p2}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 59
    .local v2, "newSubscription":Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;
    iget-object v3, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->subscriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    move-object v3, v2

    check-cast v3, Leu/bolt/screenshotty/ScreenshotResult$Subscription;

    move-object v2, v3

    .line 54
    .end local v2    # "newSubscription":Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;
    :goto_0
    nop

    .line 51
    return-object v2
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "error"    # Ljava/lang/Throwable;

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->checkResultNotSet()V

    .line 28
    sget-object v0, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    invoke-virtual {v0}, Leu/bolt/screenshotty/internal/Utils;->checkOnMainThread()V

    .line 29
    iput-object p1, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->deliveredError:Ljava/lang/Throwable;

    .line 30
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->subscriptions:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 100
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;

    .local v4, "it":Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;
    const/4 v5, 0x0

    .line 31
    .local v5, "$i$a$-forEach-ScreenshotResultImpl$onError$1":I
    invoke-virtual {v4}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;->getOnError()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Unit;

    .line 32
    .end local v4    # "it":Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;
    .end local v5    # "$i$a$-forEach-ScreenshotResultImpl$onError$1":I
    :cond_0
    goto :goto_0

    .line 101
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    nop

    .line 33
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->subscriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    return-void
.end method

.method public final onErrorFallbackTo(Lkotlin/jvm/functions/Function0;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    .locals 3
    .param p1, "resultProvider"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Leu/bolt/screenshotty/ScreenshotResult;",
            ">;)",
            "Leu/bolt/screenshotty/internal/ScreenshotResultImpl;"
        }
    .end annotation

    const-string v0, "resultProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;-><init>(Leu/bolt/screenshotty/internal/ScreenshotSpec;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    .local v0, "newResult":Leu/bolt/screenshotty/internal/ScreenshotResultImpl;
    new-instance v1, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$onErrorFallbackTo$1;

    invoke-direct {v1, v0}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$onErrorFallbackTo$1;-><init>(Leu/bolt/screenshotty/internal/ScreenshotResultImpl;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$onErrorFallbackTo$2;

    invoke-direct {v2, p1, v0}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$onErrorFallbackTo$2;-><init>(Lkotlin/jvm/functions/Function0;Leu/bolt/screenshotty/internal/ScreenshotResultImpl;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v1, v2}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->observe(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Leu/bolt/screenshotty/ScreenshotResult$Subscription;

    .line 44
    return-object v0
.end method

.method public final onSuccess(Leu/bolt/screenshotty/Screenshot;)V
    .locals 7
    .param p1, "screenshot"    # Leu/bolt/screenshotty/Screenshot;

    const-string v0, "screenshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->checkResultNotSet()V

    .line 18
    sget-object v0, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    invoke-virtual {v0}, Leu/bolt/screenshotty/internal/Utils;->checkOnMainThread()V

    .line 19
    iput-object p1, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->deliveredScreenshot:Leu/bolt/screenshotty/Screenshot;

    .line 20
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->subscriptions:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 98
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;

    .local v4, "it":Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;
    const/4 v5, 0x0

    .line 21
    .local v5, "$i$a$-forEach-ScreenshotResultImpl$onSuccess$1":I
    invoke-virtual {v4}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;->getOnSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Unit;

    .line 22
    .end local v4    # "it":Leu/bolt/screenshotty/internal/ScreenshotResultImpl$SubscriptionImpl;
    .end local v5    # "$i$a$-forEach-ScreenshotResultImpl$onSuccess$1":I
    :cond_0
    goto :goto_0

    .line 99
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    nop

    .line 23
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->subscriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    return-void
.end method
