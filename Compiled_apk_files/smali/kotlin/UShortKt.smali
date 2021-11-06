.class public final Lkotlin/UShortKt;
.super Ljava/lang/Object;
.source "UShort.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0004H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0006H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0008H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\n"
    }
    d2 = {
        "toUShort",
        "Lkotlin/UShort;",
        "",
        "(B)S",
        "",
        "(I)S",
        "",
        "(J)S",
        "",
        "(S)S",
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
.method private static final toUShort(B)S
    .locals 2
    .param p0, "$this$toUShort"    # B

    const/4 v0, 0x0

    .line 267
    .local v0, "$i$f$toUShort":I
    int-to-short v1, p0

    invoke-static {v1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v1

    return v1
.end method

.method private static final toUShort(I)S
    .locals 2
    .param p0, "$this$toUShort"    # I

    const/4 v0, 0x0

    .line 290
    .local v0, "$i$f$toUShort":I
    int-to-short v1, p0

    invoke-static {v1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v1

    return v1
.end method

.method private static final toUShort(J)S
    .locals 2
    .param p0, "$this$toUShort"    # J

    const/4 v0, 0x0

    .line 302
    .local v0, "$i$f$toUShort":I
    long-to-int v1, p0

    int-to-short v1, v1

    invoke-static {v1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v1

    return v1
.end method

.method private static final toUShort(S)S
    .locals 2
    .param p0, "$this$toUShort"    # S

    const/4 v0, 0x0

    .line 278
    .local v0, "$i$f$toUShort":I
    invoke-static {p0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v1

    return v1
.end method
