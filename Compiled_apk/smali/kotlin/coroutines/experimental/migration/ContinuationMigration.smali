.class final Lkotlin/coroutines/experimental/migration/ContinuationMigration;
.super Ljava/lang/Object;
.source "CoroutinesMigration.kt"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutinesMigration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutinesMigration.kt\nkotlin/coroutines/experimental/migration/ContinuationMigration\n*L\n1#1,145:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0005J\u001e\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlin/coroutines/experimental/migration/ContinuationMigration;",
        "T",
        "Lkotlin/coroutines/Continuation;",
        "continuation",
        "Lkotlin/coroutines/experimental/Continuation;",
        "(Lkotlin/coroutines/experimental/Continuation;)V",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "getContinuation",
        "()Lkotlin/coroutines/experimental/Continuation;",
        "resumeWith",
        "",
        "result",
        "Lkotlin/Result;",
        "(Ljava/lang/Object;)V",
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
.field private final context:Lkotlin/coroutines/CoroutineContext;

.field private final continuation:Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/experimental/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;)V
    .locals 1
    .param p1, "continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;->continuation:Lkotlin/coroutines/experimental/Continuation;

    .line 81
    iget-object v0, p0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlin/coroutines/experimental/migration/CoroutinesMigrationKt;->toCoroutineContext(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;->context:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 81
    iget-object v0, p0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;->context:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getContinuation()Lkotlin/coroutines/experimental/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/experimental/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;->continuation:Lkotlin/coroutines/experimental/Continuation;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 83
    nop

    .line 85
    nop

    .line 83
    nop

    .line 84
    nop

    .line 83
    nop

    .line 84
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$a$-onSuccess-ContinuationMigration$resumeWith$1":I
    iget-object v2, p0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v2, v0}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 85
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-onSuccess-ContinuationMigration$resumeWith$1":I
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .local v1, "$i$a$-onFailure-ContinuationMigration$resumeWith$2":I
    iget-object v2, p0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v2, v0}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 86
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-onFailure-ContinuationMigration$resumeWith$2":I
    :cond_1
    return-void
.end method
