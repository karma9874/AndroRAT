.class public abstract Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.super Lkotlin/jvm/internal/Lambda;
.source "CoroutineImpl.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/coroutines/experimental/Continuation<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineImpl.kt\nkotlin/coroutines/experimental/jvm/internal/CoroutineImpl\n*L\n1#1,62:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u0008&\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0010\u0010\u0006\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0007J$\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00032\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00022\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0016J\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00032\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0016J\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H$J\u0012\u0010\u0019\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u00038\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\u00058\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;",
        "Lkotlin/jvm/internal/Lambda;",
        "",
        "Lkotlin/coroutines/experimental/Continuation;",
        "arity",
        "",
        "completion",
        "(ILkotlin/coroutines/experimental/Continuation;)V",
        "_context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "_facade",
        "context",
        "getContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "facade",
        "getFacade",
        "()Lkotlin/coroutines/experimental/Continuation;",
        "label",
        "create",
        "",
        "value",
        "doResume",
        "data",
        "exception",
        "",
        "resume",
        "resumeWithException",
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
.field private final _context:Lkotlin/coroutines/experimental/CoroutineContext;

.field private _facade:Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/experimental/Continuation<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected completion:Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/experimental/Continuation<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected label:I


# direct methods
.method public constructor <init>(ILkotlin/coroutines/experimental/Continuation;)V
    .locals 1
    .param p1, "arity"    # I
    .param p2, "completion"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/experimental/Continuation<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 17
    nop

    .line 21
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    iput-object p2, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->completion:Lkotlin/coroutines/experimental/Continuation;

    .line 26
    iget-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->completion:Lkotlin/coroutines/experimental/Continuation;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    .line 28
    iget-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->completion:Lkotlin/coroutines/experimental/Continuation;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "completion"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/experimental/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "create(Any?;Continuation) has not been overridden"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public create(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 2
    .param p1, "completion"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/experimental/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "create(Continuation) has not been overridden"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method protected abstract doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
.end method

.method public getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1

    .line 31
    iget-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_context:Lkotlin/coroutines/experimental/CoroutineContext;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object v0
.end method

.method public final getFacade()Lkotlin/coroutines/experimental/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/experimental/Continuation<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_facade:Lkotlin/coroutines/experimental/Continuation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_context:Lkotlin/coroutines/experimental/CoroutineContext;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/experimental/Continuation;

    invoke-static {v0, v1}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->interceptContinuationIfNeeded(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    iput-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_facade:Lkotlin/coroutines/experimental/Continuation;

    .line 37
    :cond_1
    iget-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_facade:Lkotlin/coroutines/experimental/Continuation;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    return-object v0
.end method

.method public resume(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->completion:Lkotlin/coroutines/experimental/Continuation;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x0

    .line 42
    .local v1, "$i$a$-processBareContinuationResume-CoroutineImpl$resume$1":I
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    .line 41
    .end local v1    # "$i$a$-processBareContinuationResume-CoroutineImpl$resume$1":I
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-eq v2, v1, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.coroutines.experimental.Continuation<kotlin.Any?>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .end local p1    # "value":Ljava/lang/Object;
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local p1    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->completion:Lkotlin/coroutines/experimental/Continuation;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x0

    .line 48
    .local v1, "$i$a$-processBareContinuationResume-CoroutineImpl$resumeWithException$1":I
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2, p1}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    .line 47
    .end local v1    # "$i$a$-processBareContinuationResume-CoroutineImpl$resumeWithException$1":I
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-eq v2, v1, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.coroutines.experimental.Continuation<kotlin.Any?>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .end local p1    # "exception":Ljava/lang/Throwable;
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local p1    # "exception":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 50
    :cond_2
    :goto_0
    return-void
.end method
