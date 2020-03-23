.class Lkotlin/NumbersKt__NumbersKt;
.super Lkotlin/NumbersKt__NumbersJVMKt;
.source "Numbers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNumbers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Numbers.kt\nkotlin/NumbersKt__NumbersKt\n*L\n1#1,288:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\u0005\n\u0002\u0010\n\n\u0002\u0008\u0008\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0003H\u0087\u0008\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0003H\u0087\u0008\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0003H\u0087\u0008\u001a\u0014\u0010\u0006\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\u0006\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\u0008\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\u0008\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0001H\u0007\u001a\r\u0010\t\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\u001a\r\u0010\t\u001a\u00020\u0003*\u00020\u0003H\u0087\u0008\u001a\r\u0010\n\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\u001a\r\u0010\n\u001a\u00020\u0003*\u00020\u0003H\u0087\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "countLeadingZeroBits",
        "",
        "",
        "",
        "countOneBits",
        "countTrailingZeroBits",
        "rotateLeft",
        "bitCount",
        "rotateRight",
        "takeHighestOneBit",
        "takeLowestOneBit",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xf
    }
    xi = 0x1
    xs = "kotlin/NumbersKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/NumbersKt__NumbersJVMKt;-><init>()V

    return-void
.end method

.method private static final countLeadingZeroBits(B)I
    .locals 2
    .param p0, "$this$countLeadingZeroBits"    # B

    const/4 v0, 0x0

    .line 156
    .local v0, "$i$f$countLeadingZeroBits":I
    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x18

    return v1
.end method

.method private static final countLeadingZeroBits(S)I
    .locals 2
    .param p0, "$this$countLeadingZeroBits"    # S

    const/4 v0, 0x0

    .line 230
    .local v0, "$i$f$countLeadingZeroBits":I
    const v1, 0xffff

    and-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    return v1
.end method

.method private static final countOneBits(B)I
    .locals 2
    .param p0, "$this$countOneBits"    # B

    const/4 v0, 0x0

    .line 148
    .local v0, "$i$f$countOneBits":I
    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    return v1
.end method

.method private static final countOneBits(S)I
    .locals 2
    .param p0, "$this$countOneBits"    # S

    const/4 v0, 0x0

    .line 221
    .local v0, "$i$f$countOneBits":I
    const v1, 0xffff

    and-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    return v1
.end method

.method private static final countTrailingZeroBits(B)I
    .locals 2
    .param p0, "$this$countTrailingZeroBits"    # B

    const/4 v0, 0x0

    .line 164
    .local v0, "$i$f$countTrailingZeroBits":I
    or-int/lit16 v1, p0, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    return v1
.end method

.method private static final countTrailingZeroBits(S)I
    .locals 2
    .param p0, "$this$countTrailingZeroBits"    # S

    const/4 v0, 0x0

    .line 238
    .local v0, "$i$f$countTrailingZeroBits":I
    const/high16 v1, 0x10000

    or-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    return v1
.end method

.method public static final rotateLeft(BI)B
    .locals 3
    .param p0, "$this$rotateLeft"    # B
    .param p1, "bitCount"    # I

    .line 198
    and-int/lit8 v0, p1, 0x7

    shl-int v0, p0, v0

    and-int/lit16 v1, p0, 0xff

    and-int/lit8 v2, p1, 0x7

    rsub-int/lit8 v2, v2, 0x8

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public static final rotateLeft(SI)S
    .locals 3
    .param p0, "$this$rotateLeft"    # S
    .param p1, "bitCount"    # I

    .line 272
    and-int/lit8 v0, p1, 0xf

    shl-int v0, p0, v0

    const v1, 0xffff

    and-int/2addr v1, p0

    and-int/lit8 v2, p1, 0xf

    rsub-int/lit8 v2, v2, 0x10

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static final rotateRight(BI)B
    .locals 3
    .param p0, "$this$rotateRight"    # B
    .param p1, "bitCount"    # I

    .line 213
    and-int/lit8 v0, p1, 0x7

    rsub-int/lit8 v0, v0, 0x8

    shl-int v0, p0, v0

    and-int/lit16 v1, p0, 0xff

    and-int/lit8 v2, p1, 0x7

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public static final rotateRight(SI)S
    .locals 3
    .param p0, "$this$rotateRight"    # S
    .param p1, "bitCount"    # I

    .line 287
    and-int/lit8 v0, p1, 0xf

    rsub-int/lit8 v0, v0, 0x10

    shl-int v0, p0, v0

    const v1, 0xffff

    and-int/2addr v1, p0

    and-int/lit8 v2, p1, 0xf

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private static final takeHighestOneBit(B)B
    .locals 2
    .param p0, "$this$takeHighestOneBit"    # B

    const/4 v0, 0x0

    .line 173
    .local v0, "$i$f$takeHighestOneBit":I
    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    int-to-byte v1, v1

    return v1
.end method

.method private static final takeHighestOneBit(S)S
    .locals 2
    .param p0, "$this$takeHighestOneBit"    # S

    const/4 v0, 0x0

    .line 247
    .local v0, "$i$f$takeHighestOneBit":I
    const v1, 0xffff

    and-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    int-to-short v1, v1

    return v1
.end method

.method private static final takeLowestOneBit(B)B
    .locals 2
    .param p0, "$this$takeLowestOneBit"    # B

    const/4 v0, 0x0

    .line 182
    .local v0, "$i$f$takeLowestOneBit":I
    invoke-static {p0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v1

    int-to-byte v1, v1

    return v1
.end method

.method private static final takeLowestOneBit(S)S
    .locals 2
    .param p0, "$this$takeLowestOneBit"    # S

    const/4 v0, 0x0

    .line 256
    .local v0, "$i$f$takeLowestOneBit":I
    invoke-static {p0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v1

    int-to-short v1, v1

    return v1
.end method
