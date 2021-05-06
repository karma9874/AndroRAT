.class public final Lkotlin/coroutines/experimental/SafeContinuation;
.super Ljava/lang/Object;
.source "SafeContinuationJvm.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/experimental/SafeContinuation$Fail;,
        Lkotlin/coroutines/experimental/SafeContinuation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/Continuation<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 \u0015*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002\u0015\u0016B\u0015\u0008\u0011\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u00a2\u0006\u0002\u0010\u0004B\u001f\u0008\u0000\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\n\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0001J\u0015\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlin/coroutines/experimental/SafeContinuation;",
        "T",
        "Lkotlin/coroutines/experimental/Continuation;",
        "delegate",
        "(Lkotlin/coroutines/experimental/Continuation;)V",
        "initialResult",
        "",
        "(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "result",
        "getResult",
        "resume",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "resumeWithException",
        "exception",
        "",
        "Companion",
        "Fail",
        "kotlin-stdlib-coroutines"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

.field private static final RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lkotlin/coroutines/experimental/SafeContinuation<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESUMED:Ljava/lang/Object;

.field private static final UNDECIDED:Ljava/lang/Object;


# instance fields
.field private final delegate:Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/experimental/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile result:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/coroutines/experimental/SafeContinuation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->Companion:Lkotlin/coroutines/experimental/SafeContinuation$Companion;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->UNDECIDED:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->RESUMED:Ljava/lang/Object;

    .line 33
    nop

    .line 34
    const-class v0, Lkotlin/coroutines/experimental/SafeContinuation;

    const-class v1, Ljava/lang/Object;

    .line 33
    const-string v2, "result"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;)V
    .locals 1
    .param p1, "delegate"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lkotlin/coroutines/experimental/SafeContinuation;->UNDECIDED:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/experimental/SafeContinuation;-><init>(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V
    .locals 1
    .param p1, "delegate"    # Lkotlin/coroutines/experimental/Continuation;
    .param p2, "initialResult"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/experimental/SafeContinuation;->delegate:Lkotlin/coroutines/experimental/Continuation;

    .line 25
    iput-object p2, p0, Lkotlin/coroutines/experimental/SafeContinuation;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1

    .line 22
    iget-object v0, p0, Lkotlin/coroutines/experimental/SafeContinuation;->delegate:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 4

    .line 70
    iget-object v0, p0, Lkotlin/coroutines/experimental/SafeContinuation;->result:Ljava/lang/Object;

    .line 71
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lkotlin/coroutines/experimental/SafeContinuation;->UNDECIDED:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 72
    sget-object v2, Lkotlin/coroutines/experimental/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 73
    :cond_0
    iget-object v0, p0, Lkotlin/coroutines/experimental/SafeContinuation;->result:Ljava/lang/Object;

    .line 75
    :cond_1
    nop

    .line 76
    sget-object v1, Lkotlin/coroutines/experimental/SafeContinuation;->RESUMED:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 77
    :cond_2
    instance-of v1, v0, Lkotlin/coroutines/experimental/SafeContinuation$Fail;

    if-nez v1, :cond_3

    .line 78
    return-object v0

    .line 77
    :cond_3
    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/experimental/SafeContinuation$Fail;

    invoke-virtual {v1}, Lkotlin/coroutines/experimental/SafeContinuation$Fail;->getException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public resume(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    :goto_0
    nop

    .line 42
    iget-object v0, p0, Lkotlin/coroutines/experimental/SafeContinuation;->result:Ljava/lang/Object;

    .line 43
    .local v0, "result":Ljava/lang/Object;
    nop

    .line 44
    sget-object v1, Lkotlin/coroutines/experimental/SafeContinuation;->UNDECIDED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    sget-object v2, Lkotlin/coroutines/experimental/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 45
    :cond_0
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    sget-object v1, Lkotlin/coroutines/experimental/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkotlin/coroutines/experimental/SafeContinuation;->RESUMED:Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lkotlin/coroutines/experimental/SafeContinuation;->delegate:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v1, p1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 47
    return-void

    .line 50
    .end local v0    # "result":Ljava/lang/Object;
    :cond_1
    nop

    .line 41
    goto :goto_0

    .line 49
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Throwable;

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    :goto_0
    nop

    .line 56
    iget-object v0, p0, Lkotlin/coroutines/experimental/SafeContinuation;->result:Ljava/lang/Object;

    .line 57
    .local v0, "result":Ljava/lang/Object;
    nop

    .line 58
    sget-object v1, Lkotlin/coroutines/experimental/SafeContinuation;->UNDECIDED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    sget-object v2, Lkotlin/coroutines/experimental/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v3, Lkotlin/coroutines/experimental/SafeContinuation$Fail;

    invoke-direct {v3, p1}, Lkotlin/coroutines/experimental/SafeContinuation$Fail;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 59
    :cond_0
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    sget-object v1, Lkotlin/coroutines/experimental/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkotlin/coroutines/experimental/SafeContinuation;->RESUMED:Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lkotlin/coroutines/experimental/SafeContinuation;->delegate:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v1, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 61
    return-void

    .line 64
    .end local v0    # "result":Ljava/lang/Object;
    :cond_1
    nop

    .line 55
    goto :goto_0

    .line 63
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
