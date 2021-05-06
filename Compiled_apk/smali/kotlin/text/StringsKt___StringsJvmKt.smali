.class Lkotlin/text/StringsKt___StringsJvmKt;
.super Lkotlin/text/StringsKt__StringsKt;
.source "_StringsJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000c\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0010\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006*\u00020\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "elementAt",
        "",
        "",
        "index",
        "",
        "toSortedSet",
        "Ljava/util/SortedSet;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xf
    }
    xi = 0x1
    xs = "kotlin/text/StringsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/text/StringsKt__StringsKt;-><init>()V

    return-void
.end method

.method private static final elementAt(Ljava/lang/CharSequence;I)C
    .locals 2
    .param p0, "$this$elementAt"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    const/4 v0, 0x0

    .line 24
    .local v0, "$i$f$elementAt":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    return v1
.end method

.method public static final toSortedSet(Ljava/lang/CharSequence;)Ljava/util/SortedSet;
    .locals 1
    .param p0, "$this$toSortedSet"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$toSortedSet"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toCollection(Ljava/lang/CharSequence;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method
