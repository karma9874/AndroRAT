.class Lkotlin/ranges/RangesKt__RangesJVMKt;
.super Ljava/lang/Object;
.source "RangesJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u001a\u001b\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "rangeTo",
        "Lkotlin/ranges/ClosedFloatingPointRange;",
        "",
        "that",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xf
    }
    xi = 0x1
    xs = "kotlin/ranges/RangesKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 1
    .param p0, "$this$rangeTo"    # F
    .param p1, "that"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Lkotlin/ranges/ClosedFloatRange;

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    check-cast v0, Lkotlin/ranges/ClosedFloatingPointRange;

    return-object v0
.end method
