.class public final Lkotlin/UnsignedKt;
.super Ljava/lang/Object;
.source "UnsignedUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnsignedUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnsignedUtils.kt\nkotlin/UnsignedKt\n*L\n1#1,107:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u001a\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0001\u001a\"\u0010\u000c\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001a\"\u0010\u000f\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u000e\u001a\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\tH\u0001\u001a\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u0013H\u0001\u001a\"\u0010\u0014\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a\"\u0010\u0017\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0016\u001a\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0013H\u0001\u001a\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0002\u001a\u00020\u0013H\u0000\u001a\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0002\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\tH\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "doubleToUInt",
        "Lkotlin/UInt;",
        "v",
        "",
        "(D)I",
        "doubleToULong",
        "Lkotlin/ULong;",
        "(D)J",
        "uintCompare",
        "",
        "v1",
        "v2",
        "uintDivide",
        "uintDivide-J1ME1BU",
        "(II)I",
        "uintRemainder",
        "uintRemainder-J1ME1BU",
        "uintToDouble",
        "ulongCompare",
        "",
        "ulongDivide",
        "ulongDivide-eb3DHEI",
        "(JJ)J",
        "ulongRemainder",
        "ulongRemainder-eb3DHEI",
        "ulongToDouble",
        "ulongToString",
        "",
        "base",
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
.method public static final doubleToUInt(D)I
    .locals 5
    .param p0, "v"    # D

    .line 66
    nop

    .line 67
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {v2}, Lkotlin/UnsignedKt;->uintToDouble(I)D

    move-result-wide v3

    cmpg-double v0, p0, v3

    if-gtz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {v1}, Lkotlin/UnsignedKt;->uintToDouble(I)D

    move-result-wide v2

    cmpl-double v0, p0, v2

    if-ltz v0, :cond_2

    goto :goto_0

    .line 70
    :cond_2
    const v0, 0x7fffffff

    int-to-double v1, v0

    cmpg-double v3, p0, v1

    if-gtz v3, :cond_3

    double-to-int v0, p0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    goto :goto_0

    .line 71
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v1, p0, v1

    double-to-int v1, v1

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    add-int/2addr v1, v0

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    .line 66
    :goto_0
    nop

    .line 72
    return v1
.end method

.method public static final doubleToULong(D)J
    .locals 7
    .param p0, "v"    # D

    .line 75
    nop

    .line 76
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    move-wide v1, v3

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {v3, v4}, Lkotlin/UnsignedKt;->ulongToDouble(J)D

    move-result-wide v5

    cmpg-double v0, p0, v5

    if-gtz v0, :cond_1

    move-wide v1, v3

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->ulongToDouble(J)D

    move-result-wide v3

    cmpl-double v0, p0, v3

    if-ltz v0, :cond_2

    goto :goto_0

    .line 79
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    long-to-double v0, v0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_3

    double-to-long v0, p0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    goto :goto_0

    .line 82
    :cond_3
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    sub-double v0, p0, v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    .line 75
    :goto_0
    nop

    .line 83
    return-wide v1
.end method

.method public static final uintCompare(II)I
    .locals 2
    .param p0, "v1"    # I
    .param p1, "v2"    # I

    .line 10
    const/high16 v0, -0x80000000

    xor-int v1, p0, v0

    xor-int/2addr v0, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    return v0
.end method

.method public static final uintDivide-J1ME1BU(II)I
    .locals 6
    .param p0, "v1"    # I
    .param p1, "v2"    # I

    .line 15
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static final uintRemainder-J1ME1BU(II)I
    .locals 6
    .param p0, "v1"    # I
    .param p1, "v2"    # I

    .line 17
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    rem-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static final uintToDouble(I)D
    .locals 6
    .param p0, "v"    # I

    .line 87
    const v0, 0x7fffffff

    and-int/2addr v0, p0

    int-to-double v0, v0

    ushr-int/lit8 v2, p0, 0x1f

    shl-int/lit8 v2, v2, 0x1e

    int-to-double v2, v2

    const/4 v4, 0x2

    int-to-double v4, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static final ulongCompare(JJ)I
    .locals 5
    .param p0, "v1"    # J
    .param p2, "v2"    # J

    .line 12
    const-wide/high16 v0, -0x8000000000000000L

    xor-long v2, p0, v0

    xor-long/2addr v0, p2

    cmp-long v4, v2, v0

    return v4
