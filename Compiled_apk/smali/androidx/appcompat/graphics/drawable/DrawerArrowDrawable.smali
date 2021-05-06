.class public Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$ArrowDirection;
    }
.end annotation


# static fields
.field public static final ARROW_DIRECTION_END:I = 0x3

.field public static final ARROW_DIRECTION_LEFT:I = 0x0

.field public static final ARROW_DIRECTION_RIGHT:I = 0x1

.field public static final ARROW_DIRECTION_START:I = 0x2

.field private static final ARROW_HEAD_ANGLE:F


# instance fields
.field private mArrowHeadLength:F

.field private mArrowShaftLength:F

.field private mBarGap:F

.field private mBarLength:F

.field private mDirection:I

.field private mMaxCutForBarSize:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mProgress:F

.field private final mSize:I

.field private mSpin:Z

.field private mVerticalMirror:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 100
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 113
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 123
    const/4 v1, 0x2

    iput v1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    .line 129
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 131
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 132
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v3, Landroidx/appcompat/R$styleable;->DrawerArrowToggle:[I

    sget v4, Landroidx/appcompat/R$attr;->drawerArrowStyle:I

    sget v5, Landroidx/appcompat/R$style;->Base_Widget_AppCompat_DrawerArrowToggle:I

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 138
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v3, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_color:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 139
    sget v3, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_thickness:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setBarThickness(F)V

    .line 140
    sget v3, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_spinBars:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setSpinEnabled(Z)V

    .line 142
    sget v2, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_gapBetweenBars:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setGapSize(F)V

    .line 144
    sget v2, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_drawableSize:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSize:I

    .line 146
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_barLength:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    .line 148
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_arrowHeadLength:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    .line 150
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_arrowShaftLength:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    .line 151
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    return-void
.end method

.method private static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "t"    # F

    .line 465
    sub-float v0, p1, p0

    mul-float v0, v0, p2

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 326
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 329
    .local v2, "bounds":Landroid/graphics/Rect;
    iget v3, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v4, :cond_3

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v3, v5, :cond_1

    .line 342
    invoke-static/range {p0 .. p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v6, 0x1

    :cond_0
    move v3, v6

    .local v3, "flipToPointRight":Z
    goto :goto_0

    .line 337
    .end local v3    # "flipToPointRight":Z
    :cond_1
    invoke-static/range {p0 .. p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v6, 0x1

    :cond_2
    move v3, v6

    .line 339
    .restart local v3    # "flipToPointRight":Z
    goto :goto_0

    .line 334
    .end local v3    # "flipToPointRight":Z
    :cond_3
    const/4 v3, 0x1

    .line 335
    .restart local v3    # "flipToPointRight":Z
    goto :goto_0

    .line 331
    .end local v3    # "flipToPointRight":Z
    :cond_4
    const/4 v3, 0x0

    .line 332
    .restart local v3    # "flipToPointRight":Z
    nop

    .line 349
    :goto_0
    iget v5, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    mul-float v5, v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v5, v7

    .line 350
    .local v5, "arrowHeadBarLength":F
    iget v7, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    iget v8, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v7, v5, v8}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v5

    .line 351
    iget v7, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    iget v8, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    iget v9, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v7, v8, v9}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v7

    .line 353
    .local v7, "arrowShaftLength":F
    iget v8, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    iget v9, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    const/4 v10, 0x0

    invoke-static {v10, v8, v9}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    .line 355
    .local v8, "arrowShaftCut":F
    sget v9, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    iget v11, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v10, v9, v11}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v9

    .line 358
    .local v9, "rotation":F
    if-eqz v3, :cond_5

    const/4 v11, 0x0

    goto :goto_1

    :cond_5
    const/high16 v11, -0x3ccc0000    # -180.0f

    :goto_1
    const/high16 v12, 0x43340000    # 180.0f

    if-eqz v3, :cond_6

    const/high16 v13, 0x43340000    # 180.0f

    goto :goto_2

    :cond_6
    const/4 v13, 0x0

    :goto_2
    iget v14, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v11, v13, v14}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v11

    .line 361
    .local v11, "canvasRotate":F
    float-to-double v13, v5

    move/from16 v16, v11

    .end local v11    # "canvasRotate":F
    .local v16, "canvasRotate":F
    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-float v10, v10

    .line 362
    .local v10, "arrowWidth":F
    float-to-double v13, v5

    move/from16 v17, v5

    .end local v5    # "arrowHeadBarLength":F
    .local v17, "arrowHeadBarLength":F
    float-to-double v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-float v4, v4

    .line 364
    .local v4, "arrowHeight":F
    iget-object v5, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 365
    iget v5, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    iget-object v13, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v13

    add-float/2addr v5, v13

    iget v13, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    neg-float v13, v13

    iget v14, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v5, v13, v14}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v5

    .line 368
    .local v5, "topBottomBarOffset":F
    neg-float v13, v7

    div-float/2addr v13, v6

    .line 370
    .local v13, "arrowEdge":F
    iget-object v14, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    add-float v11, v13, v8

    const/4 v15, 0x0

    invoke-virtual {v14, v11, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 371
    iget-object v11, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    mul-float v14, v8, v6

    sub-float v14, v7, v14

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 374
    iget-object v11, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v11, v13, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 375
    iget-object v11, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v11, v10, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 378
    iget-object v11, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    neg-float v14, v5

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 379
    iget-object v11, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    neg-float v14, v4

    invoke-virtual {v11, v10, v14}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 381
    iget-object v11, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 387
    iget-object v11, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v11

    .line 388
    .local v11, "barThickness":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x40400000    # 3.0f

    mul-float v15, v15, v11

    sub-float/2addr v14, v15

    iget v15, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    mul-float v6, v6, v15

    sub-float/2addr v14, v6

    float-to-int v6, v14

    .line 389
    .local v6, "remainingSpace":I
    div-int/lit8 v14, v6, 0x4

    mul-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    .line 390
    .local v14, "yOffset":F
    const/high16 v18, 0x3fc00000    # 1.5f

    mul-float v18, v18, v11

    add-float v18, v18, v15

    add-float v14, v14, v18

    .line 392
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v1, v15, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 393
    iget-boolean v15, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    if-eqz v15, :cond_8

    .line 394
    iget-boolean v12, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    xor-int/2addr v12, v3

    if-eqz v12, :cond_7

    const/4 v12, -0x1

    goto :goto_3

    :cond_7
    const/4 v12, 0x1

    :goto_3
    int-to-float v12, v12

    mul-float v12, v12, v16

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_4

    .line 395
    :cond_8
    if-eqz v3, :cond_9

    .line 396
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 398
    :cond_9
    :goto_4
    iget-object v12, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    iget-object v15, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 401
    return-void
.end method

.method public getArrowHeadLength()F
    .locals 1

    .line 171
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    return v0
.end method

.method public getArrowShaftLength()F
    .locals 1

    .line 190
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    return v0
.end method

.method public getBarLength()F
    .locals 1

    .line 197
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    return v0
.end method

.method public getBarThickness()F
    .locals 1

    .line 247
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 227
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDirection()I
    .locals 1

    .line 311
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    return v0
.end method

.method public getGapSize()F
    .locals 1

    .line 256
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 419
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 424
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 429
    const/4 v0, -0x3

    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 458
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 437
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    return v0
.end method

.method public isSpinEnabled()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 405
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 406
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 407
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 409
    :cond_0
    return-void
.end method

.method public setArrowHeadLength(F)V
    .locals 1
    .param p1, "length"    # F

    .line 160
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 161
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    .line 162
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 164
    :cond_0
    return-void
.end method

.method public setArrowShaftLength(F)V
    .locals 1
    .param p1, "length"    # F

    .line 180
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 181
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    .line 182
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 184
    :cond_0
    return-void
.end method

.method public setBarLength(F)V
    .locals 1
    .param p1, "length"    # F

    .line 206
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 207
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    .line 208
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 210
    :cond_0
    return-void
.end method

.method public setBarThickness(F)V
    .locals 4
    .param p1, "width"    # F

    .line 236
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 238
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    float-to-double v0, v0

    sget v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    .line 239
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 241
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 216
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 217
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 220
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 413
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 414
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 415
    return-void
.end method

.method public setDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 277
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    if-eq p1, v0, :cond_0

    .line 278
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    .line 279
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 281
    :cond_0
    return-void
.end method

.method public setGapSize(F)V
    .locals 1
    .param p1, "gap"    # F

    .line 267
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 268
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    .line 269
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 271
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 448
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 449
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    .line 450
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 452
    :cond_0
    return-void
.end method

.method public setSpinEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 300
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    if-eq v0, p1, :cond_0

    .line 301
    iput-boolean p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    .line 302
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 304
    :cond_0
    return-void
.end method

.method public setVerticalMirror(Z)V
    .locals 1
    .param p1, "verticalMirror"    # Z

    .line 318
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    if-eq v0, p1, :cond_0

    .line 319
    iput-boolean p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 320
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 322
    :cond_0
    return-void
.end method
