.class public final Lkotlin/collections/UArraySortingKt;
.super Ljava/lang/Object;
.source "UArraySorting.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUArraySorting.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UArraySorting.kt\nkotlin/collections/UArraySortingKt\n*L\n1#1,152:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0012\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\r\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u001a\u001a\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u001a\u001a\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u0008H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u001a\u001a\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000bH\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!\u001a\u001a\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000eH\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006$"
    }
    d2 = {
        "partition",
        "",
        "array",
        "Lkotlin/UByteArray;",
        "left",
        "right",
        "partition-4UcCI2c",
        "([BII)I",
        "Lkotlin/UIntArray;",
        "partition-oBK06Vg",
        "([III)I",
        "Lkotlin/ULongArray;",
        "partition--nroSd4",
        "([JII)I",
        "Lkotlin/UShortArray;",
        "partition-Aa5vz7o",
        "([SII)I",
        "quickSort",
        "",
        "quickSort-4UcCI2c",
        "([BII)V",
        "quickSort-oBK06Vg",
        "([III)V",
        "quickSort--nroSd4",
        "([JII)V",
        "quickSort-Aa5vz7o",
        "([SII)V",
        "sortArray",
        "sortArray-GBYM_sE",
        "([B)V",
        "sortArray--ajY-9A",
        "([I)V",
        "sortArray-QwZRm1k",
        "([J)V",
        "sortArray-rL5Bavg",
        "([S)V",
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
.method private static final partition--nroSd4([JII)I
    .locals 8
    .param p0, "array"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 111
    move v0, p1

    .line 112
    .local v0, "i":I
    move v1, p2

    .line 113
    .local v1, "j":I
    add-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    invoke-static {p0, v2}, Lkotlin/ULongArray;->get-impl([JI)J

    move-result-wide v2

    .line 114
    .local v2, "pivot":J
    :goto_0
    if-gt v0, v1, :cond_3

    .line 115
    :goto_1
    invoke-static {p0, v0}, Lkotlin/ULongArray;->get-impl([JI)J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v4

    if-gez v4, :cond_0

    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 115
    goto :goto_1

    .line 117
    :cond_0
    :goto_2
    invoke-static {p0, v1}, Lkotlin/ULongArray;->get-impl([JI)J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v4

    if-lez v4, :cond_1

    .line 118
    add-int/lit8 v1, v1, -0x1

    .line 117
    goto :goto_2

    .line 119
    :cond_1
    if-gt v0, v1, :cond_2

    .line 120
    invoke-static {p0, v0}, Lkotlin/ULongArray;->get-impl([JI)J

    move-result-wide v4

    .line 121
    .local v4, "tmp":J
    invoke-static {p0, v1}, Lkotlin/ULongArray;->get-impl([JI)J

    move-result-wide v6

    invoke-static {p0, v0, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 122
    invoke-static {p0, v1, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 124
    add-int/lit8 v1, v1, -0x1

    .line 114
    .end local v4    # "tmp":J
    :cond_2
    goto :goto_0

    .line 127
    :cond_3
    return v0
.end method

.method private static final partition-4UcCI2c([BII)I
    .locals 5
    .param p0, "array"    # [B
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 12
    move v0, p1

    .line 13
    .local v0, "i":I
    move v1, p2

    .line 14
    .local v1, "j":I
    add-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    invoke-static {p0, v2}, Lkotlin/UByteArray;->get-impl([BI)B

    move-result v2

    .line 15
    .local v2, "pivot":B
    :goto_0
    if-gt v0, v1, :cond_3

    .line 16
    :goto_1
    invoke-static {p0, v0}, Lkotlin/UByteArray;->get-impl([BI)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v2, 0xff

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-gez v3, :cond_0

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 16
    goto :goto_1

    .line 18
    :cond_0
    :goto_2
    invoke-static {p0, v1}, Lkotlin/UByteArray;->get-impl([BI)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v2, 0xff

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-lez v3, :cond_1

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 18
    goto :goto_2

    .line 20
    :cond_1
    if-gt v0, v1, :cond_2

    .line 21
    invoke-static {p0, v0}, Lkotlin/UByteArray;->get-impl([BI)B

    move-result v3

    .line 22
    .local v3, "tmp":B
    invoke-static {p0, v1}, Lkotlin/UByteArray;->get-impl([BI)B

    move-result v4

    invoke-static {p0, v0, v4}, Lkotlin/UByteArray;->set-VurrAj0([BIB)V

    .line 23
    invoke-static {p0, v1, v3}, Lkotlin/UByteArray;->set-VurrAj0([BIB)V

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 15
    .end local v3    # "tmp":B
    :cond_2
    goto :goto_0

    .line 28
    :cond_3
    return v0
.end method

.method private static final partition-Aa5vz7o([SII)I
    .locals 6
    .param p0, "array"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 45
    move v0, p1

    .line 46
    .local v0, "i":I
    move v1, p2

    .line 47
    .local v1, "j":I
    add-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    invoke-static {p0, v2}, Lkotlin/UShortArray;->get-impl([SI)S

    move-result v2

    .line 48
    .local v2, "pivot":S
    :goto_0
    if-gt v0, v1, :cond_3

    .line 49
    :goto_1
    invoke-static {p0, v0}, Lkotlin/UShortArray;->get-impl([SI)S

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    and-int v5, v2, v4

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-gez v3, :cond_0

    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 49
    goto :goto_1

    .line 51
    :cond_0
    :goto_2
    invoke-static {p0, v1}, Lkotlin/UShortArray;->get-impl([SI)S

    move-result v3

    and-int/2addr v3, v4

    and-int v5, v2, v4

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-lez v3, :cond_1

    .line 52
    add-int/lit8 v1, v1, -0x1

    .line 51
    goto :goto_2

    .line 53
    :cond_1
    if-gt v0, v1, :cond_2

    .line 54
    invoke-static {p0, v0}, Lkotlin/UShortArray;->get-impl([SI)S

    move-result v3

    .line 55
    .local v3, "tmp":S
    invoke-static {p0, v1}, Lkotlin/UShortArray;->get-impl([SI)S

    move-result v4

    invoke-static {p0, v0, v4}, Lkotlin/UShortArray;->set-01HTLdE([SIS)V

    .line 56
    invoke-static {p0, v1, v3}, Lkotlin/UShortArray;->set-01HTLdE([SIS)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    add-int/lit8 v1, v1, -0x1

    .line 48
    .end local v3    # "tmp":S
    :cond_2
    goto :goto_0

    .line 61
    :cond_3
    return v0
.end method

.method private static final partition-oBK06Vg([III)I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 78
    move v0, p1

    .line 79
    .local v0, "i":I
    move v1, p2

    .line 80
    .local v1, "j":I
    add-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    invoke-static {p0, v2}, Lkotlin/UIntArray;->get-impl([II)I

    move-result v2

    .line 81
    .local v2, "pivot":I
    :goto_0
    if-gt v0, v1, :cond_3

    .line 82
    :goto_1
    invoke-static {p0, v0}, Lkotlin/UIntArray;->get-impl([II)I

    move-result v3

    invoke-static {v3, v2}, Lkotlin/UnsignedKt;->uintCompare(II)I

    move-result v3

    if-gez v3, :cond_0

    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 82
    goto :goto_1

    .line 84
    :cond_0
    :goto_2
    invoke-static {p0, v1}, Lkotlin/UIntArray;->get-impl([II)I

    move-result v3

    invoke-static {v3, v2}, Lkotlin/UnsignedKt;->uintCompare(II)I

    move-result v3

    if-lez v3, :cond_1

    .line 85
    add-int/lit8 v1, v1, -0x1

    .line 84
    goto :goto_2

    .line 86
    :cond_1
    if-gt v0, v1, :cond_2

    .line 87
    invoke-static {p0, v0}, Lkotlin/UIntArray;->get-impl([II)I

    move-result v3

    .line 88
    .local v3, "tmp":I
    invoke-static {p0, v1}, Lkotlin/UIntArray;->get-impl([II)I

    move-result v4

    invoke-static {p0, v0, v4}, Lkotlin/UIntArray;->set-VXSXFK8([III)V

    .line 89
    invoke-static {p0, v1, v3}, Lkotlin/UIntArray;->set-VXSXFK8([III)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 91
    add-int/lit8 v1, v1, -0x1

    .line 81
    .end local v3    # "tmp":I
    :cond_2
    goto :goto_0

    .line 94
    :cond_3
    return v0
.end method

.method private static final quickSort--nroSd4([JII)V
    .locals 2
    .param p0, "array"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 133
    invoke-static {p0, p1, p2}, Lkotlin/collections/UArraySortingKt;->partition--nroSd4([JII)I

    move-result v0

    .line 134
    .local v0, "index":I
    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    .line 135
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, p1, v1}, Lkotlin/collections/UArraySortingKt;->quickSort--nroSd4([JII)V

    .line 136
    :cond_0
    if-ge v0, p2, :cond_1

    .line 137
    invoke-static {p0, v0, p2}, Lkotlin/collections/UArraySortingKt;->quickSort--nroSd4([JII)V

    .line 138
    :cond_1
    return-void
.end method

.method private static final quickSort-4UcCI2c([BII)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 34
    invoke-static {p0, p1, p2}, Lkotlin/collections/UArraySortingKt;->partition-4UcCI2c([BII)I

    move-result v0

    .line 35
    .local v0, "index":I
    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    .line 36
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, p1, v1}, Lkotlin/collections/UArraySortingKt;->quickSort-4UcCI2c([BII)V

    .line 37
    :cond_0
    if-ge v0, p2, :cond_1

    .line 38
    invoke-static {p0, v0, p2}, Lkotlin/collections/UArraySortingKt;->quickSort-4UcCI2c([BII)V

    .line 39
    :cond_1
    return-void
.end method

.method private static final quickSort-Aa5vz7o([SII)V
    .locals 2
    .param p0, "array"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 67
    invoke-static {p0, p1, p2}, Lkotlin/collections/UArraySortingKt;->partition-Aa5vz7o([SII)I

    move-result v0

    .line 68
    .local v0, "index":I
    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    .line 69
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, p1, v1}, Lkotlin/collections/UArraySortingKt;->quickSort-Aa5vz7o([SII)V

    .line 70
    :cond_0
    if-ge v0, p2, :cond_1

    .line 71
    invoke-static {p0, v0, p2}, Lkotlin/collections/UArraySortingKt;->quickSort-Aa5vz7o([SII)V

    .line 72
    :cond_1
    return-void
.end method

.method private static final quickSort-oBK06Vg([III)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 100
    invoke-static {p0, p1, p2}, Lkotlin/collections/UArraySortingKt;->partition-oBK06Vg([III)I

    move-result v0

    .line 101
    .local v0, "index":I
    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    .line 102
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, p1, v1}, Lkotlin/collections/UArraySortingKt;->quickSort-oBK06Vg([III)V

    .line 103
    :cond_0
    if-ge v0, p2, :cond_1

    .line 104
    invoke-static {p0, v0, p2}, Lkotlin/collections/UArraySortingKt;->quickSort-oBK06Vg([III)V

    .line 105
    :cond_1
    return-void
.end method

.method public static final sortArray--ajY-9A([I)V
    .locals 2
    .param p0, "array"    # [I

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-static {p0}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lkotlin/collections/UArraySortingKt;->quickSort-oBK06Vg([III)V

    return-void
.end method

.method public static final sortArray-GBYM_sE([B)V
    .locals 2
    .param p0, "array"    # [B

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-static {p0}, Lkotlin/UByteArray;->getSize-impl([B)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lkotlin/collections/UArraySortingKt;->quickSort-4UcCI2c([BII)V

    return-void
.end method

.method public static final sortArray-QwZRm1k([J)V
    .locals 2
    .param p0, "array"    # [J

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {p0}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lkotlin/collections/UArraySortingKt;->quickSort--nroSd4([JII)V

    return-void
.end method

.method public static final sortArray-rL5Bavg([S)V
    .locals 2
    .param p0, "array"    # [S

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-static {p0}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lkotlin/collections/UArraySortingKt;->quickSort-Aa5vz7o([SII)V

    return-void
.end method
