.class Landroidx/swiperefreshlayout/widget/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;
    }
.end annotation


# static fields
.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x1e000000

.field private static final SHADOW_ELEVATION:I = 0x4

.field private static final SHADOW_RADIUS:F = 3.5f

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.75f


# instance fields
.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field mShadowRadius:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 55
    .local v0, "density":F
    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 56
    .local v1, "shadowYOffset":I
    const/4 v2, 0x0

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 58
    .local v2, "shadowXOffset":I
    const/high16 v3, 0x40600000    # 3.5f

    mul-float v3, v3, v0

    float-to-int v3, v3

    iput v3, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    .line 61
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->elevationSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 63
    .local v3, "circle":Landroid/graphics/drawable/ShapeDrawable;
    const/high16 v4, 0x40800000    # 4.0f

    mul-float v4, v4, v0

    invoke-static {p0, v4}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    .line 65
    .end local v3    # "circle":Landroid/graphics/drawable/ShapeDrawable;
    :cond_0
    new-instance v3, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;

    iget v4, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    invoke-direct {v3, p0, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;-><init>(Landroidx/swiperefreshlayout/widget/CircleImageView;I)V

    .line 66
    .local v3, "oval":Landroid/graphics/drawable/shapes/OvalShape;
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 67
    .local v4, "circle":Landroid/graphics/drawable/ShapeDrawable;
    const/4 v5, 0x1

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 68
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    iget v6, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    int-to-float v6, v6

    int-to-float v7, v2

    int-to-float v8, v1

    const/high16 v9, 0x1e000000

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 70
    iget v5, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    .line 72
    .local v5, "padding":I
    invoke-virtual {p0, v5, v5, v5, v5}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setPadding(IIII)V

    move-object v3, v4

    .line 74
    .end local v4    # "circle":Landroid/graphics/drawable/ShapeDrawable;
    .end local v5    # "padding":I
    .local v3, "circle":Landroid/graphics/drawable/ShapeDrawable;
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void
.end method

.method private elevationSupported()Z
    .locals 2

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 106
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 98
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 101
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 85
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->elevationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setMeasuredDimension(II)V

    .line 89
    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 92
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 93
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 122
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    :cond_0
    return-void
.end method

.method public setBackgroundColorRes(I)V
    .locals 1
    .param p1, "colorRes"    # I

    .line 117
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setBackgroundColor(I)V

    .line 118
    return-void
.end method
