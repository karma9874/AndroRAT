.class final Landroidx/core/os/LocaleListHelper;
.super Ljava/lang/Object;
.source "LocaleListHelper.java"


# static fields
.field private static final EN_LATN:Ljava/util/Locale;

.field private static final LOCALE_AR_XB:Ljava/util/Locale;

.field private static final LOCALE_EN_XA:Ljava/util/Locale;

.field private static final NUM_PSEUDO_LOCALES:I = 0x2

.field private static final STRING_AR_XB:Ljava/lang/String; = "ar-XB"

.field private static final STRING_EN_XA:Ljava/lang/String; = "en-XA"

.field private static sDefaultAdjustedLocaleList:Landroidx/core/os/LocaleListHelper;

.field private static sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

.field private static final sEmptyList:[Ljava/util/Locale;

.field private static final sEmptyLocaleList:Landroidx/core/os/LocaleListHelper;

.field private static sLastDefaultLocale:Ljava/util/Locale;

.field private static sLastExplicitlySetLocaleList:Landroidx/core/os/LocaleListHelper;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mList:[Ljava/util/Locale;

.field private final mStringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/Locale;

    sput-object v1, Landroidx/core/os/LocaleListHelper;->sEmptyList:[Ljava/util/Locale;

    .line 51
    new-instance v1, Landroidx/core/os/LocaleListHelper;

    new-array v0, v0, [Ljava/util/Locale;

    invoke-direct {v1, v0}, Landroidx/core/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    sput-object v1, Landroidx/core/os/LocaleListHelper;->sEmptyLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 299
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "XA"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/core/os/LocaleListHelper;->LOCALE_EN_XA:Ljava/util/Locale;

    .line 300
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    const-string v2, "XB"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/core/os/LocaleListHelper;->LOCALE_AR_XB:Ljava/util/Locale;

    .line 350
    const-string v0, "en-Latn"

    invoke-static {v0}, Landroidx/core/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroidx/core/os/LocaleListHelper;->EN_LATN:Ljava/util/Locale;

    .line 475
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    .line 478
    const/4 v0, 0x0

    sput-object v0, Landroidx/core/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 480
    sput-object v0, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 482
    sput-object v0, Landroidx/core/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 484
    sput-object v0, Landroidx/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    return-void
.end method

.method constructor <init>(Ljava/util/Locale;Landroidx/core/os/LocaleListHelper;)V
    .locals 7
    .param p1, "topLocale"    # Ljava/util/Locale;
    .param p2, "otherLocales"    # Landroidx/core/os/LocaleListHelper;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    if-eqz p1, :cond_a

    .line 213
    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v1

    .line 214
    .local v1, "inputLength":I
    :goto_0
    const/4 v2, -0x1

    .line 215
    .local v2, "topLocaleIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 216
    iget-object v4, p2, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    move v2, v3

    .line 218
    goto :goto_2

    .line 215
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 222
    .end local v3    # "i":I
    :cond_2
    :goto_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    add-int/2addr v4, v1

    .line 223
    .local v4, "outputLength":I
    new-array v5, v4, [Ljava/util/Locale;

    .line 224
    .local v5, "localeList":[Ljava/util/Locale;
    invoke-virtual {p1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v0

    .line 225
    if-ne v2, v3, :cond_5

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_4

    .line 228
    add-int/lit8 v3, v0, 0x1

    iget-object v6, p2, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v3

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0    # "i":I
    :cond_4
    goto :goto_7

    .line 231
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    if-ge v0, v2, :cond_6

    .line 232
    add-int/lit8 v3, v0, 0x1

    iget-object v6, p2, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v3

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 234
    .end local v0    # "i":I
    :cond_6
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "i":I
    :goto_6
    if-ge v0, v1, :cond_7

    .line 235
    iget-object v3, p2, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    aput-object v3, v5, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 239
    .end local v0    # "i":I
    :cond_7
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8
    if-ge v3, v4, :cond_9

    .line 241
    aget-object v6, v5, v3

    invoke-static {v6}, Landroidx/core/os/LocaleHelper;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_8

    .line 244
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 248
    .end local v3    # "i":I
    :cond_9
    iput-object v5, p0, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/core/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    .line 250
    return-void

    .line 210
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "inputLength":I
    .end local v2    # "topLocaleIndex":I
    .end local v4    # "outputLength":I
    .end local v5    # "localeList":[Ljava/util/Locale;
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "topLocale is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method varargs constructor <init>([Ljava/util/Locale;)V
    .locals 8
    .param p1, "list"    # [Ljava/util/Locale;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    array-length v0, p1

    if-nez v0, :cond_0

    .line 174
    sget-object v0, Landroidx/core/os/LocaleListHelper;->sEmptyList:[Ljava/util/Locale;

    iput-object v0, p0, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Landroidx/core/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    goto/16 :goto_1

    .line 177
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/util/Locale;

    .line 178
    .local v0, "localeList":[Ljava/util/Locale;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 179
    .local v1, "seenLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 181
    aget-object v4, p1, v3

    .line 182
    .local v4, "l":Ljava/util/Locale;
    const-string v5, "list["

    if-eqz v4, :cond_3

    .line 184
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 187
    invoke-virtual {v4}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    .line 188
    .local v5, "localeClone":Ljava/util/Locale;
    aput-object v5, v0, v3

    .line 189
    invoke-static {v5}, Landroidx/core/os/LocaleHelper;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1

    .line 191
    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v4    # "l":Ljava/util/Locale;
    .end local v5    # "localeClone":Ljava/util/Locale;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .restart local v4    # "l":Ljava/util/Locale;
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] is a repetition"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 183
    :cond_3
    new-instance v6, Ljava/lang/NullPointerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] is null"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 196
    .end local v3    # "i":I
    .end local v4    # "l":Ljava/util/Locale;
    :cond_4
    iput-object v0, p0, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/core/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    .line 199
    .end local v0    # "localeList":[Ljava/util/Locale;
    .end local v1    # "seenLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-void
.end method

.method private computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;
    .locals 2
    .param p2, "assumeEnglishIsSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 392
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroidx/core/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    .line 393
    .local v0, "bestIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    :goto_0
    return-object v1
.end method

.method private computeFirstMatchIndex(Ljava/util/Collection;Z)I
    .locals 6
    .param p2, "assumeEnglishIsSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .line 354
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 355
    return v2

    .line 357
    :cond_0
    array-length v0, v0

    if-nez v0, :cond_1

    .line 358
    const/4 v0, -0x1

    return v0

    .line 361
    :cond_1
    const v0, 0x7fffffff

    .line 363
    .local v0, "bestIndex":I
    if-eqz p2, :cond_3

    .line 364
    sget-object v1, Landroidx/core/os/LocaleListHelper;->EN_LATN:Ljava/util/Locale;

    invoke-direct {p0, v1}, Landroidx/core/os/LocaleListHelper;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v1

    .line 365
    .local v1, "idx":I
    if-nez v1, :cond_2

    .line 366
    return v2

    .line 367
    :cond_2
    if-ge v1, v0, :cond_3

    .line 368
    move v0, v1

    .line 371
    .end local v1    # "idx":I
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 372
    .local v3, "languageTag":Ljava/lang/String;
    invoke-static {v3}, Landroidx/core/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    .line 375
    .local v4, "supportedLocale":Ljava/util/Locale;
    invoke-direct {p0, v4}, Landroidx/core/os/LocaleListHelper;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v5

    .line 376
    .local v5, "idx":I
    if-nez v5, :cond_4

    .line 377
    return v2

    .line 378
    :cond_4
    if-ge v5, v0, :cond_5

    .line 379
    move v0, v5

    .line 381
    .end local v3    # "languageTag":Ljava/lang/String;
    .end local v4    # "supportedLocale":Ljava/util/Locale;
    .end local v5    # "idx":I
    :cond_5
    goto :goto_0

    .line 382
    :cond_6
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_7

    .line 384
    return v2

    .line 386
    :cond_7
    return v0
.end method

.method private findFirstMatchIndex(Ljava/util/Locale;)I
    .locals 3
    .param p1, "supportedLocale"    # Ljava/util/Locale;

    .line 341
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget-object v1, p0, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 342
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroidx/core/os/LocaleListHelper;->matchScore(Ljava/util/Locale;Ljava/util/Locale;)I

    move-result v1

    .line 343
    .local v1, "score":I
    if-lez v1, :cond_0

    .line 344
    return v0

    .line 341
    .end local v1    # "score":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    .end local v0    # "idx":I
    :cond_1
    const v0, 0x7fffffff

    return v0
.end method

.method static forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListHelper;
    .locals 4
    .param p0, "list"    # Ljava/lang/String;

    .line 273
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 276
    :cond_0
    const/4 v0, -0x1

    const-string v1, ","

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "tags":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Ljava/util/Locale;

    .line 278
    .local v1, "localeArray":[Ljava/util/Locale;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 279
    aget-object v3, v0, v2

    invoke-static {v3}, Landroidx/core/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Landroidx/core/os/LocaleListHelper;

    invoke-direct {v2, v1}, Landroidx/core/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    return-object v2

    .line 274
    .end local v0    # "tags":[Ljava/lang/String;
    .end local v1    # "localeArray":[Ljava/util/Locale;
    :cond_2
    :goto_1
    invoke-static {}, Landroidx/core/os/LocaleListHelper;->getEmptyLocaleList()Landroidx/core/os/LocaleListHelper;

    move-result-object v0

    return-object v0
.end method

.method static getAdjustedDefault()Landroidx/core/os/LocaleListHelper;
    .locals 2

    .line 533
    invoke-static {}, Landroidx/core/os/LocaleListHelper;->getDefault()Landroidx/core/os/LocaleListHelper;

    .line 534
    sget-object v0, Landroidx/core/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_0
    sget-object v1, Landroidx/core/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroidx/core/os/LocaleListHelper;

    monitor-exit v0

    return-object v1

    .line 536
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getDefault()Landroidx/core/os/LocaleListHelper;
    .locals 4

    .line 502
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 503
    .local v0, "defaultLocale":Ljava/util/Locale;
    sget-object v1, Landroidx/core/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_0
    sget-object v2, Landroidx/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 505
    sput-object v0, Landroidx/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    .line 509
    sget-object v2, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    const/4 v3, 0x0

    .line 510
    invoke-virtual {v2, v3}, Landroidx/core/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    sget-object v2, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    monitor-exit v1

    return-object v2

    .line 515
    :cond_0
    new-instance v2, Landroidx/core/os/LocaleListHelper;

    sget-object v3, Landroidx/core/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-direct {v2, v0, v3}, Landroidx/core/os/LocaleListHelper;-><init>(Ljava/util/Locale;Landroidx/core/os/LocaleListHelper;)V

    sput-object v2, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 517
    sget-object v2, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    sput-object v2, Landroidx/core/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 523
    :cond_1
    sget-object v2, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    monitor-exit v1

    return-object v2

    .line 524
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getEmptyLocaleList()Landroidx/core/os/LocaleListHelper;
    .locals 1

    .line 259
    sget-object v0, Landroidx/core/os/LocaleListHelper;->sEmptyLocaleList:Landroidx/core/os/LocaleListHelper;

    return-object v0
.end method

.method private static getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 287
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "script":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    return-object v0

    .line 291
    :cond_0
    return-object v1

    .line 294
    .end local v0    # "script":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static isPseudoLocale(Ljava/lang/String;)Z
    .locals 1
    .param p0, "locale"    # Ljava/lang/String;

    .line 304
    const-string v0, "en-XA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ar-XB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static isPseudoLocale(Ljava/util/Locale;)Z
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 308
    sget-object v0, Landroidx/core/os/LocaleListHelper;->LOCALE_EN_XA:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/core/os/LocaleListHelper;->LOCALE_AR_XB:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

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

.method static isPseudoLocalesOnly([Ljava/lang/String;)Z
    .locals 6
    .param p0, "supportedLocales"    # [Ljava/lang/String;

    .line 455
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 456
    return v0

    .line 459
    :cond_0
    array-length v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    .line 464
    return v3

    .line 466
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, p0, v2

    .line 467
    .local v4, "locale":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroidx/core/os/LocaleListHelper;->isPseudoLocale(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 468
    return v3

    .line 466
    .end local v4    # "locale":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    :cond_3
    return v0
.end method

.method private static matchScore(Ljava/util/Locale;Ljava/util/Locale;)I
    .locals 5
    .param p0, "supported"    # Ljava/util/Locale;
    .param p1, "desired"    # Ljava/util/Locale;

    .line 313
    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 314
    return v1

    .line 316
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 317
    return v2

    .line 319
    :cond_1
    invoke-static {p0}, Landroidx/core/os/LocaleListHelper;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Landroidx/core/os/LocaleListHelper;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 324
    :cond_2
    invoke-static {p0}, Landroidx/core/os/LocaleListHelper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "supportedScr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 329
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, "supportedRegion":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1

    .line 334
    .end local v3    # "supportedRegion":Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Landroidx/core/os/LocaleListHelper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "desiredScr":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 322
    .end local v0    # "supportedScr":Ljava/lang/String;
    .end local v1    # "desiredScr":Ljava/lang/String;
    :cond_6
    :goto_1
    return v2
.end method

.method static setDefault(Landroidx/core/os/LocaleListHelper;)V
    .locals 1
    .param p0, "locales"    # Landroidx/core/os/LocaleListHelper;

    .line 550
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/os/LocaleListHelper;->setDefault(Landroidx/core/os/LocaleListHelper;I)V

    .line 551
    return-void
.end method

.method static setDefault(Landroidx/core/os/LocaleListHelper;I)V
    .locals 4
    .param p0, "locales"    # Landroidx/core/os/LocaleListHelper;
    .param p1, "localeIndex"    # I

    .line 564
    if-eqz p0, :cond_2

    .line 567
    invoke-virtual {p0}, Landroidx/core/os/LocaleListHelper;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 570
    sget-object v0, Landroidx/core/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/core/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Landroidx/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    .line 572
    sget-object v1, Landroidx/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 573
    sput-object p0, Landroidx/core/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 574
    sput-object p0, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 575
    if-nez p1, :cond_0

    .line 576
    sget-object v1, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    sput-object v1, Landroidx/core/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroidx/core/os/LocaleListHelper;

    goto :goto_0

    .line 578
    :cond_0
    new-instance v1, Landroidx/core/os/LocaleListHelper;

    sget-object v2, Landroidx/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    sget-object v3, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-direct {v1, v2, v3}, Landroidx/core/os/LocaleListHelper;-><init>(Ljava/util/Locale;Landroidx/core/os/LocaleListHelper;)V

    sput-object v1, Landroidx/core/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 581
    :goto_0
    monitor-exit v0

    .line 582
    return-void

    .line 581
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 568
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "locales is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locales is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 109
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 110
    return v0

    .line 112
    :cond_0
    instance-of v1, p1, Landroidx/core/os/LocaleListHelper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 113
    return v2

    .line 115
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/core/os/LocaleListHelper;

    iget-object v1, v1, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    .line 116
    .local v1, "otherList":[Ljava/util/Locale;
    iget-object v3, p0, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v3, v3

    array-length v4, v1

    if-eq v3, v4, :cond_2

    .line 117
    return v2

    .line 119
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 120
    aget-object v4, v4, v3

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 121
    return v2

    .line 119
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method get(I)Ljava/util/Locale;
    .locals 2
    .param p1, "index"    # I

    .line 62
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    .line 408
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/core/os/LocaleListHelper;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getFirstMatchIndex([Ljava/lang/String;)I
    .locals 2
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    .line 417
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/core/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    return v0
.end method

.method getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 437
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/core/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    return v0
.end method

.method getFirstMatchIndexWithEnglishSupported([Ljava/lang/String;)I
    .locals 1
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    .line 445
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/os/LocaleListHelper;->getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    .line 428
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/core/os/LocaleListHelper;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 129
    const/4 v0, 0x1

    .line 130
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 131
    mul-int/lit8 v3, v0, 0x1f

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    add-int v0, v3, v2

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method indexOf(Ljava/util/Locale;)I
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 100
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    return v0

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method size()I
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v0, v0

    return v0
.end method

.method toLanguageTags()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Landroidx/core/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 141
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v2, p0, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 143
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
