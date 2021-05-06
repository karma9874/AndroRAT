.class public Lorg/apache/commons/io/filefilter/RegexFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "RegexFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 58
    if-eqz p1, :cond_0

    .line 62
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    .line 63
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 90
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 91
    if-eqz p1, :cond_0

    .line 94
    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    .line 95
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .line 72
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 73
    if-eqz p1, :cond_1

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "flags":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/commons/io/IOCase;->isCaseSensitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    const/4 v0, 0x2

    .line 80
    :cond_0
    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    .line 81
    return-void

    .line 74
    .end local v0    # "flags":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 2
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 103
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 104
    if-eqz p1, :cond_0

    .line 108
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    .line 109
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
