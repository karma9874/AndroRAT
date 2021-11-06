.class public final Lkotlin/HashCodeKt;
.super Ljava/lang/Object;
.source "HashCode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\u0000\n\u0000\u001a\u000f\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002H\u0087\u0008\u00a8\u0006\u0003"
    }
    d2 = {
        "hashCode",
        "",
        "",
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
.method private static final hashCode(Ljava/lang/Object;)I
    .locals 2
    .param p0, "$this$hashCode"    # Ljava/lang/Object;

    const/4 v0, 0x0

    .line 18
    .local v0, "$i$f$hashCode":I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
