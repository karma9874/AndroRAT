.class Lkotlin/NumbersKt__BigDecimalsKt;
.super Ljava/lang/Object;
.source "BigDecimals.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0008\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0008\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\t\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u000bH\u0087\u0008\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0087\u0008\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u000eH\u0087\u0008\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\rH\u0087\u0008\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u000fH\u0087\u0008\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rH\u0087\u0008\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u0010H\u0087\u0008\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u00102\u0006\u0010\u000c\u001a\u00020\rH\u0087\u0008\u001a\r\u0010\u0011\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u00a8\u0006\u0012"
    }
    d2 = {
        "dec",
        "Ljava/math/BigDecimal;",
        "div",
        "other",
        "inc",
        "minus",
        "mod",
        "plus",
        "rem",
        "times",
        "toBigDecimal",
        "",
        "mathContext",
        "Ljava/math/MathContext;",
        "",
        "",
        "",
        "unaryMinus",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final dec(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "$this$dec"    # Ljava/math/BigDecimal;

    const/4 v0, 0x0

    .local v0, "$i$f$dec":I
    const-string v1, "$this$dec"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "this.subtract(BigDecimal.ONE)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "$this$div"    # Ljava/math/BigDecimal;
    .param p1, "other"    # Ljava/math/BigDecimal;

    const/4 v0, 0x0

    .local v0, "$i$f$div":I
    const-string v1, "$this$div"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "this.divide(other, RoundingMode.HALF_EVEN)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final inc(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "$this$inc"    # Ljava/math/BigDecimal;

    const/4 v0, 0x0

    .local v0, "$i$f$inc":I
    const-string v1, "$this$inc"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "this.add(BigDecimal.ONE)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final minus(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "$this$minus"    # Ljava/math/BigDecimal;
    .param p1, "other"    # Ljava/math/BigDecimal;

    const/4 v0, 0x0

    .local v0, "$i$f$minus":I
    const-string v1, "$this$minus"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "this.subtract(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final mod(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "$this$mod"    # Ljava/math/BigDecimal;
    .param p1, "other"    # Ljava/math/BigDecimal;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use rem(other) instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "rem(other)"
            imports = {}
        .end subannotation
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$mod":I
    const-string v1, "$this$mod"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "this.remainder(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final plus(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "$this$plus"    # Ljava/math/BigDecimal;
    .param p1, "other"    # Ljava/math/BigDecimal;

    const/4 v0, 0x0

    .local v0, "$i$f$plus":I
    const-string v1, "$this$plus"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "this.add(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final rem(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "$this$rem"    # Ljava/math/BigDecimal;
    .param p1, "other"    # Ljava/math/BigDecimal;

    const/4 v0, 0x0

    .local v0, "$i$f$rem":I
    const-string v1, "$this$rem"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "this.remainder(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final times(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "$this$times"    # Ljava/math/BigDecimal;
    .param p1, "other"    # Ljava/math/BigDecimal;

    const/4 v0, 0x0

    .local v0, "$i$f$times":I
    const-string v1, "$this$times"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "this.multiply(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toBigDecimal(D)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "$this$toBigDecimal"    # D

    const/4 v0, 0x0

    .line 134
    .local v0, "$i$f$toBigDecimal":I
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toBigDecimal(DLjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "$this$toBigDecimal"    # D
    .param p2, "mathContext"    # Ljava/math/MathContext;

    const/4 v0, 0x0

    .line 145
    .local v0, "$i$f$toBigDecimal":I
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    return-object v1
.end method

.method private static final toBigDecimal(F)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "$this$toBigDecimal"    # F

    const/4 v0, 0x0

    .line 114
    .local v0, "$i$f$toBigDecimal":I
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toBigDecimal(FLjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "$this$toBigDecimal"    # F
    .param p1, "mathContext"    # Ljava/math/MathContext;

    const/4 v0, 0x0

    .line 125
    .local v0, "$i$f$toBigDecimal":I
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    return-object v1
.end method

.method private static final toBigDecimal(I)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "$this$toBigDecimal"    # I

    const/4 v0, 0x0

    .line 80
    .local v0, "$i$f$toBigDecimal":I
    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "BigDecimal.valueOf(this.toLong())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toBigDecimal(ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "$this$toBigDecimal"    # I
    .param p1, "mathContext"    # Ljava/math/MathContext;

    const/4 v0, 0x0

    .line 89
    .local v0, "$i$f$toBigDecimal":I
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0, p1}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    return-object v1
.end method

.method private static final toBigDecimal(J)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "$this$toBigDecimal"    # J

    const/4 v0, 0x0

    .line 96
    .local v0, "$i$f$toBigDecimal":I
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "BigDecimal.valueOf(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toBigDecimal(JLjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "$this$toBigDecimal"    # J
    .param p2, "mathContext"    # Ljava/math/MathContext;

    const/4 v0, 0x0

    .line 104
    .local v0, "$i$f$toBigDecimal":I
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0, p1, p2}, Ljava/math/BigDecimal;-><init>(JLjava/math/MathContext;)V

    return-object v1
.end method

.method private static final unaryMinus(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "$this$unaryMinus"    # Ljava/math/BigDecimal;

    const/4 v0, 0x0

    .local v0, "$i$f$unaryMinus":I
    const-string v1, "$this$unaryMinus"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "this.negate()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
