.class public final Landroidx/core/graphics/PathUtils;
.super Ljava/lang/Object;
.source "PathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static flatten(Landroid/graphics/Path;)Ljava/util/Collection;
    .locals 1
    .param p0, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            ")",
            "Ljava/util/Collection<",
            "Landroidx/core/graphics/PathSegment;",
            ">;"
        }
    .end annotation

    .line 43
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p0, v0}, Landroidx/core/graphics/PathUtils;->flatten(Landroid/graphics/Path;F)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static flatten(Landroid/graphics/Path;F)Ljava/util/Collection;
    .locals 15
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "error"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "F)",
            "Ljava/util/Collection<",
            "Landroidx/core/graphics/PathSegment;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v0

    .line 61
    .local v0, "pathData":[F
    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    .line 62
    .local v1, "pointCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v2, "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/core/graphics/PathSegment;>;"
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 64
    mul-int/lit8 v4, v3, 0x3

    .line 65
    .local v4, "index":I
    add-int/lit8 v5, v3, -0x1

    mul-int/lit8 v5, v5, 0x3

    .line 67
    .local v5, "prevIndex":I
    aget v6, v0, v4

    .line 68
    .local v6, "d":F
    add-int/lit8 v7, v4, 0x1

    aget v7, v0, v7

    .line 69
    .local v7, "x":F
    add-int/lit8 v8, v4, 0x2

    aget v8, v0, v8

    .line 71
    .local v8, "y":F
    aget v9, v0, v5

    .line 72
    .local v9, "pd":F
    add-int/lit8 v10, v5, 0x1

    aget v10, v0, v10

    .line 73
    .local v10, "px":F
    add-int/lit8 v11, v5, 0x2

    aget v11, v0, v11

    .line 75
    .local v11, "py":F
    cmpl-float v12, v6, v9

    if-eqz v12, :cond_1

    cmpl-float v12, v7, v10

    if-nez v12, :cond_0

    cmpl-float v12, v8, v11

    if-eqz v12, :cond_1

    .line 76
    :cond_0
    new-instance v12, Landroidx/core/graphics/PathSegment;

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v12, v13, v9, v14, v6}, Landroidx/core/graphics/PathSegment;-><init>(Landroid/graphics/PointF;FLandroid/graphics/PointF;F)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v4    # "index":I
    .end local v5    # "prevIndex":I
    .end local v6    # "d":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "pd":F
    .end local v10    # "px":F
    .end local v11    # "py":F
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method
