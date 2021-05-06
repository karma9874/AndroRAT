.class Lkotlin/collections/UCollectionsKt___UCollectionsKt;
.super Ljava/lang/Object;
.source "_UCollections.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_UCollections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _UCollections.kt\nkotlin/collections/UCollectionsKt___UCollectionsKt\n*L\n1#1,128:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00010\u0002H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0005\u001a\u001c\u0010\u0000\u001a\u00020\u0007*\u0008\u0012\u0004\u0012\u00020\u00070\u0002H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\n0\u0002H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u0005\u001a\u001a\u0010\u000c\u001a\u00020\r*\u0008\u0012\u0004\u0012\u00020\u00030\u000eH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a\u001a\u0010\u0010\u001a\u00020\u0011*\u0008\u0012\u0004\u0012\u00020\u00010\u000eH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012\u001a\u001a\u0010\u0013\u001a\u00020\u0014*\u0008\u0012\u0004\u0012\u00020\u00070\u000eH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u001a\u001a\u0010\u0016\u001a\u00020\u0017*\u0008\u0012\u0004\u0012\u00020\n0\u000eH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "sum",
        "Lkotlin/UInt;",
        "",
        "Lkotlin/UByte;",
        "sumOfUByte",
        "(Ljava/lang/Iterable;)I",
        "sumOfUInt",
        "Lkotlin/ULong;",
        "sumOfULong",
        "(Ljava/lang/Iterable;)J",
        "Lkotlin/UShort;",
        "sumOfUShort",
        "toUByteArray",
        "Lkotlin/UByteArray;",
        "",
        "(Ljava/util/Collection;)[B",
        "toUIntArray",
        "Lkotlin/UIntArray;",
        "(Ljava/util/Collection;)[I",
        "toULongArray",
        "Lkotlin/ULongArray;",
        "(Ljava/util/Collection;)[J",
        "toUShortArray",
        "Lkotlin/UShortArray;",
        "(Ljava/util/Collection;)[S",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xf
    }
    xi = 0x1
    xs = "kotlin/collections/UCollectionsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final sumOfUByte(Ljava/lang/Iterable;)I
    .locals 4
    .param p0, "$this$sum"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lkotlin/UByte;",
            ">;)I"
        }
    .end annotation

    const-string v0, "$this$sum"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "sum":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/UByte;

    invoke-virtual {v2}, Lkotlin/UByte;->unbox-impl()B

    move-result v2

    .line 109
    .local v2, "element":B
    and-int/lit16 v3, v2, 0xff

    invoke-static {v3}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 108
    .end local v2    # "element":B
    goto :goto_0

    .line 111
    :cond_0
    return v0
.end method

.method public static final sumOfUInt(Ljava/lang/Iterable;)I
    .locals 4
    .param p0, "$this$sum"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lkotlin/UInt;",
            ">;)I"
        }
    .end annotation

    const-string v0, "$this$sum"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "sum":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/UInt;

    invoke-virtual {v2}, Lkotlin/UInt;->unbox-impl()I

    move-result v2

    .line 81
    .local v2, "element":I
    add-int v3, v0, v2

    invoke-static {v3}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 80
    .end local v2    # "element":I
    goto :goto_0

    .line 83
    :cond_0
    return v0
.end method

.method public static final sumOfULong(Ljava/lang/Iterable;)J
    .locals 7
    .param p0, "$this$sum"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lkotlin/ULong;",
            ">;)J"
        }
    .end annotation

    const-string v0, "$this$sum"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    const-wide/16 v0, 0x0

    .line 94
    .local v0, "sum":J
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/ULong;

    invoke-virtual {v3}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v3

    .line 95
    .local v3, "element":J
    add-long v5, v0, v3

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    .line 94
    .end local v3    # "element":J
    goto :goto_0

    .line 97
    :cond_0
    return-wide v0
.end method

.method public static final sumOfUShort(Ljava/lang/Iterable;)I
    .locals 4
    .param p0, "$this$sum"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lkotlin/UShort;",
            ">;)I"
        }
    .end annotation

    const-string v0, "$this$sum"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "sum":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/UShort;

    invoke-virtual {v2}, Lkotlin/UShort;->unbox-impl()S

    move-result v2

    .line 123
    .local v2, "element":S
    const v3, 0xffff

    and-int/2addr v3, v2

    invoke-static {v3}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 122
    .end local v2    # "element":S
    goto :goto_0

    .line 125
    :cond_0
    return v0
.end method

.method public static final toUByteArray(Ljava/util/Collection;)[B
    .locals 5
    .param p0, "$this$toUByteArray"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/UByte;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "$this$toUByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lkotlin/UByteArray;->constructor-impl(I)[B

    move-result-object v0

    .line 27
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 28
    .local v1, "index":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/UByte;

    invoke-virtual {v3}, Lkotlin/UByte;->unbox-impl()B

    move-result v3

    .line 29
    .local v3, "element":B
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    invoke-static {v0, v1, v3}, Lkotlin/UByteArray;->set-VurrAj0([BIB)V

    .line 28
    .end local v3    # "element":B
    move v1, v4

    goto :goto_0

    .line 30
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :cond_0
    return-object v0
.end method

.method public static final toUIntArray(Ljava/util/Collection;)[I
    .locals 5
    .param p0, "$this$toUIntArray"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/UInt;",
            ">;)[I"
        }
    .end annotation

    const-string v0, "$this$toUIntArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lkotlin/UIntArray;->constructor-impl(I)[I

    move-result-object v0

    .line 40
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 41
    .local v1, "index":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/UInt;

    invoke-virtual {v3}, Lkotlin/UInt;->unbox-impl()I

    move-result v3

    .line 42
    .local v3, "element":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    invoke-static {v0, v1, v3}, Lkotlin/UIntArray;->set-VXSXFK8([III)V

    .line 41
    .end local v3    # "element":I
    move v1, v4

    goto :goto_0

    .line 43
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :cond_0
    return-object v0
.end method

.method public static final toULongArray(Ljava/util/Collection;)[J
    .locals 6
    .param p0, "$this$toULongArray"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/ULong;",
            ">;)[J"
        }
    .end annotation

    const-string v0, "$this$toULongArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v0

    .line 53
    .local v0, "result":[J
    const/4 v1, 0x0

    .line 54
    .local v1, "index":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/ULong;

    invoke-virtual {v3}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v3

    .line 55
    .local v3, "element":J
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "index":I
    .local v5, "index":I
    invoke-static {v0, v1, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 54
    .end local v3    # "element":J
    move v1, v5

    goto :goto_0

    .line 56
    .end local v5    # "index":I
    .restart local v1    # "index":I
    :cond_0
    return-object v0
.end method

.method public static final toUShortArray(Ljava/util/Collection;)[S
    .locals 5
    .param p0, "$this$toUShortArray"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/UShort;",
            ">;)[S"
        }
    .end annotation

    const-string v0, "$this$toUShortArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lkotlin/UShortArray;->constructor-impl(I)[S

    move-result-object v0

    .line 66
    .local v0, "result":[S
    const/4 v1, 0x0

    .line 67
    .local v1, "index":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/UShort;

    invoke-virtual {v3}, Lkotlin/UShort;->unbox-impl()S

    move-result v3

    .line 68
    .local v3, "element":S
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    invoke-static {v0, v1, v3}, Lkotlin/UShortArray;->set-01HTLdE([SIS)V

    .line 67
    .end local v3    # "element":S
    move v1, v4

    goto :goto_0

    .line 69
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :cond_0
    return-object v0
.end method
