.class public Landroidx/core/graphics/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/PathParser$PathDataNode;,
        Landroidx/core/graphics/PathParser$ExtractFloatResult;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PathParser"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .locals 1
    .param p1, "cmd"    # C
    .param p2, "val"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/graphics/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .line 189
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/graphics/PathParser$PathDataNode;>;"
    new-instance v0, Landroidx/core/graphics/PathParser$PathDataNode;

    invoke-direct {v0, p1, p2}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method public static canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z
    .locals 4
    .param p0, "nodesFrom"    # [Landroidx/core/graphics/PathParser$PathDataNode;
    .param p1, "nodesTo"    # [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 137
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 141
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    .line 142
    return v0

    .line 145
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 146
    aget-object v2, p0, v1

    iget-char v2, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    aget-object v3, p1, v1

    iget-char v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    if-ne v2, v3, :cond_3

    aget-object v2, p0, v1

    iget-object v2, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v2

    aget-object v3, p1, v1

    iget-object v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v3, v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 145
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_3
    :goto_1
    return v0

    .line 151
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_5
    :goto_2
    return v0
.end method

.method static copyOfRange([FII)[F
    .locals 5
    .param p0, "original"    # [F
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 55
    if-gt p1, p2, :cond_1

    .line 58
    array-length v0, p0

    .line 59
    .local v0, "originalLength":I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 62
    sub-int v1, p2, p1

    .line 63
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 64
    .local v2, "copyLength":I
    new-array v3, v1, [F

    .line 65
    .local v3, "result":[F
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    return-object v3

    .line 60
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[F
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 56
    .end local v0    # "originalLength":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .locals 6
    .param p0, "pathData"    # Ljava/lang/String;

    .line 92
    if-nez p0, :cond_0

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 96
    .local v0, "start":I
    const/4 v1, 0x1

    .line 98
    .local v1, "end":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/graphics/PathParser$PathDataNode;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_2

    .line 100
    invoke-static {p0, v1}, Landroidx/core/graphics/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v1

    .line 101
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 103
    invoke-static {v3}, Landroidx/core/graphics/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v5

    .line 104
    .local v5, "val":[F
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v2, v4, v5}, Landroidx/core/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 107
    .end local v5    # "val":[F
    :cond_1
    move v0, v1

    .line 108
    nop

    .end local v3    # "s":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    sub-int v3, v1, v0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 111
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    new-array v4, v4, [F

    invoke-static {v2, v3, v4}, Landroidx/core/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 113
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroidx/core/graphics/PathParser$PathDataNode;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/core/graphics/PathParser$PathDataNode;

    return-object v3
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 6
    .param p0, "pathData"    # Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 75
    .local v0, "path":Landroid/graphics/Path;
    invoke-static {p0}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v1

    .line 76
    .local v1, "nodes":[Landroidx/core/graphics/PathParser$PathDataNode;
    if-eqz v1, :cond_0

    .line 78
    :try_start_0
    invoke-static {v1, v0}, Landroidx/core/graphics/PathParser$PathDataNode;->nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 82
    return-object v0

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 84
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static deepCopyNodes([Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .locals 4
    .param p0, "source"    # [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 121
    if-nez p0, :cond_0

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 125
    .local v0, "copy":[Landroidx/core/graphics/PathParser$PathDataNode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 126
    new-instance v2, Landroidx/core/graphics/PathParser$PathDataNode;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(Landroidx/core/graphics/PathParser$PathDataNode;)V

    aput-object v2, v0, v1

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static extract(Ljava/lang/String;ILandroidx/core/graphics/PathParser$ExtractFloatResult;)V
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "result"    # Landroidx/core/graphics/PathParser$ExtractFloatResult;

    .line 257
    move v0, p1

    .line 258
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 259
    .local v1, "foundSeparator":Z
    const/4 v2, 0x0

    iput-boolean v2, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, "secondDot":Z
    const/4 v3, 0x0

    .line 262
    .local v3, "isExponential":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 263
    move v4, v3

    .line 264
    .local v4, "isPrevExponential":Z
    const/4 v3, 0x0

    .line 265
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 266
    .local v5, "currentChar":C
    const/16 v6, 0x20

    if-eq v5, v6, :cond_2

    const/16 v6, 0x45

    if-eq v5, v6, :cond_1

    const/16 v6, 0x65

    if-eq v5, v6, :cond_1

    const/4 v6, 0x1

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 279
    :pswitch_0
    if-nez v2, :cond_0

    .line 280
    const/4 v2, 0x1

    goto :goto_1

    .line 283
    :cond_0
    const/4 v1, 0x1

    .line 284
    iput-boolean v6, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    .line 286
    goto :goto_1

    .line 273
    :pswitch_1
    if-eq v0, p1, :cond_3

    if-nez v4, :cond_3

    .line 274
    const/4 v1, 0x1

    .line 275
    iput-boolean v6, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_1

    .line 289
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 269
    :cond_2
    :pswitch_2
    const/4 v1, 0x1

    .line 270
    nop

    .line 292
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 293
    goto :goto_2

    .line 262
    .end local v4    # "isPrevExponential":Z
    .end local v5    # "currentChar":C
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_5
    :goto_2
    iput v0, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 299
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 215
    .local v1, "results":[F
    const/4 v2, 0x0

    .line 216
    .local v2, "count":I
    const/4 v3, 0x1

    .line 217
    .local v3, "startPosition":I
    const/4 v4, 0x0

    .line 219
    .local v4, "endPosition":I
    new-instance v5, Landroidx/core/graphics/PathParser$ExtractFloatResult;

    invoke-direct {v5}, Landroidx/core/graphics/PathParser$ExtractFloatResult;-><init>()V

    .line 220
    .local v5, "result":Landroidx/core/graphics/PathParser$ExtractFloatResult;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 225
    .local v6, "totalLength":I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 226
    invoke-static {p0, v3, v5}, Landroidx/core/graphics/PathParser;->extract(Ljava/lang/String;ILandroidx/core/graphics/PathParser$ExtractFloatResult;)V

    .line 227
    iget v7, v5, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    move v4, v7

    .line 229
    if-ge v3, v4, :cond_1

    .line 230
    add-int/lit8 v7, v2, 0x1

    .line 231
    .end local v2    # "count":I
    .local v7, "count":I
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 230
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v1, v2

    move v2, v7

    .line 234
    .end local v7    # "count":I
    .restart local v2    # "count":I
    :cond_1
    iget-boolean v7, v5, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v7, :cond_2

    .line 236
    move v3, v4

    goto :goto_0

    .line 238
    :cond_2
    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 241
    :cond_3
    invoke-static {v1, v0, v2}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 242
    .end local v1    # "results":[F
    .end local v2    # "count":I
    .end local v3    # "startPosition":I
    .end local v4    # "endPosition":I
    .end local v5    # "result":Landroidx/core/graphics/PathParser$ExtractFloatResult;
    .end local v6    # "totalLength":I
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in parsing \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 211
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_1
    new-array v0, v0, [F

    return-object v0
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "end"    # I

    .line 173
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 174
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 179
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int v1, v1, v2

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int v1, v1, v2

    if-gtz v1, :cond_1

    :cond_0
    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    .line 181
    return p1

    .line 183
    :cond_1
    nop

    .end local v0    # "c":C
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 185
    :cond_2
    return p1
.end method

.method public static updateNodes([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)V
    .locals 4
    .param p0, "target"    # [Landroidx/core/graphics/PathParser$PathDataNode;
    .param p1, "source"    # [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 163
    aget-object v1, p0, v0

    aget-object v2, p1, v0

    iget-char v2, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v2, v1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 164
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    aget-object v2, p1, v0

    iget-object v2, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 165
    aget-object v2, p0, v0

    iget-object v2, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget-object v3, p1, v0

    iget-object v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v1

    aput v3, v2, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 162
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
