.class public final Lkotlin/coroutines/ContinuationKt;
.super Ljava/lang/Object;
.source "Continuation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Continuation.kt\nkotlin/coroutines/ContinuationKt\n*L\n1#1,158:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u001a<\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\u0004\u0008\u0000\u0010\u00082\u0006\u0010\t\u001a\u00020\u00012\u001a\u0008\u0004\u0010\n\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u000c\u0012\u0004\u0012\u00020\r0\u000bH\u0087\u0008\u00f8\u0001\u0000\u001a3\u0010\u000e\u001a\u0002H\u0008\"\u0004\u0008\u0000\u0010\u00082\u001a\u0008\u0004\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\u0012\u0004\u0012\u00020\r0\u000bH\u0087H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010\u001aD\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0007\"\u0004\u0008\u0000\u0010\u0008*\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000b2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014\u001a]\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0007\"\u0004\u0008\u0000\u0010\u0015\"\u0004\u0008\u0001\u0010\u0008*#\u0008\u0001\u0012\u0004\u0012\u0002H\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0016\u00a2\u0006\u0002\u0008\u00172\u0006\u0010\u0018\u001a\u0002H\u00152\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019\u001a&\u0010\u001a\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u0008*\u0008\u0012\u0004\u0012\u0002H\u00080\u00072\u0006\u0010\u001b\u001a\u0002H\u0008H\u0087\u0008\u00a2\u0006\u0002\u0010\u001c\u001a!\u0010\u001d\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u0008*\u0008\u0012\u0004\u0012\u0002H\u00080\u00072\u0006\u0010\u001e\u001a\u00020\u001fH\u0087\u0008\u001a>\u0010 \u001a\u00020\r\"\u0004\u0008\u0000\u0010\u0008*\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000b2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010!\u001aW\u0010 \u001a\u00020\r\"\u0004\u0008\u0000\u0010\u0015\"\u0004\u0008\u0001\u0010\u0008*#\u0008\u0001\u0012\u0004\u0012\u0002H\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0016\u00a2\u0006\u0002\u0008\u00172\u0006\u0010\u0018\u001a\u0002H\u00152\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\"\"\u001b\u0010\u0000\u001a\u00020\u00018\u00c6\u0002X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006#"
    }
    d2 = {
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "coroutineContext$annotations",
        "()V",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "Continuation",
        "Lkotlin/coroutines/Continuation;",
        "T",
        "context",
        "resumeWith",
        "Lkotlin/Function1;",
        "Lkotlin/Result;",
        "",
        "suspendCoroutine",
        "block",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createCoroutine",
        "",
        "completion",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;",
        "R",
        "Lkotlin/Function2;",
        "Lkotlin/ExtensionFunctionType;",
        "receiver",
        "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;",
        "resume",
        "value",
        "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V",
        "resumeWithException",
        "exception",
        "",
        "startCoroutine",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V",
        "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private static final Continuation(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;)Lkotlin/coroutines/Continuation;
    .locals 2
    .param p0, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p1, "resumeWith"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    .local v0, "$i$f$Continuation":I
    new-instance v1, Lkotlin/coroutines/ContinuationKt$Continuation$1;

    invoke-direct {v1, p0, p1}, Lkotlin/coroutines/ContinuationKt$Continuation$1;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 71
    return-object v1
.end method

.method public static synthetic coroutineContext$annotations()V
    .locals 0

    return-void
.end method

.method public static final createCoroutine(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .param p0, "$this$createCoroutine"    # Lkotlin/jvm/functions/Function1;
    .param p1, "completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$createCoroutine"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p0, p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->createCoroutineUnintercepted(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public static final createCoroutine(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .param p0, "$this$createCoroutine"    # Lkotlin/jvm/functions/Function2;
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$createCoroutine"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p0, p1, p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->createCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method private static final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 3

    const/4 v0, 0x0

    .line 156
    .local v0, "$i$f$getCoroutineContext":I
    new-instance v1, Lkotlin/NotImplementedError;

    const-string v2, "Implemented as intrinsic"

    invoke-direct {v1, v2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private static final resume(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V
    .locals 2
    .param p0, "$this$resume"    # Lkotlin/coroutines/Continuation;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    .local v0, "$i$f$resume":I
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method private static final resumeWithException(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "$this$resumeWithException"    # Lkotlin/coroutines/Continuation;
    .param p1, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    .local v0, "$i$f$resumeWithException":I
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final startCoroutine(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 3
    .param p0, "$this$startCoroutine"    # Lkotlin/jvm/functions/Function1;
    .param p1, "completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "$this$startCoroutine"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {p0, p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->createCoroutineUnintercepted(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public static final startCoroutine(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 3
    .param p0, "$this$startCoroutine"    # Lkotlin/jvm/functions/Function2;
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "$this$startCoroutine"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-static {p0, p1, p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->createCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method private static final suspendCoroutine(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p0, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    .local v0, "$i$f$suspendCoroutine":I
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v1, p1

    .local v1, "c":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 143
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-ContinuationKt$suspendCoroutine$2":I
    new-instance v3, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 144
    .local v3, "safe":Lkotlin/coroutines/SafeContinuation;
    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {v3}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v1

    .line 142
    .end local v1    # "c":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-ContinuationKt$suspendCoroutine$2":I
    .end local v3    # "safe":Lkotlin/coroutines/SafeContinuation;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 146
    return-object v1
.end method
