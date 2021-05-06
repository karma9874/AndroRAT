.class public final Lkotlin/sequences/DropWhileSequence$iterator$1;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/DropWhileSequence;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\t\u0010\u0013\u001a\u00020\u0014H\u0096\u0002J\u000e\u0010\u0015\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001e\u0010\u000b\u001a\u0004\u0018\u00018\u0000X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "kotlin/sequences/DropWhileSequence$iterator$1",
        "",
        "dropState",
        "",
        "getDropState",
        "()I",
        "setDropState",
        "(I)V",
        "iterator",
        "getIterator",
        "()Ljava/util/Iterator;",
        "nextItem",
        "getNextItem",
        "()Ljava/lang/Object;",
        "setNextItem",
        "(Ljava/lang/Object;)V",
        "Ljava/lang/Object;",
        "drop",
        "",
        "hasNext",
        "",
        "next",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private dropState:I

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkotlin/sequences/DropWhileSequence;


# direct methods
.method constructor <init>(Lkotlin/sequences/DropWhileSequence;)V
    .locals 1
    .param p1, "$outer"    # Lkotlin/sequences/DropWhileSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 476
    iput-object p1, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->this$0:Lkotlin/sequences/DropWhileSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    invoke-static {p1}, Lkotlin/sequences/DropWhileSequence;->access$getSequence$p(Lkotlin/sequences/DropWhileSequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->iterator:Ljava/util/Iterator;

    .line 478
    const/4 v0, -0x1

    iput v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    return-void
.end method

.method private final drop()V
    .locals 2

    .line 482
    :goto_0
    iget-object v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 484
    .local v0, "item":Ljava/lang/Object;
    iget-object v1, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->this$0:Lkotlin/sequences/DropWhileSequence;

    invoke-static {v1}, Lkotlin/sequences/DropWhileSequence;->access$getPredicate$p(Lkotlin/sequences/DropWhileSequence;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    iput-object v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->nextItem:Ljava/lang/Object;

    .line 486
    const/4 v1, 0x1

    iput v1, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    .line 487
    return-void

    .line 482
    .end local v0    # "item":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 490
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    .line 491
    return-void
.end method


# virtual methods
.method public final getDropState()I
    .locals 1

    .line 478
    iget v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    return v0
.end method

.method public final getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public final getNextItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->nextItem:Ljava/lang/Object;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 508
    iget v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 509
    invoke-direct {p0}, Lkotlin/sequences/DropWhileSequence$iterator$1;->drop()V

    .line 510
    :cond_0
    iget v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 494
    iget v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 495
    invoke-direct {p0}, Lkotlin/sequences/DropWhileSequence$iterator$1;->drop()V

    .line 497
    :cond_0
    iget v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 499
    iget-object v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->nextItem:Ljava/lang/Object;

    .line 500
    .local v0, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->nextItem:Ljava/lang/Object;

    .line 501
    const/4 v1, 0x0

    iput v1, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    .line 502
    return-object v0

    .line 504
    .end local v0    # "result":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setDropState(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 478
    iput p1, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->dropState:I

    return-void
.end method

.method public final setNextItem(Ljava/lang/Object;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 479
    iput-object p1, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->nextItem:Ljava/lang/Object;

    return-void
.end method
