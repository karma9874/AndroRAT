.class Lkotlin/NumbersKt__NumbersJVMKt;
.super Lkotlin/NumbersKt__BigIntegersKt;
.source "NumbersJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNumbersJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NumbersJVM.kt\nkotlin/NumbersKt__NumbersJVMKt\n*L\n1#1,244:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0002H\u0087\u0008\u001a\u0015\u0010\u0005\u001a\u00020\t*\u00020\n2\u0006\u0010\u0008\u001a\u00020\u0001H\u0087\u0008\u001a\r\u0010\u000b\u001a\u00020\u000c*\u00020\u0006H\u0087\u0008\u001a\r\u0010\u000b\u001a\u00020\u000c*\u00020\tH\u0087\u0008\u001a\r\u0010\r\u001a\u00020\u000c*\u00020\u0006H\u0087\u0008\u001a\r\u0010\r\u001a\u00020\u000c*\u00020\tH\u0087\u0008\u001a\r\u0010\u000e\u001a\u00020\u000c*\u00020\u0006H\u0087\u0008\u001a\r\u0010\u000e\u001a\u00020\u000c*\u00020\tH\u0087\u0008\u001a\u0015\u0010\u000f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u0011\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0012\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0012\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0013\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0013\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0014\u001a\u00020\u0002*\u00020\u0006H\u0087\u0008\u001a\r\u0010\u0014\u001a\u00020\u0001*\u00020\tH\u0087\u0008\u001a\r\u0010\u0015\u001a\u00020\u0002*\u00020\u0006H\u0087\u0008\u001a\r\u0010\u0015\u001a\u00020\u0001*\u00020\tH\u0087\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "countLeadingZeroBits",
        "",
        "",
        "countOneBits",
        "countTrailingZeroBits",
        "fromBits",
        "",
        "Lkotlin/Double$Companion;",
        "bits",
        "",
        "Lkotlin/Float$Companion;",
        "isFinite",
        "",
        "isInfinite",
        "isNaN",
        "rotateLeft",
        "bitCount",
        "rotateRight",
        "takeHighestOneBit",
        "takeLowestOneBit",
        "toBits",
        "toRawBits",
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

    invoke-direct {p0}, Lkotlin/NumbersKt__BigIntegersKt;-><init>()V

    return-void
.end method

.method private static final countLeadingZeroBits(I)I
    .locals 2
    .param p0, "$this$countLeadingZeroBits"    # I

    const/4 v0, 0x0

    .line 111
    .local v0, "$i$f$countLeadingZeroBits":I
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    return v1
.end method

.method private static final countLeadingZeroBits(J)I
    .locals 2
    .param p0, "$this$countLeadingZeroBits"    # J

    const/4 v0, 0x0

    .line 185
    .local v0, "$i$f$countLeadingZeroBits":I
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    return v1
.end method

.method private static final countOneBits(I)I
    .locals 2
    .param p0, "$this$countOneBits"    # I

    const/4 v0, 0x0

    .line 103
    .local v0, "$i$f$countOneBits":I
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    return v1
.end method

.method private static final countOneBits(J)I
    .locals 2
    .param p0, "$this$countOneBits"    # J

    const/4 v0, 0x0

    .line 177
    .local v0, "$i$f$countOneBits":I
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    return v1
.end method

.method private static final countTrailingZeroBits(I)I
    .locals 2
    .param p0, "$this$countTrailingZeroBits"    # I

    const/4 v0, 0x0

    .line 119
    .local v0, "$i$f$countTrailingZeroBits":I
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    return v1
.end method

.method private static final countTrailingZeroBits(J)I
    .locals 2
    .param p0, "$this$countTrailingZeroBits"    # J

    const/4 v0, 0x0

    .line 193
    .local v0, "$i$f$countTrailingZeroBits":I
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    return v1
.end method

.method private static final fromBits(Lkotlin/jvm/internal/DoubleCompanionObject;J)D
    .locals 3
    .param p0, "$this$fromBits"    # Lkotlin/jvm/internal/DoubleCompanionObject;
    .param p1, "bits"    # J

    const/4 v0, 0x0

    .line 70
    .local v0, "$i$f$fromBits":I
    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final fromBits(Lkotlin/jvm/internal/FloatCompanionObject;I)F
    .locals 2
    .param p0, "$this$fromBits"    # Lkotlin/jvm/internal/FloatCompanionObject;
    .param p1, "bits"    # I

    const/4 v0, 0x0

    .line 94
    .local v0, "$i$f$fromBits":I
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method private static final isFinite(D)Z
    .locals 2
    .param p0, "$this$isFinite"    # D

    const/4 v0, 0x0

    .line 40
    .local v0, "$i$f$isFinite":I
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static final isFinite(F)Z
    .locals 2
    .param p0, "$this$isFinite"    # F

    const/4 v0, 0x0

    .line 46
    .local v0, "$i$f$isFinite":I
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static final isInfinite(D)Z
    .locals 2
    .param p0, "$this$isInfinite"    # D

    const/4 v0, 0x0

    .line 28
    .local v0, "$i$f$isInfinite":I
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    return v1
.end method

