.class final Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SlidingWindow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/SlidingWindowKt;->windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Ljava/util/List<",
        "+TT;>;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/SlidingWindowKt$windowedIterator$1\n*L\n1#1,191:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/sequences/SequenceScope;",
        "",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.collections.SlidingWindowKt$windowedIterator$1"
    f = "SlidingWindow.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4
    }
    l = {
        0x21,
        0x27,
        0x2e,
        0x34,
        0x37
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "gap",
        "buffer",
        "skip",
        "e",
        "$this$iterator",
        "gap",
        "buffer",
        "skip",
        "$this$iterator",
        "gap",
        "buffer",
        "e",
        "$this$iterator",
        "gap",
        "buffer",
        "$this$iterator",
        "gap",
        "buffer"
    }
    s = {
        "L$0",
        "I$0",
        "L$1",
        "I$1",
        "L$2",
        "L$0",
        "I$0",
        "L$1",
        "I$1",
        "L$0",
        "I$0",
        "L$1",
        "L$2",
        "L$0",
        "I$0",
        "L$1",
        "L$0",
        "I$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $iterator:Ljava/util/Iterator;

.field final synthetic $partialWindows:Z

.field final synthetic $reuseBuffer:Z

.field final synthetic $size:I

.field final synthetic $step:I

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlin/sequences/SequenceScope;


# direct methods
.method constructor <init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iput p2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    iput-object p3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    iput-boolean p4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    iput-boolean p5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iget v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    iget-boolean v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    iget-boolean v6, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;-><init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V

    move-object v1, p1

    check-cast v1, Lkotlin/sequences/SequenceScope;

    move-object v1, p1

    check-cast v1, Lkotlin/sequences/SequenceScope;

    iput-object v1, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->p$:Lkotlin/sequences/SequenceScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 24
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    move-object v0, v8

    .local v0, "$this$iterator":Lkotlin/sequences/SequenceScope;
    move-object v1, v8

    .local v1, "buffer":Lkotlin/collections/RingBuffer;
    move v2, v7

    .local v2, "gap":I
    iget-object v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Lkotlin/collections/RingBuffer;

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iget-object v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p1

    move-object p1, p0

    goto/16 :goto_b

    .line 58
    .end local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v1    # "buffer":Lkotlin/collections/RingBuffer;
    .end local v2    # "gap":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    move-object v1, v8

    .local v1, "$this$iterator":Lkotlin/sequences/SequenceScope;
    move-object v4, v8

    .local v4, "buffer":Lkotlin/collections/RingBuffer;
    move v5, v7

    .local v5, "gap":I
    iget-object v7, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, Lkotlin/collections/RingBuffer;

    iget v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iget-object v7, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v1, v7

    check-cast v1, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v7, v5

    move-object v5, p1

    move-object p1, p0

    move-object v13, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v13

    goto/16 :goto_a

    .end local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v4    # "buffer":Lkotlin/collections/RingBuffer;
    .end local v5    # "gap":I
    :cond_2
    move-object v1, v8

    .restart local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    move-object v5, v8

    .local v5, "e":Ljava/lang/Object;
    .local v7, "gap":I
    .local v8, "buffer":Lkotlin/collections/RingBuffer;
    iget-object v9, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iget-object v10, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    move-object v8, v10

    check-cast v8, Lkotlin/collections/RingBuffer;

    iget v7, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iget-object v10, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v1, v10

    check-cast v1, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, p1

    move-object p1, p0

    goto/16 :goto_7

    .end local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v5    # "e":Ljava/lang/Object;
    .end local v7    # "gap":I
    .end local v8    # "buffer":Lkotlin/collections/RingBuffer;
    :cond_3
    move-object v0, v8

    .restart local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    move v1, v7

    .local v1, "skip":I
    move-object v2, v8

    .local v2, "buffer":Ljava/util/ArrayList;
    move v3, v7

    .local v3, "gap":I
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, Ljava/util/ArrayList;

    iget v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p1

    move-object p1, p0

    goto/16 :goto_4

    .end local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v1    # "skip":I
    .end local v2    # "buffer":Ljava/util/ArrayList;
    .end local v3    # "gap":I
    :cond_4
    move-object v1, v8

    .local v1, "$this$iterator":Lkotlin/sequences/SequenceScope;
    move-object v2, v8

    .local v2, "e":Ljava/lang/Object;
    move v3, v7

    .local v3, "skip":I
    move-object v4, v8

    .local v4, "buffer":Ljava/util/ArrayList;
    .restart local v7    # "gap":I
    iget-object v8, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iget v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iget-object v9, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    move-object v4, v9

    check-cast v4, Ljava/util/ArrayList;

    iget v7, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iget-object v9, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v1, v9

    check-cast v1, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v2

    move-object v2, v4

    move-object v4, v0

    move-object v0, v1

    move v1, v3

    move v3, v7

    move-object v7, p1

    move-object p1, p0

    goto :goto_1

    .end local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v2    # "e":Ljava/lang/Object;
    .end local v3    # "skip":I
    .end local v4    # "buffer":Ljava/util/ArrayList;
    .end local v7    # "gap":I
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->p$:Lkotlin/sequences/SequenceScope;

    .line 25
    .restart local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    iget v7, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iget v8, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    sub-int/2addr v7, v8

    .line 26
    .restart local v7    # "gap":I
    if-ltz v7, :cond_d

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .local v2, "buffer":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .line 29
    .restart local v3    # "skip":I
    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move-object v8, v4

    move-object v4, v0

    move-object v0, v1

    move v1, v3

    move v3, v7

    move-object v7, p1

    move-object p1, p0

    .end local p0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v1, "skip":I
    .local v3, "gap":I
    .local v7, "$result":Ljava/lang/Object;
    .local p1, "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 30
    .local v9, "e":Ljava/lang/Object;
    if-lez v1, :cond_6

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 31
    :cond_6
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v11, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ne v10, v11, :cond_9

    .line 33
    iput-object v0, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput v3, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput-object v2, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput v1, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iput-object v9, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput-object v8, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    iput v6, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v0, v2, p1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v4, :cond_7

    .line 24
    return-object v4

    .line 34
    :cond_7
    :goto_1
    iget-boolean v10, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v10, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_8
    new-instance v10, Ljava/util/ArrayList;

    iget v11, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v10

    .line 35
    :goto_2
    move v1, v3

    .line 29
    .end local v9    # "e":Ljava/lang/Object;
    :cond_9
    :goto_3
    goto :goto_0

    .line 38
    :cond_a
    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v6, v8

    if-eqz v6, :cond_18

    .line 39
    iget-boolean v6, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    if-nez v6, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v8, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ne v6, v8, :cond_18

    :cond_b
    iput-object v0, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput v3, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput-object v2, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput v1, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iput v5, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v0, v2, p1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_c

    .line 24
    return-object v4

    .line 42
    :cond_c
    :goto_4
    goto/16 :goto_c

    .end local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v2    # "buffer":Ljava/util/ArrayList;
    .end local v3    # "gap":I
    .local v1, "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v7, "gap":I
    .local p1, "$result":Ljava/lang/Object;
    :cond_d
    new-instance v5, Lkotlin/collections/RingBuffer;

    invoke-direct {v5, v8}, Lkotlin/collections/RingBuffer;-><init>(I)V

    .line 43
    .local v5, "buffer":Lkotlin/collections/RingBuffer;
    iget-object v8, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move-object v9, v8

    move-object v8, v5

    move-object v5, p1

    move-object p1, p0

    .local v5, "$result":Ljava/lang/Object;
    .restart local v8    # "buffer":Lkotlin/collections/RingBuffer;
    .local p1, "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 44
    .local v10, "e":Ljava/lang/Object;
    invoke-virtual {v8, v10}, Lkotlin/collections/RingBuffer;->add(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v8}, Lkotlin/collections/RingBuffer;->isFull()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 46
    iget-boolean v11, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v11, :cond_e

    move-object v11, v8

    check-cast v11, Ljava/util/List;

    goto :goto_6

    :cond_e
    new-instance v11, Ljava/util/ArrayList;

    move-object v12, v8

    check-cast v12, Ljava/util/Collection;

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v11, Ljava/util/List;

    :goto_6
    iput-object v1, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput v7, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput-object v8, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v10, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput-object v9, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    iput v4, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v1, v11, p1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v0, :cond_f

    .line 24
    return-object v0

    .line 46
    :cond_f
    move-object v13, v10

    move-object v10, v5

    move-object v5, v13

    .line 47
    .local v5, "e":Ljava/lang/Object;
    .local v10, "$result":Ljava/lang/Object;
    :goto_7
    iget v11, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    invoke-virtual {v8, v11}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    move-object v5, v10

    .line 43
    .end local v10    # "$result":Ljava/lang/Object;
    .local v5, "$result":Ljava/lang/Object;
    :cond_10
    goto :goto_5

    .line 50
    :cond_11
    iget-boolean v4, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    if-eqz v4, :cond_17

    move-object v4, v0

    move-object v0, v1

    move-object v1, v8

    .line 51
    .end local v8    # "buffer":Lkotlin/collections/RingBuffer;
    .restart local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v1, "buffer":Lkotlin/collections/RingBuffer;
    :goto_8
    invoke-virtual {v1}, Lkotlin/collections/RingBuffer;->size()I

    move-result v8

    iget v9, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    if-le v8, v9, :cond_14

    .line 52
    iget-boolean v8, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v8, :cond_12

    move-object v8, v1

    check-cast v8, Ljava/util/List;

    goto :goto_9

    :cond_12
    new-instance v8, Ljava/util/ArrayList;

    move-object v9, v1

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v8, Ljava/util/List;

    :goto_9
    iput-object v0, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput v7, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput-object v1, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput v3, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v0, v8, p1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v4, :cond_13

    .line 24
    return-object v4

    .line 53
    :cond_13
    :goto_a
    iget v8, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    invoke-virtual {v1, v8}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    .line 51
    goto :goto_8

    .line 55
    :cond_14
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v6

    if-eqz v3, :cond_16

    iput-object v0, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput v7, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput-object v1, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput v2, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v0, v1, p1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_15

    .line 24
    return-object v4

    .line 55
    :cond_15
    move v2, v7

    move-object v7, v5

    .line 57
    .end local v5    # "$result":Ljava/lang/Object;
    .local v2, "gap":I
    .local v7, "$result":Ljava/lang/Object;
    :goto_b
    goto :goto_c

    .line 55
    .end local v2    # "gap":I
    .restart local v5    # "$result":Ljava/lang/Object;
    .local v7, "gap":I
    :cond_16
    move-object v7, v5

    goto :goto_c

    .line 50
    .end local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v1, "$this$iterator":Lkotlin/sequences/SequenceScope;
    .restart local v8    # "buffer":Lkotlin/collections/RingBuffer;
    :cond_17
    move-object v0, v1

    move-object v7, v5

    .line 58
    .end local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v8    # "buffer":Lkotlin/collections/RingBuffer;
    .restart local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v7, "$result":Ljava/lang/Object;
    :cond_18
    :goto_c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
