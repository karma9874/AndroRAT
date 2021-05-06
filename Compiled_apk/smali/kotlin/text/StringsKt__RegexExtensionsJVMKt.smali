.class Lkotlin/text/StringsKt__RegexExtensionsJVMKt;
.super Lkotlin/text/StringsKt__IndentKt;
.source "RegexExtensionsJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u00a8\u0006\u0003"
    }
    d2 = {
        "toRegex",
        "Lkotlin/text/Regex;",
        "Ljava/util/regex/Pattern;",
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

    invoke-direct {p0}, Lkotlin/text/StringsKt__IndentKt;-><init>()V

    return-void
.end method

.method private static final toRegex(Ljava/util/regex/Pattern;)Lkotlin/text/Regex;
    .locals 2
    .param p0, "$this$toRegex"    # Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 18
    .local v0, "$i$f$toRegex":I
    new-instance v1, Lkotlin/text/Regex;

    invoke-direct {v1, p0}, Lkotlin/text/Regex;-><init>(Ljava/util/regex/Pattern;)V

    return-object v1
.end method
