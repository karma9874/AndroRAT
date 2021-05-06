.class final Lkotlin/ranges/UIntProgressionIterator;
.super Lkotlin/collections/UIntIterator;
.source "UIntRange.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUIntRange.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIntRange.kt\nkotlin/ranges/UIntProgressionIterator\n*L\n1#1,127:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0003\u0018\u00002\u00020\u0001B \u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007J\t\u0010\n\u001a\u00020\u000bH\u0096\u0002J\u0010\u0010\r\u001a\u00020\u0003H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eR\u0013\u0010\u0008\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000c\u001a\u00020\u0003X\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\tR\u0013\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/ranges/UIntProgressionIterator;",
        "Lkotlin/collections/UIntIterator;",
        "first",
        "Lkotlin/UInt;",
        "last",
        "step",
        "",
        "(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "finalElement",
        "I",
        "hasNext",
        "",
        "next",
        "nextUInt",
        "()I",
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
.field private final finalElement:I

.field private hasNext:Z

.field private next:I

.field private final step:I


# direct methods
.method private constructor <init>(III)V
    .locals 3
    .param p1, "first"    # I
    .param p2, "last"    # I
    .param p3, "step"    # I

    .line 107
    invoke-direct {p0}, Lkotlin/collections/UIntIterator;-><init>()V

    .line 108
    iput p2, p0, Lkotlin/ranges/UIntProgressionIterator;->finalElement:I

    .line 109
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lkotlin/UnsignedKt;->uintCompare(II)I

    move-result v2

    if-lez p3, :cond_0

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_0
    if-ltz v2, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lkotlin/ranges/UIntProgressionIterator;->hasNext:Z

    .line 110
    invoke-static {p3}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    iput v0, p0, Lkotlin/ranges/UIntProgressionIterator;->step:I

    .line 111
    iget-boolean v0, p0, Lkotlin/ranges/UIntProgressionIterator;->hasNext:Z

    if-eqz v0, :cond_2

    move v0, p1

    goto :goto_2

    :cond_2
    iget v0, p0, Lkotlin/ranges/UIntProgressionIterator;->finalElement:I

    :goto_2
    iput v0, p0, Lkotlin/ranges/UIntProgressionIterator;->next:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "first"    # I
    .param p2, "last"    # I
    .param p3, "step"    # I
    .param p4, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lkotlin/ranges/UIntProgressionIterator;-><init>(III)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lkotlin/ranges/UIntProgressionIterator;->hasNext:Z

    return v0
.end method

.method public nextUInt()I
    .locals 3

    .line 116
    iget v0, p0, Lkotlin/ranges/UIntProgressionIterator;->next:I

    .line 117
    .local v0, "value":I
    iget v1, p0, Lkotlin/ranges/UIntProgressionIterator;->finalElement:I

    if-ne v0, v1, :cond_1

    .line 118
    iget-boolean v1, p0, Lkotlin/ranges/UIntProgressionIterator;->hasNext:Z

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lkotlin/ranges/UIntProgressionIterator;->hasNext:Z

    goto :goto_0

    .line 118
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 121
    :cond_1
    iget v1, p0, Lkotlin/ranges/UIntProgressionIterator;->next:I

    iget v2, p0, Lkotlin/ranges/UIntProgressionIterator;->step:I

    add-int/2addr v1, v2

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    iput v1, p0, Lkotlin/ranges/UIntProgressionIterator;->next:I

    .line 122
    :goto_0
    nop

    .line 123
    return v0
.end method
