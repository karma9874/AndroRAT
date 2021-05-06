.class public final Lkotlin/coroutines/experimental/migration/CoroutinesMigrationKt;
.super Ljava/lang/Object;
.source "CoroutinesMigration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0007\u001a\u000c\u0010\u0004\u001a\u00020\u0005*\u00020\u0006H\u0007\u001a\u000c\u0010\u0007\u001a\u00020\u0008*\u00020\tH\u0007\u001a\u001e\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0001H\u0007\u001a\u000c\u0010\u000b\u001a\u00020\u0006*\u00020\u0005H\u0007\u001a\u000c\u0010\u000c\u001a\u00020\t*\u00020\u0008H\u0007\u001a^\u0010\r\u001a\"\u0012\u0004\u0012\u0002H\u000f\u0012\u0004\u0012\u0002H\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000e\"\u0004\u0008\u0000\u0010\u000f\"\u0004\u0008\u0001\u0010\u0010\"\u0004\u0008\u0002\u0010\u0011*\"\u0012\u0004\u0012\u0002H\u000f\u0012\u0004\u0012\u0002H\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000eH\u0000\u001aL\u0010\r\u001a\u001c\u0012\u0004\u0012\u0002H\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0013\"\u0004\u0008\u0000\u0010\u000f\"\u0004\u0008\u0001\u0010\u0011*\u001c\u0012\u0004\u0012\u0002H\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0013H\u0000\u001a:\u0010\r\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0014\"\u0004\u0008\u0000\u0010\u0011*\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0014H\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "toContinuation",
        "Lkotlin/coroutines/Continuation;",
        "T",
        "Lkotlin/coroutines/experimental/Continuation;",
        "toContinuationInterceptor",
        "Lkotlin/coroutines/ContinuationInterceptor;",
        "Lkotlin/coroutines/experimental/ContinuationInterceptor;",
        "toCoroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "toExperimentalContinuation",
        "toExperimentalContinuationInterceptor",
        "toExperimentalCoroutineContext",
        "toExperimentalSuspendFunction",
        "Lkotlin/Function3;",
        "T1",
        "T2",
        "R",
        "",
        "Lkotlin/Function2;",
        "Lkotlin/Function1;",
        "kotlin-stdlib-coroutines"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final toContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .param p0, "$this$toContinuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$toContinuation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    instance-of v0, p0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;->getContinuation()Lkotlin/coroutines/Continuation;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;

    invoke-direct {v0, p0}, Lkotlin/coroutines/experimental/migration/ContinuationMigration;-><init>(Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    :goto_1
    return-object v0
.end method

.method public static final toContinuationInterceptor(Lkotlin/coroutines/experimental/ContinuationInterceptor;)Lkotlin/coroutines/ContinuationInterceptor;
    .locals 1
    .param p0, "$this$toContinuationInterceptor"    # Lkotlin/coroutines/experimental/ContinuationInterceptor;

    const-string v0, "$this$toContinuationInterceptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    instance-of v0, p0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationInterceptorMigration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationInterceptorMigration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationInterceptorMigration;->getInterceptor()Lkotlin/coroutines/ContinuationInterceptor;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/coroutines/experimental/migration/ContinuationInterceptorMigration;

    invoke-direct {v0, p0}, Lkotlin/coroutines/experimental/migration/ContinuationInterceptorMigration;-><init>(Lkotlin/coroutines/experimental/ContinuationInterceptor;)V

    check-cast v0, Lkotlin/coroutines/ContinuationInterceptor;

    :goto_1
    return-object v0
.end method

.method public static final toCoroutineContext(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 6
    .param p0, "$this$toCoroutineContext"    # Lkotlin/coroutines/experimental/CoroutineContext;

    const-string v0, "$this$toCoroutineContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/experimental/ContinuationInterceptor;

    .line 50
    .local v0, "interceptor":Lkotlin/coroutines/experimental/ContinuationInterceptor;
    sget-object v1, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;->Key:Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration$Key;

    check-cast v1, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v1}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;

    .line 51
    .local v1, "migration":Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;
    sget-object v2, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v2, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v2}, Lkotlin/coroutines/experimental/CoroutineContext;->minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    sget-object v3, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;->Key:Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration$Key;

    check-cast v3, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v2, v3}, Lkotlin/coroutines/experimental/CoroutineContext;->minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    .line 52
    .local v2, "remainder":Lkotlin/coroutines/experimental/CoroutineContext;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    .line 53
    .local v3, "original":Lkotlin/coroutines/CoroutineContext;
    :goto_0
    sget-object v4, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    if-ne v2, v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    new-instance v4, Lkotlin/coroutines/experimental/migration/ContextMigration;

    invoke-direct {v4, v2}, Lkotlin/coroutines/experimental/migration/ContextMigration;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;)V

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 54
    .local v4, "result":Lkotlin/coroutines/CoroutineContext;
    :goto_1
    if-nez v0, :cond_2

    move-object v5, v4

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lkotlin/coroutines/experimental/migration/CoroutinesMigrationKt;->toContinuationInterceptor(Lkotlin/coroutines/experimental/ContinuationInterceptor;)Lkotlin/coroutines/ContinuationInterceptor;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    :goto_2
    return-object v5
