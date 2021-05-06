.class public Lorg/apache/commons/io/monitor/FileEntry;
.super Ljava/lang/Object;
.source "FileEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;


# instance fields
.field private children:[Lorg/apache/commons/io/monitor/FileEntry;

.field private directory:Z

.field private exists:Z

.field private final file:Ljava/io/File;

.field private lastModified:J

.field private length:J

.field private name:Ljava/lang/String;

.field private final parent:Lorg/apache/commons/io/monitor/FileEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/io/monitor/FileEntry;

    sput-object v0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 61
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/io/monitor/FileEntry;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/commons/io/monitor/FileEntry;
    .param p2, "file"    # Ljava/io/File;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-eqz p2, :cond_0

    .line 74
    iput-object p2, p0, Lorg/apache/commons/io/monitor/FileEntry;->file:Ljava/io/File;

    .line 75
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    .line 76
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    .line 77
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getChildren()[Lorg/apache/commons/io/monitor/FileEntry;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;

    :goto_0
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 200
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    return-wide v0
.end method

.method public getLength()J
    .locals 2

    .line 219
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/FileEntry;->getLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lorg/apache/commons/io/monitor/FileEntry;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    return v0
.end method

.method public isExists()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    return v0
.end method

.method public newChildInstance(Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 125
    new-instance v0, Lorg/apache/commons/io/monitor/FileEntry;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    return-object v0
.end method

.method public refresh(Ljava/io/File;)Z
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .line 96
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 97
    .local v0, "origExists":Z
    iget-wide v1, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    .line 98
    .local v1, "origLastModified":J
    iget-boolean v3, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 99
    .local v3, "origDirectory":Z
    iget-wide v4, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 102
    .local v4, "origLength":J
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    iput-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 104
    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iput-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 105
    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    const-wide/16 v8, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    goto :goto_1

    :cond_1
    move-wide v10, v8

    :goto_1
    iput-wide v10, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    .line 106
    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    if-nez v6, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    :cond_2
    iput-wide v8, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 109
    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-ne v6, v0, :cond_3

    iget-wide v8, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    cmp-long v6, v8, v1

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    if-ne v6, v3, :cond_3

    iget-wide v8, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    cmp-long v6, v8, v4

    if-eqz v6, :cond_4

    :cond_3
    const/4 v7, 0x1

    :cond_4
    return v7
.end method

.method public setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V
    .locals 0
    .param p1, "children"    # [Lorg/apache/commons/io/monitor/FileEntry;

    .line 163
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    .line 164
    return-void
.end method

.method public setDirectory(Z)V
    .locals 0
    .param p1, "directory"    # Z

    .line 266
    iput-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 267
    return-void
.end method

.method public setExists(Z)V
    .locals 0
    .param p1, "exists"    # Z

    .line 248
    iput-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 249
    return-void
.end method

.method public setLastModified(J)V
    .locals 0
    .param p1, "lastModified"    # J

    .line 210
    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    .line 211
    return-void
.end method

.method public setLength(J)V
    .locals 0
    .param p1, "length"    # J

    .line 228
    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 229
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    .line 191
    return-void
.end method
