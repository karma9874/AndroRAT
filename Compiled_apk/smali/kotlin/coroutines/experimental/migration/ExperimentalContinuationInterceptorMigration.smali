.class final Lkotlin/coroutines/experimental/migration/ExperimentalContinuationInterceptorMigration;
.super Ljava/lang/Object;
.source "CoroutinesMigration.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/ContinuationInterceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\"\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u000c\"\u0004\u0008\u0000\u0010\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u000cH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/coroutines/experimental/migration/ExperimentalContinuationInterceptorMigration;",
        "Lkotlin/coroutines/experimental/ContinuationInterceptor;",
        "interceptor",
        "Lkotlin/coroutines/ContinuationInterceptor;",
        "(Lkotlin/coroutines/ContinuationInterceptor;)V",
        "getInterceptor",
        "()Lkotlin/coroutines/ContinuationInterceptor;",
        "key",
        "Lkotlin/coroutines/experimental/CoroutineContext$Key;",
        "getKey",
        "()Lkotlin/coroutines/experimental/CoroutineContext$Key;",
        "interceptContinuation",
        "Lkotlin/coroutines/experimental/Continuation;",
        "T",
        "continuation",
        "kotlin-stdlib-coroutines"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final interceptor:Lkotlin/coroutines/ContinuationInterceptor;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/ContinuationInterceptor;)V
    .locals 1
    .param p1, "interceptor"    # Lkotlin/coroutines/ContinuationInterceptor;

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationInterceptorMigration;->interceptor:Lkotlin/coroutines/ContinuationInterceptor;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static {p0, p1, p2}, Lkotlin/coroutines/experimental/ContinuationInterceptor$DefaultImpls;->fold(Lkotlin/coroutines/experimental/ContinuationInterceptor;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;
    .locals 1
    .param p1, "key"    # Lkotlin/coroutines/experimental/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static {p0, p1}, Lkotlin/coroutines/experimental/ContinuationInterceptor$DefaultImpls;->get(Lkotlin/coroutines/experimental/ContinuationInterceptor;Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    return-object v0
.end method

.method public final getInterceptor()Lkotlin/coroutines/ContinuationInterceptor;
    .locals 1

    .line 97
    iget-object v0, p0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationInterceptorMigration;->interceptor:Lkotlin/coroutines/ContinuationInterceptor;

    return-object v0
.end method

.method public getKey()Lkotlin/coroutines/experimental/CoroutineContext$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key<",
            "*>;"
        }
    .end annotation

    .line 99
    sget-object v0, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    return-object v0
.end method

.method public interceptContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 2
    .param p1, "continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Lkotlin/coroutines/experimental/Continuation<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationInterceptorMigration;->interceptor:Lkotlin/coroutines/ContinuationInterceptor;

    invoke-static {p1}, Lkotlin/coroutines/experimental/migration/CoroutinesMigrationKt;->toContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/ContinuationInterceptor;->interceptContinuation(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlin/coroutines/experimental/migration/CoroutinesMigrationKt;->toExperimentalContinuation(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    return-object v0
.end method

.method public minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .param p1, "key"    # Lkotlin/coroutines/experimental/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/experimental/CoroutineContext;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static {p0, p1}, Lkotlin/coroutines/experimental/ContinuationInterceptor$DefaultImpls;->minusKey(Lkotlin/coroutines/experimental/ContinuationInterceptor;Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .param p1, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static {p0, p1}, Lkotlin/coroutines/experimental/ContinuationInterceptor$DefaultImpls;->plus(Lkotlin/coroutines/experimental/ContinuationInterceptor;Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0
.end method
