.class public final Lkotlin/UShortArrayKt;
.super Ljava/lang/Object;
.source "UShortArray.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUShortArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UShortArray.kt\nkotlin/UShortArrayKt\n*L\n1#1,83:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a-\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u001f\u0010\u0008\u001a\u00020\u00012\n\u0010\t\u001a\u00020\u0001\"\u00020\u0006H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "UShortArray",
        "Lkotlin/UShortArray;",
        "size",
        "",
        "init",
        "Lkotlin/Function1;",
        "Lkotlin/UShort;",
        "(ILkotlin/jvm/functions/Function1;)[S",
        "ushortArrayOf",
        "elements",
        "ushortArrayOf-rL5Bavg",
        "([S)[S",
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
.method private static final UShortArray(ILkotlin/jvm/functions/Function1;)[S
    .locals 6
    .param p0, "size"    # I
    .param p1, "init"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/UShort;",
            ">;)[S"
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    .local v0, "$i$f$UShortArray":I
    new-array v1, p0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    move v3, v2

    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "$i$a$-<init>-UShortArrayKt$UShortArray$1":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/UShort;

    invoke-virtual {v5}, Lkotlin/UShort;->unbox-impl()S

    move-result v5

    .end local v3    # "index":I
    .end local v4    # "$i$a$-<init>-UShortArrayKt$UShortArray$1":I
    aput-short v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/UShortArray;->constructor-impl([S)[S

    move-result-object v1

    return-object v1
.end method

.method private static final varargs ushortArrayOf-rL5Bavg([S)[S
    .locals 1
    .param p0, "elements"    # [S

    const/4 v0, 0x0

    .line 82
    .local v0, "$i$f$ushortArrayOf-rL5Bavg":I
    return-object p0
.end method
