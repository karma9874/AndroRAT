.class public Landroidx/viewpager/widget/PagerTabStrip;
.super Landroidx/viewpager/widget/PagerTitleStrip;
.source "PagerTabStrip.java"


# static fields
.field private static final FULL_UNDERLINE_HEIGHT:I = 0x1

.field private static final INDICATOR_HEIGHT:I = 0x3

.field private static final MIN_PADDING_BOTTOM:I = 0x6

.field private static final MIN_STRIP_HEIGHT:I = 0x20

.field private static final MIN_TEXT_SPACING:I = 0x40

.field private static final TAB_PADDING:I = 0x10

.field private static final TAB_SPACING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PagerTabStrip"


# instance fields
.field private mDrawFullUnderline:Z

.field private mDrawFullUnderlineSet:Z

.field private mFullUnderlineHeight:I

.field private mIgnoreTap:Z

.field private mIndicatorColor:I

.field private mIndicatorHeight:I

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mMinPaddingBottom:I

.field private mMinStripHeight:I

.field private mMinTextSpacing:I

.field private mTabAlpha:I

.field private mTabPadding:I

.field private final mTabPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager/widget/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 87
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    .line 71
    const/16 v0, 0xff

    iput v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 74
    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    .line 89
    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTextColor:I

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    .line 90
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 95
    .local v1, "density":F
    const/high16 v2, 0x40400000    # 3.0f

    mul-float v2, v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    .line 96
    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v2, v2, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinPaddingBottom:I

    .line 97
    const/high16 v2, 0x42800000    # 64.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinTextSpacing:I

    .line 98
    const/high16 v2, 0x41800000    # 16.0f

    mul-float v2, v2, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    .line 99
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v2, v2, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mFullUnderlineHeight:I

    .line 100
    const/high16 v2, 0x42000000    # 32.0f

    mul-float v2, v2, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinStripHeight:I

    .line 101
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    .line 104
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroidx/viewpager/widget/PagerTabStrip;->setPadding(IIII)V

    .line 105
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getTextSpacing()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/PagerTabStrip;->setTextSpacing(I)V

    .line 107
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTabStrip;->setWillNotDraw(Z)V

    .line 109
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 110
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    new-instance v3, Landroidx/viewpager/widget/PagerTabStrip$1;

    invoke-direct {v3, p0}, Landroidx/viewpager/widget/PagerTabStrip$1;-><init>(Landroidx/viewpager/widget/PagerTabStrip;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 118
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    new-instance v3, Landroidx/viewpager/widget/PagerTabStrip$2;

    invoke-direct {v3, p0}, Landroidx/viewpager/widget/PagerTabStrip$2;-><init>(Landroidx/viewpager/widget/PagerTabStrip;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    iput-boolean v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public getDrawFullUnderline()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    return v0
.end method

.method getMinHeight()I
    .locals 2

    .line 223
    invoke-super {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getMinHeight()I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinStripHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getTabIndicatorColor()I
    .locals 1

    .line 155
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 265
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroidx/viewpager/widget/PagerTitleStrip;->onDraw(Landroid/graphics/Canvas;)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/PagerTabStrip;->getHeight()I

    move-result v1

    .line 268
    .local v1, "height":I
    move v2, v1

    .line 269
    .local v2, "bottom":I
    iget-object v3, v0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    iget v4, v0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v3, v4

    .line 270
    .local v3, "left":I
    iget-object v4, v0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getRight()I

    move-result v4

    iget v5, v0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int/2addr v4, v5

    .line 271
    .local v4, "right":I
    iget v5, v0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    sub-int v5, v2, v5

    .line 273
    .local v5, "top":I
    iget-object v6, v0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v7, v0, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    shl-int/lit8 v7, v7, 0x18

    iget v8, v0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    const v9, 0xffffff

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    int-to-float v11, v3

    int-to-float v12, v5

    int-to-float v13, v4

    int-to-float v14, v2

    iget-object v15, v0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 276
    iget-boolean v6, v0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    if-eqz v6, :cond_0

    .line 277
    iget-object v6, v0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    iget v8, v0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingLeft()I

    move-result v6

    int-to-float v8, v6

    iget v6, v0, Landroidx/viewpager/widget/PagerTabStrip;->mFullUnderlineHeight:I

    sub-int v6, v1, v6

    int-to-float v9, v6

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/PagerTabStrip;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v10, v6

    int-to-float v11, v1

    iget-object v12, v0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    .line 278
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 281
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 229
    .local v0, "action":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    if-eqz v2, :cond_0

    .line 230
    return v1

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 236
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 237
    .local v3, "y":F
    const/4 v4, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 245
    :cond_1
    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionX:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_2

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionY:F

    sub-float v1, v3, v1

    .line 246
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_6

    .line 247
    :cond_2
    iput-boolean v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    goto :goto_0

    .line 252
    :cond_3
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_4

    .line 253
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v1, v5}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 254
    :cond_4
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v1

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_6

    .line 255
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 239
    :cond_5
    iput v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionX:F

    .line 240
    iput v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionY:F

    .line 241
    iput-boolean v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    .line 242
    nop

    .line 260
    :cond_6
    :goto_0
    return v4
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 184
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundColor(I)V

    .line 185
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_1

    .line 186
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 188
    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 176
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_1

    .line 178
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 180
    :cond_1
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 192
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundResource(I)V

    .line 193
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_1

    .line 194
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 196
    :cond_1
    return-void
.end method

.method public setDrawFullUnderline(Z)V
    .locals 1
    .param p1, "drawFull"    # Z

    .line 205
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    .line 207
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate()V

    .line 208
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 160
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinPaddingBottom:I

    if-ge p4, v0, :cond_0

    .line 161
    iget p4, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinPaddingBottom:I

    .line 163
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/viewpager/widget/PagerTitleStrip;->setPadding(IIII)V

    .line 164
    return-void
.end method

.method public setTabIndicatorColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 136
    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    .line 137
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate()V

    .line 139
    return-void
.end method

.method public setTabIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 147
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 148
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 1
    .param p1, "textSpacing"    # I

    .line 168
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinTextSpacing:I

    if-ge p1, v0, :cond_0

    .line 169
    iget p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinTextSpacing:I

    .line 171
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextSpacing(I)V

    .line 172
    return-void
.end method

.method updateTextPositions(IFZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "force"    # Z

    .line 285
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    .line 286
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getHeight()I

    move-result v1

    .line 287
    .local v1, "bottom":I
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    iget v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v2, v3

    .line 288
    .local v2, "left":I
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v3

    iget v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int/2addr v3, v4

    .line 289
    .local v3, "right":I
    iget v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    sub-int v4, v1, v4

    .line 291
    .local v4, "top":I
    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 293
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 294
    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    .line 296
    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    iget v6, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v5, v6

    .line 297
    .end local v2    # "left":I
    .local v5, "left":I
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    move-result v2

    iget v6, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int/2addr v2, v6

    .line 298
    .end local v3    # "right":I
    .local v2, "right":I
    invoke-virtual {v0, v5, v4, v2, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 300
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate(Landroid/graphics/Rect;)V

    .line 301
    return-void
.end method
