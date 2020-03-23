.class public final Lkotlin/experimental/BitwiseOperationsKt;
.super Ljava/lang/Object;
.source "bitwiseOperations.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0004\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u000c\u001a\u0015\u0010\u0000\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u000c\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0004\u001a\u00020\u0003*\u00020\u0003H\u0087\u0008\u001a\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u000c\u001a\u0015\u0010\u0005\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u000c\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u000c\u001a\u0015\u0010\u0006\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u000c\u00a8\u0006\u0007"
    }
    d2 = {
        "and",
        "",
        "other",
        "",
        "inv",
        "or",
        "xor",
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
.method private static final and(BB)B
    .locals 2
    .param p0, "$this$and"    # B
    .param p1, "other"    # B

    const/4 v0, 0x0

    .line 11
    .local v0, "$i$f$and":I
    and-int v1, p0, p1

    int-to-byte v1, v1

    return v1
.end method

.method private static final and(SS)S
    .locals 2
    .param p0, "$this$and"    # S
    .param p1, "other"    # S

    const/4 v0, 0x0

    .line 32
    .local v0, "$i$f$and":I
    and-int v1, p0, p1

    int-to-short v1, v1

    return v1
.end method

.method private static final inv(B)B
    .locals 2
    .param p0, "$this$inv"    # B

    const/4 v0, 0x0

    .line 26
    .local v0, "$i$f$inv":I
    xor-int/lit8 v1, p0, -0x1

    int-to-byte v1, v1

    return v1
.end method

.method private static final inv(S)S
    .locals 2
    .param p0, "$this$inv"    # S

    const/4 v0, 0x0

    .line 47
    .local v0, "$i$f$inv":I
    xor-int/lit8 v1, p0, -0x1

    int-to-short v1, v1

    return v1
.end method

.method private static final or(BB)B
    .locals 2
    .param p0, "$this$or"    # B
    .param p1, "other"    # B

    const/4 v0, 0x0

    .line 16
    .local v0, "$i$f$or":I
    or-int v1, p0, p1

    int-to-byte v1, v1

    return v1
.end method

.method private static final or(SS)S
    .locals 2
    .param p0, "$this$or"    # S
    .param p1, "other"    # S

    const/4 v0, 0x0

    .line 37
    .local v0, "$i$f$or":I
    or-int v1, p0, p1

    int-to-short v1, v1

    return v1
.end method

.method private static final xor(BB)B
    .locals 2
    .param p0, "$this$xor"    # B
    .param p1, "other"    # B

    const/4 v0, 0x0

    .line 21
    .local v0, "$i$f$xor":I
    xor-int v1, p0, p1

    int-to-byte v1, v1

    return v1
.end method

.method private static final xor(SS)S
    .locals 2
    .param p0, "$this$xor"    # S
    .param p1, "other"    # S

    const/4 v0, 0x0

    .line 42
    .local v0, "$i$f$xor":I
    xor-int v1, p0, p1

    int-to-short v1, v1

    return v1
.end method
