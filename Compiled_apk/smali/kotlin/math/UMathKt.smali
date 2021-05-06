.class public final Lkotlin/math/UMathKt;
.super Ljava/lang/Object;
.source "UMath.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a#\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a#\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a#\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u0005\u001a#\u0010\t\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "max",
        "Lkotlin/UInt;",
        "a",
        "b",
        "max-J1ME1BU",
        "(II)I",
        "Lkotlin/ULong;",
        "max-eb3DHEI",
        "(JJ)J",
        "min",
        "min-J1ME1BU",
        "min-eb3DHEI",
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
.method private static final max-J1ME1BU(II)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    const/4 v0, 0x0

    .line 35
    .local v0, "$i$f$max-J1ME1BU":I
    invoke-static {p0, p1}, Lkotlin/comparisons/UComparisonsKt;->maxOf-J1ME1BU(II)I

    move-result v1

    return v1
.end method

.method private static final max-eb3DHEI(JJ)J
    .locals 3
    .param p0, "a"    # J
    .param p2, "b"    # J

    const/4 v0, 0x0

    .line 45
    .local v0, "$i$f$max-eb3DHEI":I
    invoke-static {p0, p1, p2, p3}, Lkotlin/comparisons/UComparisonsKt;->maxOf-eb3DHEI(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private static final min-J1ME1BU(II)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    const/4 v0, 0x0

    .line 15
    .local v0, "$i$f$min-J1ME1BU":I
    invoke-static {p0, p1}, Lkotlin/comparisons/UComparisonsKt;->minOf-J1ME1BU(II)I

    move-result v1

    return v1
.end method

.method private static final min-eb3DHEI(JJ)J
    .locals 3
    .param p0, "a"    # J
    .param p2, "b"    # J

    const/4 v0, 0x0

    .line 25
    .local v0, "$i$f$min-eb3DHEI":I
    invoke-static {p0, p1, p2, p3}, Lkotlin/comparisons/UComparisonsKt;->minOf-eb3DHEI(JJ)J

    move-result-wide v1

    return-wide v1
.end method
