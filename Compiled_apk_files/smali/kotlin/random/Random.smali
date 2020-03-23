.class public abstract Lkotlin/random/Random;
.super Ljava/lang/Object;
.source "Random.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/random/Random$Companion;,
        Lkotlin/random/Random$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/Random\n*L\n1#1,353:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\'\u0018\u0000 \u00182\u00020\u0001:\u0002\u0017\u0018B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H&J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J$\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0004H\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0004H\u0016J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0016H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0016H\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/random/Random;",
        "",
        "()V",
        "nextBits",
        "",
        "bitCount",
        "nextBoolean",
        "",
        "nextBytes",
        "",
        "array",
        "fromIndex",
        "toIndex",
        "size",
        "nextDouble",
        "",
        "until",
        "from",
        "nextFloat",
        "",
        "nextInt",
        "nextLong",
        "",
        "Companion",
        "Default",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/random/Random$Companion;

.field public static final Default:Lkotlin/random/Random$Default;

.field private static final defaultRandom:Lkotlin/random/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/random/Random$Default;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/random/Random$Default;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 242
    sget-object v0, Lkotlin/internal/PlatformImplementationsKt;->IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;

    invoke-virtual {v0}, Lkotlin/internal/PlatformImplementations;->defaultPlatformRandom()Lkotlin/random/Random;

    move-result-object v0

    sput-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/Random;

    .line 268
    sget-object v0, Lkotlin/random/Random$Companion;->INSTANCE:Lkotlin/random/Random$Companion;

    sput-object v0, Lkotlin/random/Random;->Companion:Lkotlin/random/Random$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDefaultRandom$cp()Lkotlin/random/Random;
    .locals 1

    .line 20
    sget-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/Random;

    return-object v0
.end method

