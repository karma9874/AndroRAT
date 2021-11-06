.class public final Lkotlin/UByteKt;
.super Ljava/lang/Object;
.source "UByte.kt"


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
        "toUByte",
        "Lkotlin/UByte;",
        "",
        "(B)B",
        "",
        "(I)B",
        "",
        "(J)B",
        "",
        "(S)B",
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
.method private static final toUByte(B)B
    .locals 2
    .param p0, "$this$toUByte"    # B

    const/4 v0, 0x0

    .line 265
    .local v0, "$i$f$toUByte":I
    invoke-static {p0}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v1

    return v1
.end method

.method private static final toUByte(I)B
    .locals 2
    .param p0, "$this$toUByte"    # I

    const/4 v0, 0x0

    .line 289
    .local v0, "$i$f$toUByte":I
    int-to-byte v1, p0

    invoke-static {v1}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v1

    return v1
.end method

.method private static final toUByte(J)B
    .locals 2
    .param p0, "$this$toUByte"    # J

    const/4 v0, 0x0

    .line 301
    .local v0, "$i$f$toUByte":I
    long-to-int v1, p0

    int-to-byte v1, v1

    invoke-static {v1}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v1

    return v1
.end method

.method private static final toUByte(S)B
    .locals 2
    .param p0, "$this$toUByte"    # S

    const/4 v0, 0x0

    .line 277
    .local v0, "$i$f$toUByte":I
    int-to-byte v1, p0

    invoke-static {v1}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v1

    return v1
.end method