.method private static final isInfinite(F)Z
    .locals 2
    .param p0, "$this$isInfinite"    # F

    const/4 v0, 0x0

    .line 34
    .local v0, "$i$f$isInfinite":I
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    return v1
.end method

.method private static final isNaN(D)Z
    .locals 2
    .param p0, "$this$isNaN"    # D

    const/4 v0, 0x0

    .line 15
    .local v0, "$i$f$isNaN":I
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    return v1
.end method

.method private static final isNaN(F)Z
    .locals 2
    .param p0, "$this$isNaN"    # F

    const/4 v0, 0x0

    .line 22
    .local v0, "$i$f$isNaN":I
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    return v1
.end method

.method private static final rotateLeft(II)I
    .locals 2
    .param p0, "$this$rotateLeft"    # I
    .param p1, "bitCount"    # I

    const/4 v0, 0x0

    .line 152
    .local v0, "$i$f$rotateLeft":I
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    return v1
.end method

.method private static final rotateLeft(JI)J
    .locals 3
    .param p0, "$this$rotateLeft"    # J
    .param p2, "bitCount"    # I

    const/4 v0, 0x0

    .line 226
    .local v0, "$i$f$rotateLeft":I
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    return-wide v1
.end method

.method private static final rotateRight(II)I
    .locals 2
    .param p0, "$this$rotateRight"    # I
    .param p1, "bitCount"    # I

    const/4 v0, 0x0

    .line 168
    .local v0, "$i$f$rotateRight":I
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    return v1
.end method

.method private static final rotateRight(JI)J
    .locals 3
    .param p0, "$this$rotateRight"    # J
    .param p2, "bitCount"    # I

    const/4 v0, 0x0

    .line 241
    .local v0, "$i$f$rotateRight":I
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    return-wide v1
.end method

.method private static final takeHighestOneBit(I)I
    .locals 2
    .param p0, "$this$takeHighestOneBit"    # I

    const/4 v0, 0x0

    .line 128
    .local v0, "$i$f$takeHighestOneBit":I
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    return v1
.end method

.method private static final takeHighestOneBit(J)J
    .locals 3
    .param p0, "$this$takeHighestOneBit"    # J

    const/4 v0, 0x0

    .line 202
    .local v0, "$i$f$takeHighestOneBit":I
    invoke-static {p0, p1}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v1

    return-wide v1
.end method

.method private static final takeLowestOneBit(I)I
    .locals 2
    .param p0, "$this$takeLowestOneBit"    # I

    const/4 v0, 0x0

    .line 137
    .local v0, "$i$f$takeLowestOneBit":I
    invoke-static {p0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v1

    return v1
.end method

.method private static final takeLowestOneBit(J)J
    .locals 3
    .param p0, "$this$takeLowestOneBit"    # J

    const/4 v0, 0x0

    .line 211
    .local v0, "$i$f$takeLowestOneBit":I
    invoke-static {p0, p1}, Ljava/lang/Long;->lowestOneBit(J)J

    move-result-wide v1

    return-wide v1
.end method

.method private static final toBits(F)I
    .locals 2
    .param p0, "$this$toBits"    # F

    const/4 v0, 0x0

    .line 78
    .local v0, "$i$f$toBits":I
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    return v1
.end method

.method private static final toBits(D)J
    .locals 3
    .param p0, "$this$toBits"    # D

    const/4 v0, 0x0

    .line 54
    .local v0, "$i$f$toBits":I
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    return-wide v1
.end method

.method private static final toRawBits(F)I
    .locals 2
    .param p0, "$this$toRawBits"    # F

    const/4 v0, 0x0

    .line 87
    .local v0, "$i$f$toRawBits":I
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    return v1
.end method

.method private static final toRawBits(D)J
    .locals 3
    .param p0, "$this$toRawBits"    # D

    const/4 v0, 0x0

    .line 63
    .local v0, "$i$f$toRawBits":I
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    return-wide v1
.end method