.end method

.method public static final ulongDivide-eb3DHEI(JJ)J
    .locals 13
    .param p0, "v1"    # J
    .param p2, "v2"    # J

    .line 24
    move-wide v0, p0

    .line 25
    .local v0, "dividend":J
    move-wide v2, p2

    .line 26
    .local v2, "divisor":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 27
    invoke-static/range {p0 .. p3}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v6

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x1

    :goto_0
    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    return-wide v4

    .line 31
    :cond_1
    cmp-long v6, v0, v4

    if-ltz v6, :cond_2

    .line 32
    div-long v4, v0, v2

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    return-wide v4

    .line 36
    :cond_2
    const/4 v4, 0x1

    ushr-long v5, v0, v4

    div-long/2addr v5, v2

    shl-long/2addr v5, v4

    .line 37
    .local v5, "quotient":J
    mul-long v7, v5, v2

    sub-long v7, v0, v7

    .line 38
    .local v7, "rem":J
    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v9

    if-ltz v9, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    int-to-long v9, v4

    add-long/2addr v9, v5

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    return-wide v9
.end method

.method public static final ulongRemainder-eb3DHEI(JJ)J
    .locals 14
    .param p0, "v1"    # J
    .param p2, "v2"    # J

    .line 44
    move-wide v0, p0

    .line 45
    .local v0, "dividend":J
    move-wide/from16 v2, p2

    .line 46
    .local v2, "divisor":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 47
    invoke-static/range {p0 .. p3}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v4

    if-gez v4, :cond_0

    .line 48
    move-wide v4, p0

    goto :goto_0

    .line 50
    :cond_0
    sub-long v4, p0, p2

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    .line 47
    :goto_0
    return-wide v4

    .line 55
    :cond_1
    cmp-long v6, v0, v4

    if-ltz v6, :cond_2

    .line 56
    rem-long v4, v0, v2

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    return-wide v4

    .line 60
    :cond_2
    const/4 v6, 0x1

    ushr-long v7, v0, v6

    div-long/2addr v7, v2

    shl-long v6, v7, v6

    .line 61
    .local v6, "quotient":J
    mul-long v8, v6, v2

    sub-long v8, v0, v8

    .line 62
    .local v8, "rem":J
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v10

    if-ltz v10, :cond_3

    move-wide v4, v2

    :cond_3
    sub-long v4, v8, v4

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    return-wide v4
.end method

.method public static final ulongToDouble(J)D
    .locals 4
    .param p0, "v"    # J

    .line 90
    const/16 v0, 0xb

    ushr-long v0, p0, v0

    long-to-double v0, v0

    const/16 v2, 0x800

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide/16 v2, 0x7ff

    and-long/2addr v2, p0

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static final ulongToString(J)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # J

    .line 93
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lkotlin/UnsignedKt;->ulongToString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final ulongToString(JI)Ljava/lang/String;
    .locals 8
    .param p0, "v"    # J
    .param p2, "base"    # I

    .line 96
    const-string v0, "java.lang.Long.toString(this, checkRadix(radix))"

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-ltz v3, :cond_0

    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p0, p1, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 98
    :cond_0
    const/4 v1, 0x1

    ushr-long v2, p0, v1

    int-to-long v4, p2

    div-long/2addr v2, v4

    shl-long v1, v2, v1

    .line 99
    .local v1, "quotient":J
    int-to-long v3, p2

    mul-long v3, v3, v1

    sub-long v3, p0, v3

    .line 100
    .local v3, "rem":J
    int-to-long v5, p2

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    .line 101
    int-to-long v5, p2

    sub-long/2addr v3, v5

    .line 102
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 104
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v6

    invoke-static {v1, v2, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v6

    invoke-static {v3, v4, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
