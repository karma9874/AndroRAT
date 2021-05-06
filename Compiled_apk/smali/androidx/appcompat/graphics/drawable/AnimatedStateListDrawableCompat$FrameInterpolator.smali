.class Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;
.super Ljava/lang/Object;
.source "AnimatedStateListDrawableCompat.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameInterpolator"
.end annotation


# instance fields
.field private mFrameTimes:[I

.field private mFrames:I

.field private mTotalDuration:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I

    .line 733
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .param p1, "input"    # F

    .line 758
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mTotalDuration:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 759
    .local v0, "elapsed":I
    iget v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrames:I

    .line 760
    .local v1, "frameCount":I
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    .line 762
    .local v2, "frameTimes":[I
    move v3, v0

    .line 763
    .local v3, "remaining":I
    const/4 v4, 0x0

    .line 764
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    aget v5, v2, v4

    if-lt v3, v5, :cond_0

    .line 765
    aget v5, v2, v4

    sub-int/2addr v3, v5

    .line 766
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 770
    :cond_0
    if-ge v4, v1, :cond_1

    .line 771
    int-to-float v5, v3

    iget v6, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mTotalDuration:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .local v5, "frameElapsed":F
    goto :goto_1

    .line 773
    .end local v5    # "frameElapsed":F
    :cond_1
    const/4 v5, 0x0

    .line 775
    .restart local v5    # "frameElapsed":F
    :goto_1
    int-to-float v6, v4

    int-to-float v7, v1

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    return v6
.end method

.method getTotalDuration()I
    .locals 1

    .line 753
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mTotalDuration:I

    return v0
.end method

.method updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z

    .line 736
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 737
    .local v0, "frameCount":I
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrames:I

    .line 738
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 739
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    .line 741
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    .line 742
    .local v1, "frameTimes":[I
    const/4 v2, 0x0

    .line 743
    .local v2, "totalDuration":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 744
    if-eqz p2, :cond_2

    sub-int v4, v0, v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    .line 745
    .local v4, "duration":I
    aput v4, v1, v3

    .line 746
    add-int/2addr v2, v4

    .line 743
    .end local v4    # "duration":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 748
    .end local v3    # "i":I
    :cond_3
    iput v2, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mTotalDuration:I

    .line 749
    return v2
.end method
