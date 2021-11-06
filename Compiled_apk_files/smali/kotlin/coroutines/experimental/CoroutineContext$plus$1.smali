.class final Lkotlin/coroutines/experimental/CoroutineContext$plus$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CoroutineContext.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/experimental/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "acc",
        "element",
        "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
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
.field public static final INSTANCE:Lkotlin/coroutines/experimental/CoroutineContext$plus$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/coroutines/experimental/CoroutineContext$plus$1;

    invoke-direct {v0}, Lkotlin/coroutines/experimental/CoroutineContext$plus$1;-><init>()V

    sput-object v0, Lkotlin/coroutines/experimental/CoroutineContext$plus$1;->INSTANCE:Lkotlin/coroutines/experimental/CoroutineContext$plus$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast p2, Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/experimental/CoroutineContext$plus$1;->invoke(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 6
    .param p1, "acc"    # Lkotlin/coroutines/experimental/CoroutineContext;
    .param p2, "element"    # Lkotlin/coroutines/experimental/CoroutineContext$Element;

    const-string v0, "acc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p2}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->getKey()Lkotlin/coroutines/experimental/CoroutineContext$Key;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/experimental/CoroutineContext;->minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .line 36
    .local v0, "removed":Lkotlin/coroutines/experimental/CoroutineContext;
    sget-object v1, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    if-ne v0, v1, :cond_0

    move-object v1, p2

    check-cast v1, Lkotlin/coroutines/experimental/CoroutineContext;

    goto :goto_1

    .line 38
    :cond_0
    sget-object v1, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v1, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/experimental/ContinuationInterceptor;

    .line 39
    .local v1, "interceptor":Lkotlin/coroutines/experimental/ContinuationInterceptor;
    if-nez v1, :cond_1

    new-instance v2, Lkotlin/coroutines/experimental/CombinedContext;

    invoke-direct {v2, v0, p2}, Lkotlin/coroutines/experimental/CombinedContext;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V

    move-object v3, v2

    goto :goto_0

    .line 40
    :cond_1
    sget-object v2, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v2, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v0, v2}, Lkotlin/coroutines/experimental/CoroutineContext;->minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    .line 41
    .local v2, "left":Lkotlin/coroutines/experimental/CoroutineContext;
    sget-object v3, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    if-ne v2, v3, :cond_2

    new-instance v3, Lkotlin/coroutines/experimental/CombinedContext;

    move-object v4, p2

    check-cast v4, Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-direct {v3, v4, v5}, Lkotlin/coroutines/experimental/CombinedContext;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V

    goto :goto_0

    .line 42
    :cond_2
    new-instance v3, Lkotlin/coroutines/experimental/CombinedContext;

    new-instance v4, Lkotlin/coroutines/experimental/CombinedContext;

    invoke-direct {v4, v2, p2}, Lkotlin/coroutines/experimental/CombinedContext;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V

    check-cast v4, Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-direct {v3, v4, v5}, Lkotlin/coroutines/experimental/CombinedContext;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V

    .line 41
    .end local v2    # "left":Lkotlin/coroutines/experimental/CoroutineContext;
    :goto_0
    nop

    .line 39
    move-object v2, v3

    check-cast v2, Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v1, v2

    .line 36
    .end local v0    # "removed":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v1    # "interceptor":Lkotlin/coroutines/experimental/ContinuationInterceptor;
    :goto_1
    nop

    .line 44
    return-object v1
.end method
