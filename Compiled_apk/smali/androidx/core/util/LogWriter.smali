.class public Landroidx/core/util/LogWriter;
.super Ljava/io/Writer;
.source "LogWriter.java"


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroidx/core/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    .line 44
    iput-object p1, p0, Landroidx/core/util/LogWriter;->mTag:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private flushBuilder()V
    .locals 3

    .line 68
    iget-object v0, p0, Landroidx/core/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    iget-object v0, p0, Landroidx/core/util/LogWriter;->mTag:Ljava/lang/String;

    iget-object v1, p0, Landroidx/core/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Landroidx/core/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/core/util/LogWriter;->flushBuilder()V

    .line 49
    return-void
.end method

.method public flush()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroidx/core/util/LogWriter;->flushBuilder()V

    .line 53
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 57
    add-int v1, p2, v0

    aget-char v1, p1, v1

    .line 58
    .local v1, "c":C
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 59
    invoke-direct {p0}, Landroidx/core/util/LogWriter;->flushBuilder()V

    goto :goto_1

    .line 62
    :cond_0
    iget-object v2, p0, Landroidx/core/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .end local v1    # "c":C
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