.method public static synthetic nextBytes$default(Lkotlin/random/Random;[BIIILjava/lang/Object;)[B
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 195
    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/random/Random;->nextBytes([BII)[B

    move-result-object p0

    return-object p0

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: nextBytes"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract nextBits(I)I
.end method

.method public nextBoolean()Z
    .locals 2

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBits(I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextBytes(I)[B
    .locals 1
    .param p1, "size"    # I

    .line 230
    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method public nextBytes([B)[B
    .locals 2
    .param p1, "array"    # [B

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lkotlin/random/Random;->nextBytes([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public nextBytes([BII)[B
    .locals 10
    .param p1, "array"    # [B
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    if-lt v0, p2, :cond_2

    array-length v0, p1

    if-gez p3, :cond_1

    goto :goto_0

    :cond_1
    if-lt v0, p3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const-string v3, "fromIndex ("

    if-eqz v0, :cond_7

    .line 197
    if-gt p2, p3, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 199
    sub-int v0, p3, p2

    div-int/lit8 v0, v0, 0x4

    .line 201
    .local v0, "steps":I
    move v3, p2

    .line 202
    .local v3, "position":I
    move v4, v3

    const/4 v3, 0x0

    .end local v3    # "position":I
    .local v4, "position":I
    :goto_3
    if-ge v3, v0, :cond_4

    move v5, v3

    .local v5, "it":I
    const/4 v6, 0x0

    .line 203
    .local v6, "$i$a$-repeat-Random$nextBytes$3":I
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v7

    .line 204
    .local v7, "v":I
    int-to-byte v8, v7

    aput-byte v8, p1, v4

    .line 205
    add-int/lit8 v8, v4, 0x1

    ushr-int/lit8 v9, v7, 0x8

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 206
    add-int/lit8 v8, v4, 0x2

    ushr-int/lit8 v9, v7, 0x10

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 207
    add-int/lit8 v8, v4, 0x3

    ushr-int/lit8 v9, v7, 0x18

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 208
    add-int/lit8 v4, v4, 0x4

    .line 209
    .end local v7    # "v":I
    nop

    .line 202
    .end local v5    # "it":I
    .end local v6    # "$i$a$-repeat-Random$nextBytes$3":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 211
    :cond_4
    sub-int v3, p3, v4

    .line 212
    .local v3, "remainder":I
    mul-int/lit8 v5, v3, 0x8

    invoke-virtual {p0, v5}, Lkotlin/random/Random;->nextBits(I)I

    move-result v5

    .line 213
    .local v5, "vr":I
    nop

    :goto_4
    if-ge v1, v3, :cond_5

    .line 214
    .local v1, "i":I
    add-int v6, v4, v1

    mul-int/lit8 v7, v1, 0x8

    ushr-int v7, v5, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 213
    nop

    .end local v1    # "i":I
    add-int/2addr v1, v2

    goto :goto_4

    .line 217
    :cond_5
    return-object p1

    .line 197
    .end local v0    # "steps":I
    .end local v3    # "remainder":I
    .end local v4    # "position":I
    .end local v5    # "vr":I
    :cond_6
    const/4 v0, 0x0

    .local v0, "$i$a$-require-Random$nextBytes$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") must be not greater than toIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Random$nextBytes$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 196
    :cond_7
    const/4 v0, 0x0

    .local v0, "$i$a$-require-Random$nextBytes$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") or toIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") are out of range: 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Random$nextBytes$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public nextDouble()D
    .locals 2

    .line 152
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBits(I)I

    move-result v0

    const/16 v1, 0x1b

    invoke-virtual {p0, v1}, Lkotlin/random/Random;->nextBits(I)I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/random/PlatformRandomKt;->doubleFromParts(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextDouble(D)D
    .locals 2
    .param p1, "until"    # D

    .line 161
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lkotlin/random/Random;->nextDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextDouble(DD)D
    .locals 8
    .param p1, "from"    # D
    .param p3, "until"    # D

    .line 173
    invoke-static {p1, p2, p3, p4}, Lkotlin/random/RandomKt;->checkRangeBounds(DD)V

    .line 174
    sub-double v0, p3, p1

    .line 175
    .local v0, "size":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 176
    invoke-virtual {p0}, Lkotlin/random/Random;->nextDouble()D

    move-result-wide v2

    const/4 v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, p3, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, p1, v4

    sub-double/2addr v6, v4

    mul-double v2, v2, v6

    .line 177
    .local v2, "r1":D
    add-double v4, p1, v2

    add-double/2addr v4, v2

    .end local v2    # "r1":D
    goto :goto_2

    .line 179
    :cond_2
    invoke-virtual {p0}, Lkotlin/random/Random;->nextDouble()D

    move-result-wide v2

    mul-double v2, v2, v0

    add-double v4, p1, v2

    .line 175
    :goto_2
    move-wide v2, v4

    .line 181
    .local v2, "r":D
    cmpl-double v4, v2, p3

    if-ltz v4, :cond_3

    sget-object v4, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-virtual {v4}, Lkotlin/jvm/internal/DoubleCompanionObject;->getNEGATIVE_INFINITY()D

    move-result-wide v4

    invoke-static {p3, p4, v4, v5}, Ljava/lang/Math;->nextAfter(DD)D

    move-result-wide v4

    goto :goto_3

    :cond_3
    move-wide v4, v2

    :goto_3
    return-wide v4
.end method

.method public nextFloat()F
    .locals 2

    .line 187
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBits(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x1000000

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public nextInt()I
    .locals 1

    .line 36
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBits(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 1
    .param p1, "until"    # I

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lkotlin/random/Random;->nextInt(II)I

    move-result v0

    return v0
.end method

.method public nextInt(II)I
    .locals 5
    .param p1, "from"    # I
    .param p2, "until"    # I

    .line 57
    invoke-static {p1, p2}, Lkotlin/random/RandomKt;->checkRangeBounds(II)V

    .line 58
    sub-int v0, p2, p1

    .line 59
    .local v0, "n":I
    if-gtz v0, :cond_3

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 73
    :cond_0
    :goto_0
    nop

    .line 74
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v1

    .line 75
    .local v1, "rnd":I
    if-le p1, v1, :cond_1

    goto :goto_1

    :cond_1
    if-le p2, v1, :cond_2

    return v1

    .line 73
    .end local v1    # "rnd":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 60
    :cond_3
    :goto_2
    neg-int v1, v0

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_4

    .line 61
    invoke-static {v0}, Lkotlin/random/RandomKt;->fastLog2(I)I

    move-result v1

    .line 62
    .local v1, "bitCount":I
    invoke-virtual {p0, v1}, Lkotlin/random/Random;->nextBits(I)I

    move-result v1

    .end local v1    # "bitCount":I
    goto :goto_3

    .line 64
    :cond_4
    const/4 v1, 0x0

    .line 65
    .local v1, "v":I
    :cond_5
    nop

    .line 66
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v2

    ushr-int/lit8 v2, v2, 0x1

    .line 67
    .local v2, "bits":I
    rem-int v1, v2, v0

    .line 68
    sub-int v3, v2, v1

    add-int/lit8 v4, v0, -0x1

    add-int/2addr v3, v4

    if-ltz v3, :cond_5

    .line 69
    .end local v2    # "bits":I
    nop

    .line 60
    .end local v1    # "v":I
    :goto_3
    nop

    .line 71
    .local v1, "rnd":I
    add-int v2, p1, v1

    return v2
.end method

.method public nextLong()J
    .locals 4

    .line 85
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public nextLong(J)J
    .locals 2
    .param p1, "until"    # J

    .line 96
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lkotlin/random/Random;->nextLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(JJ)J
    .locals 16
    .param p1, "from"    # J
    .param p3, "until"    # J

    .line 106
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p4}, Lkotlin/random/RandomKt;->checkRangeBounds(JJ)V

    .line 107
    sub-long v1, p3, p1

    .line 108
    .local v1, "n":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 109
    const-wide/16 v5, 0x0

    .line 110
    .local v5, "rnd":J
    neg-long v7, v1

    and-long/2addr v7, v1

    const/4 v9, 0x1

    cmp-long v10, v7, v1

    if-nez v10, :cond_2

    .line 111
    long-to-int v3, v1

    .line 112
    .local v3, "nLow":I
    const/16 v4, 0x20

    ushr-long v7, v1, v4

    long-to-int v8, v7

    .line 113
    .local v8, "nHigh":I
    nop

    .line 114
    const-wide v10, 0xffffffffL

    if-eqz v3, :cond_0

    .line 115
    invoke-static {v3}, Lkotlin/random/RandomKt;->fastLog2(I)I

    move-result v4

    .line 117
    .local v4, "bitCount":I
    invoke-virtual {v0, v4}, Lkotlin/random/Random;->nextBits(I)I

    move-result v7

    int-to-long v12, v7

    and-long/2addr v10, v12

    .end local v4    # "bitCount":I
    goto :goto_0

    .line 119
    :cond_0
    if-ne v8, v9, :cond_1

    .line 121
    invoke-virtual/range {p0 .. p0}, Lkotlin/random/Random;->nextInt()I

    move-result v4

    int-to-long v12, v4

    and-long/2addr v10, v12

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {v8}, Lkotlin/random/RandomKt;->fastLog2(I)I

    move-result v7

    .line 124
    .local v7, "bitCount":I
    invoke-virtual {v0, v7}, Lkotlin/random/Random;->nextBits(I)I

    move-result v9

    int-to-long v9, v9

    shl-long/2addr v9, v4

    invoke-virtual/range {p0 .. p0}, Lkotlin/random/Random;->nextInt()I

    move-result v4

    int-to-long v11, v4

    add-long/2addr v9, v11

    move-wide v10, v9

    .line 113
    .end local v7    # "bitCount":I
    :goto_0
    move-wide v3, v10

    .end local v5    # "rnd":J
    .end local v8    # "nHigh":I
    .local v3, "rnd":J
    goto :goto_1

    .line 128
    .end local v3    # "rnd":J
    .restart local v5    # "rnd":J
    :cond_2
    const-wide/16 v7, 0x0

    .line 129
    .local v7, "v":J
    :cond_3
    nop

    .line 130
    invoke-virtual/range {p0 .. p0}, Lkotlin/random/Random;->nextLong()J

    move-result-wide v10

    ushr-long/2addr v10, v9

    .line 131
    .local v10, "bits":J
    rem-long v7, v10, v1

    .line 132
    sub-long v12, v10, v7

    const-wide/16 v14, 0x1

    sub-long v14, v1, v14

    add-long/2addr v12, v14

    cmp-long v14, v12, v3

    if-ltz v14, :cond_3

    .line 133
    .end local v10    # "bits":J
    move-wide v3, v7

    .line 134
    .end local v5    # "rnd":J
    .end local v7    # "v":J
    .restart local v3    # "rnd":J
    :goto_1
    nop

    .line 135
    add-long v5, p1, v3

    return-wide v5

    .line 137
    .end local v3    # "rnd":J
    :cond_4
    :goto_2
    nop

    .line 138
    invoke-virtual/range {p0 .. p0}, Lkotlin/random/Random;->nextLong()J

    move-result-wide v3

    .line 139
    .restart local v3    # "rnd":J
    cmp-long v5, p1, v3

    if-lez v5, :cond_5

    goto :goto_3

    :cond_5
    cmp-long v5, p3, v3

    if-lez v5, :cond_6

    return-wide v3

    .line 137
    .end local v3    # "rnd":J
    :cond_6
    :goto_3
    goto :goto_2
.end method
