.class Lkotlin/text/StringsKt__RegexExtensionsKt;
.super Lkotlin/text/StringsKt__RegexExtensionsJVMKt;
.source "RegexExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0087\u0008\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0087\u0008\u00a8\u0006\u0007"
    }
    d2 = {
        "toRegex",
        "Lkotlin/text/Regex;",
        "",
        "options",
        "",
        "Lkotlin/text/RegexOption;",
        "option",
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

    invoke-direct {p0}, Lkotlin/text/StringsKt__RegexExtensionsJVMKt;-><init>()V

    return-void
.end method

.method private static final toRegex(Ljava/lang/String;)Lkotlin/text/Regex;
    .locals 2
    .param p0, "$this$toRegex"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    .local v0, "$i$f$toRegex":I
    new-instance v1, Lkotlin/text/Regex;

    invoke-direct {v1, p0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toRegex(Ljava/lang/String;Ljava/util/Set;)Lkotlin/text/Regex;
    .locals 2
    .param p0, "$this$toRegex"    # Ljava/lang/String;
    .param p1, "options"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/text/RegexOption;",
            ">;)",
            "Lkotlin/text/Regex;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    .local v0, "$i$f$toRegex":I
    new-instance v1, Lkotlin/text/Regex;

    invoke-direct {v1, p0, p1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-object v1
.end method

.method private static final toRegex(Ljava/lang/String;Lkotlin/text/RegexOption;)Lkotlin/text/Regex;
    .locals 2
    .param p0, "$this$toRegex"    # Ljava/lang/String;
    .param p1, "option"    # Lkotlin/text/RegexOption;

    const/4 v0, 0x0

    .line 21
    .local v0, "$i$f$toRegex":I
    new-instance v1, Lkotlin/text/Regex;

    invoke-direct {v1, p0, p1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    return-object v1
.end method
