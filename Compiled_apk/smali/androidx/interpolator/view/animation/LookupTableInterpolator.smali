.class abstract Landroidx/interpolator/view/animation/LookupTableInterpolator;
.super Ljava/lang/Object;
.source "LookupTableInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mStepSize:F

.field private final mValues:[F


# direct methods
.method protected constructor <init>([F)V
    .locals 2
    .param p1, "values"    # [F

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    .line 32
    iget-object v0, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mStepSize:F

    .line 33
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7
    .param p1, "input"    # F

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    .line 38
    return v0

    .line 40
    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_1

    .line 41
    return v0

    .line 46
    :cond_1
    iget-object v0, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 49
    .local v0, "position":I
    int-to-float v1, v0

    iget v2, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mStepSize:F

    mul-float v1, v1, v2

    .line 50
    .local v1, "quantized":F
    sub-float v3, p1, v1

    .line 51
    .local v3, "diff":F
    div-float v2, v3, v2

    .line 54
    .local v2, "weight":F
    iget-object v4, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    aget v5, v4, v0

    add-int/lit8 v6, v0, 0x1

    aget v6, v4, v6

    aget v4, v4, v0

    sub-float/2addr v6, v4

    mul-float v6, v6, v2

    add-float/2addr v5, v6

    return v5
.end method