.end method

.method public static final toExperimentalContinuation(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 1
    .param p0, "$this$toExperimentalContinuation"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Lkotlin/coroutines/experimental/Continuation<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$toExperimentalContinuation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    instance-of v0, p0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/coroutines/experimental/migration/ContinuationMigration;->getContinuation()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;

    invoke-direct {v0, p0}, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/experimental/Continuation;

    :goto_1
    return-object v0
.end method

.method public static final toExperimentalContinuationInterceptor(Lkotlin/coroutines/ContinuationInterceptor;)Lkotlin/coroutines/experimental/ContinuationInterceptor;
    .locals 1
    .param p0, "$this$toExperimentalContinuationInterceptor"    # Lkotlin/coroutines/ContinuationInterceptor;

    const-string v0, "$this$toExperimentalContinuationInterceptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    instance-of v0, p0, Lkotlin/coroutines/experimental/migration/ContinuationInterceptorMigration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlin/coroutines/experimental/migration/ContinuationInterceptorMigration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/coroutines/experimental/migration/ContinuationInterceptorMigration;->getInterceptor()Lkotlin/coroutines/experimental/ContinuationInterceptor;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationInterceptorMigration;

    invoke-direct {v0, p0}, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationInterceptorMigration;-><init>(Lkotlin/coroutines/ContinuationInterceptor;)V

    check-cast v0, Lkotlin/coroutines/experimental/ContinuationInterceptor;

    :goto_1
    return-object v0
.end method

.method public static final toExperimentalCoroutineContext(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 6
    .param p0, "$this$toExperimentalCoroutineContext"    # Lkotlin/coroutines/CoroutineContext;

    const-string v0, "$this$toExperimentalCoroutineContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/ContinuationInterceptor;

    .line 37
    .local v0, "interceptor":Lkotlin/coroutines/ContinuationInterceptor;
    sget-object v1, Lkotlin/coroutines/experimental/migration/ContextMigration;->Key:Lkotlin/coroutines/experimental/migration/ContextMigration$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/experimental/migration/ContextMigration;

    .line 38
    .local v1, "migration":Lkotlin/coroutines/experimental/migration/ContextMigration;
    sget-object v2, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p0, v2}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    sget-object v3, Lkotlin/coroutines/experimental/migration/ContextMigration;->Key:Lkotlin/coroutines/experimental/migration/ContextMigration$Key;

    check-cast v3, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 39
    .local v2, "remainder":Lkotlin/coroutines/CoroutineContext;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lkotlin/coroutines/experimental/migration/ContextMigration;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    check-cast v3, Lkotlin/coroutines/experimental/CoroutineContext;

    .line 40
    .local v3, "original":Lkotlin/coroutines/experimental/CoroutineContext;
    :goto_0
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    if-ne v2, v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    new-instance v4, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;

    invoke-direct {v4, v2}, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    check-cast v4, Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {v3, v4}, Lkotlin/coroutines/experimental/CoroutineContext;->plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v4

    .line 41
    .local v4, "result":Lkotlin/coroutines/experimental/CoroutineContext;
    :goto_1
    if-nez v0, :cond_2

    move-object v5, v4

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lkotlin/coroutines/experimental/migration/CoroutinesMigrationKt;->toExperimentalContinuationInterceptor(Lkotlin/coroutines/ContinuationInterceptor;)Lkotlin/coroutines/experimental/ContinuationInterceptor;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {v4, v5}, Lkotlin/coroutines/experimental/CoroutineContext;->plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v5

    :goto_2
    return-object v5
.end method

.method public static final toExperimentalSuspendFunction(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this$toExperimentalSuspendFunction"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$toExperimentalSuspendFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lkotlin/coroutines/experimental/migration/ExperimentalSuspendFunction0Migration;

    invoke-direct {v0, p0}, Lkotlin/coroutines/experimental/migration/ExperimentalSuspendFunction0Migration;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final toExperimentalSuspendFunction(Lkotlin/jvm/functions/Function2;)Lkotlin/jvm/functions/Function2;
    .locals 1
    .param p0, "$this$toExperimentalSuspendFunction"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TT1;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/jvm/functions/Function2<",
            "TT1;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$toExperimentalSuspendFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lkotlin/coroutines/experimental/migration/ExperimentalSuspendFunction1Migration;

    invoke-direct {v0, p0}, Lkotlin/coroutines/experimental/migration/ExperimentalSuspendFunction1Migration;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public static final toExperimentalSuspendFunction(Lkotlin/jvm/functions/Function3;)Lkotlin/jvm/functions/Function3;
    .locals 1
    .param p0, "$this$toExperimentalSuspendFunction"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function3<",
            "-TT1;-TT2;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/jvm/functions/Function3<",
            "TT1;TT2;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$toExperimentalSuspendFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lkotlin/coroutines/experimental/migration/ExperimentalSuspendFunction2Migration;

    invoke-direct {v0, p0}, Lkotlin/coroutines/experimental/migration/ExperimentalSuspendFunction2Migration;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    return-object v0
.end method
