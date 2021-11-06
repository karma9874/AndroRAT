.class public final Lkotlin/ULongKt;
.super Ljava/lang/Object;
.source "ULong.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0004H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0006H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0008H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\nH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u000cH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "toULong",
        "Lkotlin/ULong;",
        "",
        "(B)J",
        "",
        "(D)J",
        "",
        "(F)J",
        "",
        "(I)J",
        "",
        "(J)J",
        "",
        "(S)J",
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
.method private static final toULong(B)J
    .locals 3
    .param p0, "$this$toULong"    # B

    const/4 v0, 0x0

    .line 279
    .local v0, "$i$f$toULong":I
    int-to-long v1, p0

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    return-wide v1
.end method

.method private static final toULong(D)J
    .locals 3
    .param p0, "$this$toULong"    # D

    const/4 v0, 0x0

    .line 335
    .local v0, "$i$f$toULong":I
    invoke-static {p0, p1}, Lkotlin/UnsignedKt;->doubleToULong(D)J

    move-result-wide v1

    return-wide v1
.end method

.method private static final toULong(F)J
    .locals 3
    .param p0, "$this$toULong"    # F

    const/4 v0, 0x0

    .line 325
    .local v0, "$i$f$toULong":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->doubleToULong(D)J

    move-result-wide v1

    return-wide v1
.end method

.method private static final toULong(I)J
    .locals 3
    .param p0, "$this$toULong"    # I

    const/4 v0, 0x0

    .line 303
    .local v0, "$i$f$toULong":I
    int-to-long v1, p0

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    return-wide v1
.end method

.method private static final toULong(J)J
    .locals 3
    .param p0, "$this$toULong"    # J

    const/4 v0, 0x0

    .line 314
    .local v0, "$i$f$toULong":I
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    return-wide v1
.end method

.method private static final toULong(S)J
    .locals 3
    .param p0, "$this$toULong"    # S

    const/4 v0, 0x0

    .line 291
    .local v0, "$i$f$toULong":I
    int-to-long v1, p0

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    return-wide v1
.end method
