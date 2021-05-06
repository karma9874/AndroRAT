.class public final Lkotlin/coroutines/experimental/SequenceBuilderKt__SequenceBuilderKt$buildSequence$$inlined$Sequence$1;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/experimental/SequenceBuilderKt__SequenceBuilderKt;->buildSequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 SequenceBuilder.kt\nkotlin/coroutines/experimental/SequenceBuilderKt__SequenceBuilderKt\n*L\n1#1,633:1\n24#2:634\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/sequences/SequencesKt__SequencesKt$Sequence$1",
        "Lkotlin/sequences/Sequence;",
        "iterator",
        "",
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
.field final synthetic $builderAction$inlined:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lkotlin/coroutines/experimental/SequenceBuilderKt__SequenceBuilderKt$buildSequence$$inlined$Sequence$1;->$builderAction$inlined:Lkotlin/jvm/functions/Function2;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    .line 634
    .local v0, "$i$a$-Sequence-SequenceBuilderKt__SequenceBuilderKt$buildSequence$1":I
    iget-object v1, p0, Lkotlin/coroutines/experimental/SequenceBuilderKt__SequenceBuilderKt$buildSequence$$inlined$Sequence$1;->$builderAction$inlined:Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lkotlin/coroutines/experimental/SequenceBuilderKt;->buildIterator(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;

    move-result-object v0

    .end local v0    # "$i$a$-Sequence-SequenceBuilderKt__SequenceBuilderKt$buildSequence$1":I
    return-object v0
.end method
