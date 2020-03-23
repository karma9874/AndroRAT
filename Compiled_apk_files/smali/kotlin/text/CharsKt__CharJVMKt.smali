.class Lkotlin/text/CharsKt__CharJVMKt;
.super Ljava/lang/Object;
.source "CharJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u001a\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0001\u001a\u0018\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0000\u001a\r\u0010\u000e\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0010\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0011\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0012\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0013\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0014\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0015\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0016\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0017\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0018\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0019\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u001a\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u001b\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\n\u0010\u001c\u001a\u00020\u000f*\u00020\u0002\u001a\r\u0010\u001d\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u001e\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u001f\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006 "
    }
    d2 = {
        "category",
        "Lkotlin/text/CharCategory;",
        "",
        "getCategory",
        "(C)Lkotlin/text/CharCategory;",
        "directionality",
        "Lkotlin/text/CharDirectionality;",
        "getDirectionality",
        "(C)Lkotlin/text/CharDirectionality;",
        "checkRadix",
        "",
        "radix",
        "digitOf",
        "char",
        "isDefined",
        "",
        "isDigit",
        "isHighSurrogate",
        "isISOControl",
        "isIdentifierIgnorable",
        "isJavaIdentifierPart",
        "isJavaIdentifierStart",
        "isLetter",
        "isLetterOrDigit",
        "isLowSurrogate",
        "isLowerCase",
        "isTitleCase",
        "isUpperCase",
        "isWhitespace",
        "toLowerCase",
        "toTitleCase",
        "toUpperCase",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xf
    }
    xi = 0x1
    xs = "kotlin/text/CharsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkRadix(I)I
    .locals 5
    .param p0, "radix"    # I

    .line 155
    const/4 v0, 0x2

    const/16 v1, 0x24

    if-gt v0, p0, :cond_0

    if-lt v1, p0, :cond_0

    .line 158
    return p0

    .line 156
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " was not in valid range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lkotlin/ranges/IntRange;

    invoke-direct {v4, v0, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public static final digitOf(CI)I
    .locals 1
    .param p0, "char"    # C
    .param p1, "radix"    # I

    .line 148
    invoke-static {p0, p1}, Ljava/lang/Character;->digit(II)I

    move-result v0

    return v0
.end method

.method public static final getCategory(C)Lkotlin/text/CharCategory;
    .locals 2
    .param p0, "$this$category"    # C

    .line 121
    sget-object v0, Lkotlin/text/CharCategory;->Companion:Lkotlin/text/CharCategory$Companion;

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/text/CharCategory$Companion;->valueOf(I)Lkotlin/text/CharCategory;

    move-result-object v0

    return-object v0
.end method

.method public static final getDirectionality(C)Lkotlin/text/CharDirectionality;
    .locals 2
    .param p0, "$this$directionality"    # C

    .line 126
    sget-object v0, Lkotlin/text/CharDirectionality;->Companion:Lkotlin/text/CharDirectionality$Companion;

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/text/CharDirectionality$Companion;->valueOf(I)Lkotlin/text/CharDirectionality;

    move-result-object v0

    return-object v0
.end method

.method private static final isDefined(C)Z
    .locals 2
    .param p0, "$this$isDefined"    # C

    const/4 v0, 0x0

    .line 15
    .local v0, "$i$f$isDefined":I
    invoke-static {p0}, Ljava/lang/Character;->isDefined(C)Z

    move-result v1

    return v1
.end method

.method private static final isDigit(C)Z
    .locals 2
    .param p0, "$this$isDigit"    # C

    const/4 v0, 0x0

    .line 36
    .local v0, "$i$f$isDigit":I
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    return v1
.end method

.method private static final isHighSurrogate(C)Z
    .locals 2
    .param p0, "$this$isHighSurrogate"    # C

    const/4 v0, 0x0

    .line 132
    .local v0, "$i$f$isHighSurrogate":I
    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    return v1
.end method

.method private static final isISOControl(C)Z
    .locals 2
    .param p0, "$this$isISOControl"    # C

    const/4 v0, 0x0

    .line 51
    .local v0, "$i$f$isISOControl":I
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    return v1
.end method

.method private static final isIdentifierIgnorable(C)Z
    .locals 2
    .param p0, "$this$isIdentifierIgnorable"    # C

    const/4 v0, 0x0

    .line 44
    .local v0, "$i$f$isIdentifierIgnorable":I
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v1

    return v1
.end method

.method private static final isJavaIdentifierPart(C)Z
    .locals 2
    .param p0, "$this$isJavaIdentifierPart"    # C

    const/4 v0, 0x0

    .line 58
    .local v0, "$i$f$isJavaIdentifierPart":I
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    return v1
.end method

.method private static final isJavaIdentifierStart(C)Z
    .locals 2
    .param p0, "$this$isJavaIdentifierStart"    # C

    const/4 v0, 0x0

    .line 65
    .local v0, "$i$f$isJavaIdentifierStart":I
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    return v1
.end method

.method private static final isLetter(C)Z
    .locals 2
    .param p0, "$this$isLetter"    # C

    const/4 v0, 0x0

    .line 22
    .local v0, "$i$f$isLetter":I
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    return v1
.end method

.method private static final isLetterOrDigit(C)Z
    .locals 2
    .param p0, "$this$isLetterOrDigit"    # C

    const/4 v0, 0x0

    .line 29
    .local v0, "$i$f$isLetterOrDigit":I
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    return v1
.end method

.method private static final isLowSurrogate(C)Z
    .locals 2
    .param p0, "$this$isLowSurrogate"    # C

    const/4 v0, 0x0

    .line 138
    .local v0, "$i$f$isLowSurrogate":I
    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    return v1
.end method

.method private static final isLowerCase(C)Z
    .locals 2
    .param p0, "$this$isLowerCase"    # C

    const/4 v0, 0x0

    .line 86
    .local v0, "$i$f$isLowerCase":I
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    return v1
.end method

.method private static final isTitleCase(C)Z
    .locals 2
    .param p0, "$this$isTitleCase"    # C

    const/4 v0, 0x0

    .line 107
    .local v0, "$i$f$isTitleCase":I
    invoke-static {p0}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v1

    return v1
.end method

.method private static final isUpperCase(C)Z
    .locals 2
    .param p0, "$this$isUpperCase"    # C

    const/4 v0, 0x0

    .line 79
    .local v0, "$i$f$isUpperCase":I
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    return v1
.end method

.method public static final isWhitespace(C)Z
    .locals 1
    .param p0, "$this$isWhitespace"    # C

    .line 72
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static final toLowerCase(C)C
    .locals 2
    .param p0, "$this$toLowerCase"    # C

    const/4 v0, 0x0

    .line 100
    .local v0, "$i$f$toLowerCase":I
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    return v1
.end method

.method private static final toTitleCase(C)C
    .locals 2
    .param p0, "$this$toTitleCase"    # C

    const/4 v0, 0x0

    .line 116
    .local v0, "$i$f$toTitleCase":I
    invoke-static {p0}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v1

    return v1
.end method

.method private static final toUpperCase(C)C
    .locals 2
    .param p0, "$this$toUpperCase"    # C

    const/4 v0, 0x0

    .line 93
    .local v0, "$i$f$toUpperCase":I
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    return v1
.end method
