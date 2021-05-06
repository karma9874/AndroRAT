.class Lkotlin/NumbersKt__BigIntegersKt;
.super Lkotlin/NumbersKt__BigDecimalsKt;
.source "BigIntegers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBigIntegers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BigIntegers.kt\nkotlin/NumbersKt__BigIntegersKt\n*L\n1#1,130:1\n128#1:131\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u000c\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\r\u0010\u0006\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0008\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u000c\u001a\u0015\u0010\t\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u000b\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\rH\u0087\u000c\u001a\u0015\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\rH\u0087\u000c\u001a\u0015\u0010\u000f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\u0010\u001a\u00020\u0011*\u00020\u0001H\u0087\u0008\u001a!\u0010\u0010\u001a\u00020\u0011*\u00020\u00012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014H\u0087\u0008\u001a\r\u0010\u0015\u001a\u00020\u0001*\u00020\rH\u0087\u0008\u001a\r\u0010\u0015\u001a\u00020\u0001*\u00020\u0016H\u0087\u0008\u001a\r\u0010\u0017\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0018\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "and",
        "Ljava/math/BigInteger;",
        "other",
        "dec",
        "div",
        "inc",
        "inv",
        "minus",
        "or",
        "plus",
        "rem",
        "shl",
        "n",
        "",
        "shr",
        "times",
        "toBigDecimal",
        "Ljava/math/BigDecimal;",
        "scale",
        "mathContext",
        "Ljava/math/MathContext;",
        "toBigInteger",
        "",
        "unaryMinus",
        "xor",
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

    invoke-direct {p0}, Lkotlin/NumbersKt__BigDecimalsKt;-><init>()V

    return-void
.end method

.method private static final and(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "$this$and"    # Ljava/math/BigInteger;
    .param p1, "other"    # Ljava/math/BigInteger;

    const/4 v0, 0x0

    .line 74
    .local v0, "$i$f$and":I
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "this.and(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final dec(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "$this$dec"    # Ljava/math/BigInteger;

    const/4 v0, 0x0

    .local v0, "$i$f$dec":I
    const-string v1, "$this$dec"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "this.subtract(BigInteger.ONE)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final div(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "$this$div"    # Ljava/math/BigInteger;
    .param p1, "other"    # Ljava/math/BigInteger;

    const/4 v0, 0x0

    .local v0, "$i$f$div":I
    const-string v1, "$this$div"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "this.divide(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final inc(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "$this$inc"    # Ljava/math/BigInteger;

    const/4 v0, 0x0

    .local v0, "$i$f$inc":I
    const-string v1, "$this$inc"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "this.add(BigInteger.ONE)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final inv(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "$this$inv"    # Ljava/math/BigInteger;

    const/4 v0, 0x0

    .line 69
    .local v0, "$i$f$inv":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "this.not()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final minus(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "$this$minus"    # Ljava/math/BigInteger;
    .param p1, "other"    # Ljava/math/BigInteger;

    const/4 v0, 0x0

    .local v0, "$i$f$minus":I
    const-string v1, "$this$minus"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "this.subtract(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final or(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "$this$or"    # Ljava/math/BigInteger;
    .param p1, "other"    # Ljava/math/BigInteger;

    const/4 v0, 0x0

    .line 79
    .local v0, "$i$f$or":I
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "this.or(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final plus(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "$this$plus"    # Ljava/math/BigInteger;
    .param p1, "other"    # Ljava/math/BigInteger;

    const/4 v0, 0x0

    .local v0, "$i$f$plus":I
    const-string v1, "$this$plus"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "this.add(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final rem(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "$this$rem"    # Ljava/math/BigInteger;
    .param p1, "other"    # Ljava/math/BigInteger;

    const/4 v0, 0x0

    .local v0, "$i$f$rem":I
    const-string v1, "$this$rem"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "this.remainder(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final shl(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 3
    .param p0, "$this$shl"    # Ljava/math/BigInteger;
    .param p1, "n"    # I

    const/4 v0, 0x0

    .line 89
    .local v0, "$i$f$shl":I
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "this.shiftLeft(n)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final shr(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 3
    .param p0, "$this$shr"    # Ljava/math/BigInteger;
    .param p1, "n"    # I

    const/4 v0, 0x0

    .line 94
    .local v0, "$i$f$shr":I
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "this.shiftRight(n)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final times(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "$this$times"    # Ljava/math/BigInteger;
    .param p1, "other"    # Ljava/math/BigInteger;

    const/4 v0, 0x0

    .local v0, "$i$f$times":I
    const-string v1, "$this$times"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "this.multiply(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toBigDecimal(Ljava/math/BigInteger;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "$this$toBigDecimal"    # Ljava/math/BigInteger;

    const/4 v0, 0x0

    .line 116
    .local v0, "$i$f$toBigDecimal":I
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v1
.end method

.method private static final toBigDecimal(Ljava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "$this$toBigDecimal"    # Ljava/math/BigInteger;
    .param p1, "scale"    # I
    .param p2, "mathContext"    # Ljava/math/MathContext;

    const/4 v0, 0x0

    .line 128
    .local v0, "$i$f$toBigDecimal":I
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    return-object v1
.end method

.method static synthetic toBigDecimal$default(Ljava/math/BigInteger;ILjava/math/MathContext;ILjava/lang/Object;)Ljava/math/BigDecimal;
    .locals 0
    .param p0, "$this$toBigDecimal"    # Ljava/math/BigInteger;
    .param p1, "scale"    # I
    .param p2, "mathContext"    # Ljava/math/MathContext;

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 127
    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p3, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    const-string p4, "MathContext.UNLIMITED"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p2, p3

    :cond_1
    const/4 p3, 0x0

    .line 131
    .local p3, "$i$f$toBigDecimal":I
    new-instance p4, Ljava/math/BigDecimal;

    invoke-direct {p4, p0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    return-object p4
.end method

.method private static final toBigInteger(I)Ljava/math/BigInteger;
    .locals 3
    .param p0, "$this$toBigInteger"    # I

    const/4 v0, 0x0

    .line 102
    .local v0, "$i$f$toBigInteger":I
    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "BigInteger.valueOf(this.toLong())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toBigInteger(J)Ljava/math/BigInteger;
    .locals 3
    .param p0, "$this$toBigInteger"    # J

    const/4 v0, 0x0

    .line 109
    .local v0, "$i$f$toBigInteger":I
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "BigInteger.valueOf(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final unaryMinus(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "$this$unaryMinus"    # Ljava/math/BigInteger;

    const/4 v0, 0x0

    .local v0, "$i$f$unaryMinus":I
    const-string v1, "$this$unaryMinus"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "this.negate()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final xor(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "$this$xor"    # Ljava/math/BigInteger;
    .param p1, "other"    # Ljava/math/BigInteger;

    const/4 v0, 0x0

    .line 84
    .local v0, "$i$f$xor":I
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "this.xor(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
