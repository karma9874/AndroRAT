.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;,
        Landroidx/appcompat/widget/LinearLayoutCompat$DividerMode;,
        Landroidx/appcompat/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 109
    const/4 v1, -0x1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 116
    const/4 v2, 0x0

    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 120
    const v3, 0x800033

    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 155
    sget-object v3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v3

    .line 158
    .local v3, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v4, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v3, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 159
    .local v4, "index":I
    if-ltz v4, :cond_0

    .line 160
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 163
    :cond_0
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v3, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 164
    if-ltz v4, :cond_1

    .line 165
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 168
    :cond_1
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v3, v5, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 169
    .local v0, "baselineAligned":Z
    if-nez v0, :cond_2

    .line 170
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 173
    :cond_2
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v3, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 175
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 176
    invoke-virtual {v3, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 178
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 180
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 182
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 184
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 185
    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 11
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .line 1317
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1319
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1320
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1321
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 1322
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1324
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1327
    iget v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1328
    .local v10, "oldWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1331
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1332
    iput v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1319
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "oldWidth":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1336
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 11
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 895
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 897
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 898
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 899
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 900
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 902
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 905
    iget v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 906
    .local v10, "oldHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 909
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 910
    iput v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 897
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "oldHeight":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 914
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1645
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1646
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1751
    instance-of v0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 322
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 323
    .local v0, "count":I
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 324
    .local v1, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 325
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 327
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 328
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 329
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 331
    .local v4, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .local v5, "position":I
    goto :goto_1

    .line 334
    .end local v5    # "position":I
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v5, v6

    .line 336
    .restart local v5    # "position":I
    :goto_1
    invoke-virtual {p0, p1, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 324
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "position":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 342
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 344
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_4

    .line 345
    if-eqz v1, :cond_3

    .line 346
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    .local v3, "position":I
    goto :goto_2

    .line 348
    .end local v3    # "position":I
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v3, v4

    .restart local v3    # "position":I
    goto :goto_2

    .line 351
    .end local v3    # "position":I
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 352
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v1, :cond_5

    .line 353
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v4, v5

    move v3, v4

    .local v4, "position":I
    goto :goto_2

    .line 355
    .end local v4    # "position":I
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v3, v4, v5

    .line 358
    .local v3, "position":I
    :goto_2
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 360
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "position":I
    :cond_6
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 295
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 296
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 297
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 299
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 300
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 302
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v4, v5

    .line 303
    .local v4, "top":I
    invoke-virtual {p0, p1, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 296
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v4    # "top":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 309
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 310
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 311
    .local v2, "bottom":I
    if-nez v1, :cond_2

    .line 312
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v3, v4

    move v2, v3

    .end local v2    # "bottom":I
    .local v3, "bottom":I
    goto :goto_1

    .line 314
    .end local v3    # "bottom":I
    .restart local v2    # "bottom":I
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 315
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v2, v4, v5

    .line 317
    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :goto_1
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 319
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "bottom":I
    :cond_3
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .line 363
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 364
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 363
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 365
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .line 369
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 370
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 369
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 372
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 3

    .line 1734
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 1735
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1736
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1737
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1739
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1721
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1744
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 6

    .line 423
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    .line 424
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 427
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_6

    .line 432
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 433
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 435
    .local v1, "childBaseline":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 436
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez v3, :cond_1

    .line 438
    return v2

    .line 442
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_2
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 454
    .local v2, "childTop":I
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 455
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 456
    .local v3, "majorGravity":I
    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    .line 457
    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 459
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v2, v4, v5

    .line 460
    goto :goto_0

    .line 463
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 470
    .end local v3    # "majorGravity":I
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 471
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v4, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    return v4

    .line 428
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBaseline":I
    .end local v2    # "childTop":I
    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 480
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 1347
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 221
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 268
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 278
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1700
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1389
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1401
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1667
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 212
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 505
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .line 518
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 529
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .line 566
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 567
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 568
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 569
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 570
    :cond_3
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 573
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    .line 574
    const/4 v0, 0x1

    .line 575
    goto :goto_1

    .line 572
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 578
    .end local v1    # "i":I
    :cond_5
    :goto_1
    return v0

    .line 580
    .end local v0    # "hasVisibleViewBefore":Z
    :cond_6
    return v0
.end method

.method public isBaselineAligned()Z
    .locals 1

    .line 381
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 33
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1521
    move-object/from16 v6, p0

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    .line 1522
    .local v7, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v8

    .line 1528
    .local v8, "paddingTop":I
    sub-int v9, p4, p2

    .line 1529
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v0

    sub-int v10, v9, v0

    .line 1532
    .local v10, "childBottom":I
    sub-int v0, v9, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int v11, v0, v1

    .line 1534
    .local v11, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v12

    .line 1536
    .local v12, "count":I
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    const v1, 0x800007

    and-int v13, v0, v1

    .line 1537
    .local v13, "majorGravity":I
    and-int/lit8 v14, v0, 0x70

    .line 1539
    .local v14, "minorGravity":I
    iget-boolean v15, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 1541
    .local v15, "baselineAligned":Z
    iget-object v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 1542
    .local v5, "maxAscent":[I
    iget-object v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 1544
    .local v4, "maxDescent":[I
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1545
    .local v3, "layoutDirection":I
    invoke-static {v13, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    const/16 v16, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1558
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    .local v0, "childLeft":I
    goto :goto_0

    .line 1548
    .end local v0    # "childLeft":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    add-int v0, v0, p3

    sub-int v0, v0, p1

    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1549
    .restart local v0    # "childLeft":I
    goto :goto_0

    .line 1553
    .end local v0    # "childLeft":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    sub-int v1, p3, p1

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1554
    .restart local v0    # "childLeft":I
    nop

    .line 1562
    :goto_0
    const/4 v1, 0x0

    .line 1563
    .local v1, "start":I
    const/4 v2, 0x1

    .line 1565
    .local v2, "dir":I
    if-eqz v7, :cond_2

    .line 1566
    add-int/lit8 v1, v12, -0x1

    .line 1567
    const/4 v2, -0x1

    move/from16 v18, v1

    move/from16 v19, v2

    goto :goto_1

    .line 1565
    :cond_2
    move/from16 v18, v1

    move/from16 v19, v2

    .line 1570
    .end local v1    # "start":I
    .end local v2    # "dir":I
    .local v18, "start":I
    .local v19, "dir":I
    :goto_1
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_2
    if-ge v2, v12, :cond_e

    .line 1571
    mul-int v1, v19, v2

    add-int v1, v18, v1

    .line 1572
    .local v1, "childIndex":I
    move/from16 v20, v7

    .end local v7    # "isLayoutRtl":Z
    .local v20, "isLayoutRtl":Z
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1574
    .local v7, "child":Landroid/view/View;
    if-nez v7, :cond_3

    .line 1575
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v21

    add-int v0, v0, v21

    move/from16 v22, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v29, v8

    move/from16 v26, v9

    move/from16 v28, v12

    const/16 v21, 0x1

    goto/16 :goto_6

    .line 1576
    :cond_3
    move/from16 v21, v2

    .end local v2    # "i":I
    .local v21, "i":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v22, v3

    .end local v3    # "layoutDirection":I
    .local v22, "layoutDirection":I
    const/16 v3, 0x8

    if-eq v2, v3, :cond_d

    .line 1577
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 1578
    .local v23, "childWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    .line 1579
    .local v24, "childHeight":I
    const/4 v2, -0x1

    .line 1581
    .local v2, "childBaseline":I
    nop

    .line 1582
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1584
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v25, v2

    .end local v2    # "childBaseline":I
    .local v25, "childBaseline":I
    const/4 v2, -0x1

    if-eqz v15, :cond_4

    move/from16 v26, v9

    .end local v9    # "height":I
    .local v26, "height":I
    iget v9, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-eq v9, v2, :cond_5

    .line 1585
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v9

    .end local v25    # "childBaseline":I
    .local v9, "childBaseline":I
    goto :goto_3

    .line 1584
    .end local v26    # "height":I
    .local v9, "height":I
    .restart local v25    # "childBaseline":I
    :cond_4
    move/from16 v26, v9

    .line 1588
    .end local v9    # "height":I
    .restart local v26    # "height":I
    :cond_5
    move/from16 v9, v25

    .end local v25    # "childBaseline":I
    .local v9, "childBaseline":I
    :goto_3
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1589
    .local v2, "gravity":I
    if-gez v2, :cond_6

    .line 1590
    move v2, v14

    move/from16 v27, v2

    goto :goto_4

    .line 1589
    :cond_6
    move/from16 v27, v2

    .line 1593
    .end local v2    # "gravity":I
    .local v27, "gravity":I
    :goto_4
    and-int/lit8 v2, v27, 0x70

    move/from16 v28, v12

    .end local v12    # "count":I
    .local v28, "count":I
    const/16 v12, 0x10

    if-eq v2, v12, :cond_b

    const/16 v12, 0x30

    if-eq v2, v12, :cond_9

    const/16 v12, 0x50

    if-eq v2, v12, :cond_7

    .line 1625
    move v2, v8

    move v12, v2

    .local v2, "childTop":I
    goto :goto_5

    .line 1618
    .end local v2    # "childTop":I
    :cond_7
    sub-int v2, v10, v24

    iget v12, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v12

    .line 1619
    .restart local v2    # "childTop":I
    const/4 v12, -0x1

    if-eq v9, v12, :cond_8

    .line 1620
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v12, v9

    .line 1621
    .local v12, "descent":I
    aget v25, v4, v16

    sub-int v25, v25, v12

    sub-int v2, v2, v25

    .line 1622
    .end local v12    # "descent":I
    move v12, v2

    goto :goto_5

    .line 1619
    :cond_8
    move v12, v2

    goto :goto_5

    .line 1595
    .end local v2    # "childTop":I
    :cond_9
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v8

    .line 1596
    .restart local v2    # "childTop":I
    const/4 v12, -0x1

    if-eq v9, v12, :cond_a

    .line 1597
    const/4 v12, 0x1

    aget v17, v5, v12

    sub-int v17, v17, v9

    add-int v2, v2, v17

    move v12, v2

    goto :goto_5

    .line 1596
    :cond_a
    const/4 v12, 0x1

    move v12, v2

    goto :goto_5

    .line 1613
    .end local v2    # "childTop":I
    :cond_b
    const/4 v12, 0x1

    sub-int v2, v11, v24

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v8

    iget v12, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v12

    iget v12, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v12

    .line 1615
    .restart local v2    # "childTop":I
    move v12, v2

    .line 1629
    .end local v2    # "childTop":I
    .local v12, "childTop":I
    :goto_5
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1630
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v0, v2

    .line 1633
    :cond_c
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v25, v0, v2

    .line 1634
    .end local v0    # "childLeft":I
    .local v25, "childLeft":I
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v2, v25, v0

    move-object/from16 v0, p0

    move/from16 v29, v8

    move v8, v1

    .end local v1    # "childIndex":I
    .local v8, "childIndex":I
    .local v29, "paddingTop":I
    move-object v1, v7

    move/from16 v17, v21

    const/16 v21, 0x1

    .end local v21    # "i":I
    .local v17, "i":I
    move/from16 v30, v9

    move-object v9, v3

    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v30, "childBaseline":I
    move v3, v12

    move-object/from16 v31, v4

    .end local v4    # "maxDescent":[I
    .local v31, "maxDescent":[I
    move/from16 v4, v23

    move-object/from16 v32, v5

    .end local v5    # "maxAscent":[I
    .local v32, "maxAscent":[I
    move/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1636
    iget v0, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v0, v23, v0

    .line 1637
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v25, v25, v0

    .line 1639
    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v2, v17, v0

    move/from16 v0, v25

    .end local v17    # "i":I
    .local v2, "i":I
    goto :goto_6

    .line 1576
    .end local v2    # "i":I
    .end local v23    # "childWidth":I
    .end local v24    # "childHeight":I
    .end local v25    # "childLeft":I
    .end local v26    # "height":I
    .end local v27    # "gravity":I
    .end local v28    # "count":I
    .end local v29    # "paddingTop":I
    .end local v30    # "childBaseline":I
    .end local v31    # "maxDescent":[I
    .end local v32    # "maxAscent":[I
    .restart local v0    # "childLeft":I
    .restart local v1    # "childIndex":I
    .restart local v4    # "maxDescent":[I
    .restart local v5    # "maxAscent":[I
    .local v8, "paddingTop":I
    .local v9, "height":I
    .local v12, "count":I
    .restart local v21    # "i":I
    :cond_d
    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v29, v8

    move/from16 v26, v9

    move/from16 v28, v12

    move/from16 v17, v21

    const/16 v21, 0x1

    move v8, v1

    .end local v1    # "childIndex":I
    .end local v4    # "maxDescent":[I
    .end local v5    # "maxAscent":[I
    .end local v9    # "height":I
    .end local v12    # "count":I
    .end local v21    # "i":I
    .local v8, "childIndex":I
    .restart local v17    # "i":I
    .restart local v26    # "height":I
    .restart local v28    # "count":I
    .restart local v29    # "paddingTop":I
    .restart local v31    # "maxDescent":[I
    .restart local v32    # "maxAscent":[I
    move/from16 v2, v17

    .line 1570
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childIndex":I
    .end local v17    # "i":I
    .restart local v2    # "i":I
    :goto_6
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v20

    move/from16 v3, v22

    move/from16 v9, v26

    move/from16 v12, v28

    move/from16 v8, v29

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    goto/16 :goto_2

    .line 1642
    .end local v2    # "i":I
    .end local v20    # "isLayoutRtl":Z
    .end local v22    # "layoutDirection":I
    .end local v26    # "height":I
    .end local v28    # "count":I
    .end local v29    # "paddingTop":I
    .end local v31    # "maxDescent":[I
    .end local v32    # "maxAscent":[I
    .local v3, "layoutDirection":I
    .restart local v4    # "maxDescent":[I
    .restart local v5    # "maxAscent":[I
    .local v7, "isLayoutRtl":Z
    .local v8, "paddingTop":I
    .restart local v9    # "height":I
    .restart local v12    # "count":I
    :cond_e
    return-void
.end method

.method layoutVertical(IIII)V
    .locals 25
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1426
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v7

    .line 1432
    .local v7, "paddingLeft":I
    sub-int v8, p3, p1

    .line 1433
    .local v8, "width":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v0

    sub-int v9, v8, v0

    .line 1436
    .local v9, "childRight":I
    sub-int v0, v8, v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int v10, v0, v1

    .line 1438
    .local v10, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 1440
    .local v11, "count":I
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v12, v0, 0x70

    .line 1441
    .local v12, "majorGravity":I
    const v1, 0x800007

    and-int v13, v0, v1

    .line 1443
    .local v13, "minorGravity":I
    const/16 v0, 0x10

    if-eq v12, v0, :cond_1

    const/16 v0, 0x50

    if-eq v12, v0, :cond_0

    .line 1456
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    .local v0, "childTop":I
    goto :goto_0

    .line 1446
    .end local v0    # "childTop":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1447
    .restart local v0    # "childTop":I
    goto :goto_0

    .line 1451
    .end local v0    # "childTop":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1452
    .restart local v0    # "childTop":I
    nop

    .line 1460
    :goto_0
    const/4 v1, 0x0

    move v14, v1

    .local v14, "i":I
    :goto_1
    if-ge v14, v11, :cond_8

    .line 1461
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1462
    .local v15, "child":Landroid/view/View;
    const/4 v5, 0x1

    if-nez v15, :cond_2

    .line 1463
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v24, v7

    const/16 v19, 0x1

    goto/16 :goto_4

    .line 1464
    :cond_2
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    .line 1465
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 1466
    .local v16, "childWidth":I
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 1468
    .local v17, "childHeight":I
    nop

    .line 1469
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1471
    .local v4, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1472
    .local v1, "gravity":I
    if-gez v1, :cond_3

    .line 1473
    move v1, v13

    move v3, v1

    goto :goto_2

    .line 1472
    :cond_3
    move v3, v1

    .line 1475
    .end local v1    # "gravity":I
    .local v3, "gravity":I
    :goto_2
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1476
    .local v2, "layoutDirection":I
    invoke-static {v3, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v18

    .line 1478
    .local v18, "absoluteGravity":I
    and-int/lit8 v1, v18, 0x7

    if-eq v1, v5, :cond_5

    const/4 v5, 0x5

    if-eq v1, v5, :cond_4

    .line 1490
    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    move/from16 v20, v1

    .local v1, "childLeft":I
    goto :goto_3

    .line 1485
    .end local v1    # "childLeft":I
    :cond_4
    sub-int v1, v9, v16

    iget v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v5

    .line 1486
    .restart local v1    # "childLeft":I
    move/from16 v20, v1

    goto :goto_3

    .line 1480
    .end local v1    # "childLeft":I
    :cond_5
    sub-int v1, v10, v16

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    iget v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v5

    .line 1482
    .restart local v1    # "childLeft":I
    move/from16 v20, v1

    .line 1494
    .end local v1    # "childLeft":I
    .local v20, "childLeft":I
    :goto_3
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1495
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 1498
    :cond_6
    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v21, v0, v1

    .line 1499
    .end local v0    # "childTop":I
    .local v21, "childTop":I
    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v5, v21, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v22, v2

    .end local v2    # "layoutDirection":I
    .local v22, "layoutDirection":I
    move/from16 v2, v20

    move/from16 v23, v3

    .end local v3    # "gravity":I
    .local v23, "gravity":I
    move v3, v5

    move-object v5, v4

    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v5, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v4, v16

    move/from16 v24, v7

    const/16 v19, 0x1

    move-object v7, v5

    .end local v5    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v7, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v24, "paddingLeft":I
    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1501
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v0, v17, v0

    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v21, v21, v0

    .line 1503
    invoke-virtual {v6, v15, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v14, v0

    move/from16 v0, v21

    goto :goto_4

    .line 1464
    .end local v16    # "childWidth":I
    .end local v17    # "childHeight":I
    .end local v18    # "absoluteGravity":I
    .end local v20    # "childLeft":I
    .end local v21    # "childTop":I
    .end local v22    # "layoutDirection":I
    .end local v23    # "gravity":I
    .end local v24    # "paddingLeft":I
    .restart local v0    # "childTop":I
    .local v7, "paddingLeft":I
    :cond_7
    move/from16 v24, v7

    const/16 v19, 0x1

    .line 1460
    .end local v7    # "paddingLeft":I
    .end local v15    # "child":Landroid/view/View;
    .restart local v24    # "paddingLeft":I
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v24

    goto/16 :goto_1

    .line 1506
    .end local v14    # "i":I
    .end local v24    # "paddingLeft":I
    .restart local v7    # "paddingLeft":I
    :cond_8
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 1377
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1379
    return-void
.end method

.method measureHorizontal(II)V
    .locals 46
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 928
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 929
    const/4 v0, 0x0

    .line 930
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 931
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 932
    .local v2, "alternativeMaxHeight":I
    const/4 v3, 0x0

    .line 933
    .local v3, "weightedMaxHeight":I
    const/4 v4, 0x1

    .line 934
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 936
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 938
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 939
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 941
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 942
    .local v6, "matchHeight":Z
    const/4 v14, 0x0

    .line 944
    .local v14, "skippedMeasure":Z
    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    if-eqz v15, :cond_0

    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v15, :cond_1

    .line 945
    :cond_0
    const/4 v15, 0x4

    new-array v10, v15, [I

    iput-object v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 946
    new-array v10, v15, [I

    iput-object v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 949
    :cond_1
    iget-object v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 950
    .local v10, "maxAscent":[I
    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 952
    .local v15, "maxDescent":[I
    const/16 v17, 0x3

    move/from16 v18, v6

    .end local v6    # "matchHeight":Z
    .local v18, "matchHeight":Z
    const/4 v6, -0x1

    aput v6, v10, v17

    const/16 v19, 0x2

    aput v6, v10, v19

    const/16 v20, 0x1

    aput v6, v10, v20

    const/16 v16, 0x0

    aput v6, v10, v16

    .line 953
    aput v6, v15, v17

    aput v6, v15, v19

    aput v6, v15, v20

    aput v6, v15, v16

    .line 955
    iget-boolean v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 956
    .local v6, "baselineAligned":Z
    move/from16 v22, v14

    .end local v14    # "skippedMeasure":Z
    .local v22, "skippedMeasure":Z
    iget-boolean v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 958
    .local v14, "useLargestChild":Z
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v12, v9, :cond_2

    const/16 v23, 0x1

    goto :goto_0

    :cond_2
    const/16 v23, 0x0

    .line 960
    .local v23, "isExactly":Z
    :goto_0
    const/16 v24, 0x0

    .line 963
    .local v24, "largestChildWidth":I
    const/16 v25, 0x0

    move/from16 v26, v1

    move/from16 v1, v24

    move/from16 v24, v18

    move/from16 v18, v4

    move v4, v0

    move v0, v5

    move/from16 v5, v25

    move/from16 v45, v3

    move v3, v2

    move/from16 v2, v45

    .local v0, "totalWeight":F
    .local v1, "largestChildWidth":I
    .local v2, "weightedMaxHeight":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "maxHeight":I
    .local v5, "i":I
    .local v18, "allFillParent":Z
    .local v24, "matchHeight":Z
    .local v26, "childState":I
    :goto_1
    const/16 v29, 0x0

    if-ge v5, v11, :cond_16

    .line 964
    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 966
    .local v9, "child":Landroid/view/View;
    if-nez v9, :cond_3

    .line 967
    move/from16 v31, v1

    .end local v1    # "largestChildWidth":I
    .local v31, "largestChildWidth":I
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v27

    add-int v1, v1, v27

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 968
    move/from16 v21, v6

    move/from16 v6, v26

    move/from16 v1, v31

    move/from16 v31, v12

    goto/16 :goto_e

    .line 971
    .end local v31    # "largestChildWidth":I
    .restart local v1    # "largestChildWidth":I
    :cond_3
    move/from16 v31, v1

    .end local v1    # "largestChildWidth":I
    .restart local v31    # "largestChildWidth":I
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v32, v2

    const/16 v2, 0x8

    .end local v2    # "weightedMaxHeight":I
    .local v32, "weightedMaxHeight":I
    if-ne v1, v2, :cond_4

    .line 972
    invoke-virtual {v7, v9, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v5, v1

    .line 973
    move/from16 v21, v6

    move/from16 v6, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v31, v12

    goto/16 :goto_e

    .line 976
    :cond_4
    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 977
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 980
    :cond_5
    nop

    .line 981
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 983
    .local v2, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v30, v0, v1

    .line 985
    .end local v0    # "totalWeight":F
    .local v30, "totalWeight":F
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v12, v0, :cond_8

    iget v0, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v0, :cond_8

    iget v0, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v29

    if-lez v0, :cond_8

    .line 989
    if-eqz v23, :cond_6

    .line 990
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v33, v3

    .end local v3    # "alternativeMaxHeight":I
    .local v33, "alternativeMaxHeight":I
    iget v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_2

    .line 992
    .end local v33    # "alternativeMaxHeight":I
    .restart local v3    # "alternativeMaxHeight":I
    :cond_6
    move/from16 v33, v3

    .end local v3    # "alternativeMaxHeight":I
    .restart local v33    # "alternativeMaxHeight":I
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 993
    .local v0, "totalLength":I
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1002
    .end local v0    # "totalLength":I
    :goto_2
    if-eqz v6, :cond_7

    .line 1003
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1004
    .local v1, "freeSpec":I
    invoke-virtual {v9, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1005
    .end local v1    # "freeSpec":I
    move-object v1, v2

    move/from16 v41, v4

    move v8, v5

    move/from16 v21, v6

    move/from16 v3, v31

    move/from16 v38, v32

    move/from16 v39, v33

    move/from16 v31, v12

    const/4 v12, -0x1

    goto/16 :goto_7

    .line 1006
    :cond_7
    const/16 v22, 0x1

    move-object v1, v2

    move/from16 v41, v4

    move v8, v5

    move/from16 v21, v6

    move/from16 v3, v31

    move/from16 v38, v32

    move/from16 v39, v33

    move/from16 v31, v12

    const/4 v12, -0x1

    goto/16 :goto_7

    .line 985
    .end local v33    # "alternativeMaxHeight":I
    .restart local v3    # "alternativeMaxHeight":I
    :cond_8
    move/from16 v33, v3

    .line 1009
    .end local v3    # "alternativeMaxHeight":I
    .restart local v33    # "alternativeMaxHeight":I
    const/high16 v0, -0x80000000

    .line 1011
    .local v0, "oldWidth":I
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v1, :cond_9

    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v29

    if-lez v1, :cond_9

    .line 1016
    const/4 v0, 0x0

    .line 1017
    const/4 v1, -0x2

    iput v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move v3, v0

    goto :goto_3

    .line 1024
    :cond_9
    move v3, v0

    .end local v0    # "oldWidth":I
    .local v3, "oldWidth":I
    :goto_3
    cmpl-float v0, v30, v29

    if-nez v0, :cond_a

    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v34, v0

    goto :goto_4

    :cond_a
    const/16 v34, 0x0

    :goto_4
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v36, v31

    .end local v31    # "largestChildWidth":I
    .local v36, "largestChildWidth":I
    move-object v1, v9

    move-object/from16 v37, v2

    move/from16 v38, v32

    .end local v2    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v32    # "weightedMaxHeight":I
    .local v37, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v38, "weightedMaxHeight":I
    move v2, v5

    move/from16 v40, v3

    move/from16 v39, v33

    .end local v3    # "oldWidth":I
    .end local v33    # "alternativeMaxHeight":I
    .local v39, "alternativeMaxHeight":I
    .local v40, "oldWidth":I
    move/from16 v3, p1

    move/from16 v41, v4

    .end local v4    # "maxHeight":I
    .local v41, "maxHeight":I
    move/from16 v4, v34

    move v8, v5

    .end local v5    # "i":I
    .local v8, "i":I
    move/from16 v5, p2

    move/from16 v21, v6

    move/from16 v31, v12

    const/4 v12, -0x1

    .end local v6    # "baselineAligned":Z
    .end local v12    # "widthMode":I
    .local v21, "baselineAligned":Z
    .local v31, "widthMode":I
    move/from16 v6, v35

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1028
    move/from16 v0, v40

    const/high16 v1, -0x80000000

    .end local v40    # "oldWidth":I
    .restart local v0    # "oldWidth":I
    if-eq v0, v1, :cond_b

    .line 1029
    move-object/from16 v1, v37

    .end local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v1, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    goto :goto_5

    .line 1028
    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_b
    move-object/from16 v1, v37

    .line 1032
    .end local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :goto_5
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1033
    .local v2, "childWidth":I
    if-eqz v23, :cond_c

    .line 1034
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v4, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v4, v2

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1035
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_6

    .line 1037
    :cond_c
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1038
    .local v3, "totalLength":I
    add-int v4, v3, v2

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1039
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1038
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1042
    .end local v3    # "totalLength":I
    :goto_6
    if-eqz v14, :cond_d

    .line 1043
    move/from16 v3, v36

    .end local v36    # "largestChildWidth":I
    .local v3, "largestChildWidth":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_7

    .line 1042
    .end local v3    # "largestChildWidth":I
    .restart local v36    # "largestChildWidth":I
    :cond_d
    move/from16 v3, v36

    .line 1047
    .end local v0    # "oldWidth":I
    .end local v2    # "childWidth":I
    .end local v36    # "largestChildWidth":I
    .restart local v3    # "largestChildWidth":I
    :goto_7
    const/4 v0, 0x0

    .line 1048
    .local v0, "matchHeightLocally":Z
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_e

    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-ne v2, v12, :cond_e

    .line 1052
    const/16 v24, 0x1

    .line 1053
    const/4 v0, 0x1

    .line 1056
    :cond_e
    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v4, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 1057
    .local v2, "margin":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 1058
    .local v4, "childHeight":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v26

    .end local v26    # "childState":I
    .local v6, "childState":I
    invoke-static {v6, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    .line 1060
    .end local v6    # "childState":I
    .local v5, "childState":I
    if-eqz v21, :cond_11

    .line 1061
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v6

    .line 1062
    .local v6, "childBaseline":I
    if-eq v6, v12, :cond_10

    .line 1065
    iget v12, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v12, :cond_f

    iget v12, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_8

    :cond_f
    iget v12, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_8
    and-int/lit8 v12, v12, 0x70

    .line 1067
    .local v12, "gravity":I
    shr-int/lit8 v27, v12, 0x4

    const/16 v28, -0x2

    and-int/lit8 v27, v27, -0x2

    shr-int/lit8 v27, v27, 0x1

    .line 1070
    .local v27, "index":I
    move/from16 v28, v2

    .end local v2    # "margin":I
    .local v28, "margin":I
    aget v2, v10, v27

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v10, v27

    .line 1071
    aget v2, v15, v27

    move/from16 v32, v3

    .end local v3    # "largestChildWidth":I
    .local v32, "largestChildWidth":I
    sub-int v3, v4, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v15, v27

    goto :goto_9

    .line 1062
    .end local v12    # "gravity":I
    .end local v27    # "index":I
    .end local v28    # "margin":I
    .end local v32    # "largestChildWidth":I
    .restart local v2    # "margin":I
    .restart local v3    # "largestChildWidth":I
    :cond_10
    move/from16 v28, v2

    move/from16 v32, v3

    .end local v2    # "margin":I
    .end local v3    # "largestChildWidth":I
    .restart local v28    # "margin":I
    .restart local v32    # "largestChildWidth":I
    goto :goto_9

    .line 1060
    .end local v6    # "childBaseline":I
    .end local v28    # "margin":I
    .end local v32    # "largestChildWidth":I
    .restart local v2    # "margin":I
    .restart local v3    # "largestChildWidth":I
    :cond_11
    move/from16 v28, v2

    move/from16 v32, v3

    .line 1075
    .end local v2    # "margin":I
    .end local v3    # "largestChildWidth":I
    .restart local v28    # "margin":I
    .restart local v32    # "largestChildWidth":I
    :goto_9
    move/from16 v2, v41

    .end local v41    # "maxHeight":I
    .local v2, "maxHeight":I
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1077
    if-eqz v18, :cond_12

    iget v3, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_12

    const/4 v3, 0x1

    goto :goto_a

    :cond_12
    const/4 v3, 0x0

    .line 1078
    .end local v18    # "allFillParent":Z
    .local v3, "allFillParent":Z
    :goto_a
    iget v6, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v6, v6, v29

    if-lez v6, :cond_14

    .line 1083
    if-eqz v0, :cond_13

    move/from16 v6, v28

    goto :goto_b

    :cond_13
    move v6, v4

    :goto_b
    move/from16 v12, v38

    .end local v38    # "weightedMaxHeight":I
    .local v12, "weightedMaxHeight":I
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v37, v1

    move/from16 v1, v39

    .end local v12    # "weightedMaxHeight":I
    .local v6, "weightedMaxHeight":I
    goto :goto_d

    .line 1086
    .end local v6    # "weightedMaxHeight":I
    .restart local v38    # "weightedMaxHeight":I
    :cond_14
    move/from16 v12, v38

    .end local v38    # "weightedMaxHeight":I
    .restart local v12    # "weightedMaxHeight":I
    if-eqz v0, :cond_15

    move/from16 v6, v28

    goto :goto_c

    :cond_15
    move v6, v4

    :goto_c
    move-object/from16 v37, v1

    move/from16 v1, v39

    .end local v39    # "alternativeMaxHeight":I
    .local v1, "alternativeMaxHeight":I
    .restart local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v6, v12

    .line 1090
    .end local v12    # "weightedMaxHeight":I
    .restart local v6    # "weightedMaxHeight":I
    :goto_d
    invoke-virtual {v7, v9, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v12

    add-int/2addr v8, v12

    move v4, v2

    move/from16 v18, v3

    move v2, v6

    move/from16 v0, v30

    move v3, v1

    move v6, v5

    move v5, v8

    move/from16 v1, v32

    .line 963
    .end local v8    # "i":I
    .end local v9    # "child":Landroid/view/View;
    .end local v28    # "margin":I
    .end local v30    # "totalWeight":F
    .end local v32    # "largestChildWidth":I
    .end local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v0, "totalWeight":F
    .local v1, "largestChildWidth":I
    .local v2, "weightedMaxHeight":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "maxHeight":I
    .local v5, "i":I
    .local v6, "childState":I
    .restart local v18    # "allFillParent":Z
    :goto_e
    add-int/lit8 v5, v5, 0x1

    move/from16 v8, p1

    move/from16 v26, v6

    move/from16 v6, v21

    move/from16 v12, v31

    const/high16 v9, 0x40000000    # 2.0f

    goto/16 :goto_1

    .end local v21    # "baselineAligned":Z
    .end local v31    # "widthMode":I
    .local v6, "baselineAligned":Z
    .local v12, "widthMode":I
    .restart local v26    # "childState":I
    :cond_16
    move v8, v5

    move/from16 v21, v6

    move/from16 v31, v12

    move/from16 v6, v26

    move v12, v2

    move v2, v4

    move/from16 v45, v3

    move v3, v1

    move/from16 v1, v45

    .line 1093
    .end local v4    # "maxHeight":I
    .end local v5    # "i":I
    .end local v26    # "childState":I
    .local v1, "alternativeMaxHeight":I
    .local v2, "maxHeight":I
    .local v3, "largestChildWidth":I
    .local v6, "childState":I
    .local v12, "weightedMaxHeight":I
    .restart local v21    # "baselineAligned":Z
    .restart local v31    # "widthMode":I
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v4, :cond_17

    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1094
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v4, v5

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1099
    :cond_17
    aget v4, v10, v20

    const/4 v5, -0x1

    if-ne v4, v5, :cond_19

    const/4 v4, 0x0

    aget v8, v10, v4

    if-ne v8, v5, :cond_19

    aget v4, v10, v19

    if-ne v4, v5, :cond_19

    aget v4, v10, v17

    if-eq v4, v5, :cond_18

    goto :goto_f

    :cond_18
    move/from16 v32, v6

    goto :goto_10

    .line 1103
    :cond_19
    :goto_f
    aget v4, v10, v17

    const/4 v5, 0x0

    aget v8, v10, v5

    aget v9, v10, v20

    aget v5, v10, v19

    .line 1105
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1104
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1103
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1106
    .local v4, "ascent":I
    aget v5, v15, v17

    const/4 v8, 0x0

    aget v9, v15, v8

    aget v8, v15, v20

    move/from16 v32, v6

    .end local v6    # "childState":I
    .local v32, "childState":I
    aget v6, v15, v19

    .line 1108
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1107
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1106
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1109
    .local v5, "descent":I
    add-int v6, v4, v5

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1112
    .end local v4    # "ascent":I
    .end local v5    # "descent":I
    :goto_10
    if-eqz v14, :cond_20

    move/from16 v4, v31

    const/high16 v5, -0x80000000

    .end local v31    # "widthMode":I
    .local v4, "widthMode":I
    if-eq v4, v5, :cond_1b

    if-nez v4, :cond_1a

    goto :goto_11

    :cond_1a
    move/from16 v27, v2

    goto/16 :goto_14

    .line 1114
    :cond_1b
    :goto_11
    const/4 v5, 0x0

    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1116
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_12
    if-ge v5, v11, :cond_1f

    .line 1117
    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1119
    .local v6, "child":Landroid/view/View;
    if-nez v6, :cond_1c

    .line 1120
    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1121
    move/from16 v27, v2

    move/from16 v31, v5

    goto :goto_13

    .line 1124
    :cond_1c
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1d

    .line 1125
    invoke-virtual {v7, v6, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v8

    add-int/2addr v5, v8

    .line 1126
    move/from16 v27, v2

    move/from16 v31, v5

    goto :goto_13

    .line 1129
    :cond_1d
    nop

    .line 1130
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1131
    .local v8, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v23, :cond_1e

    .line 1132
    iget v9, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v27, v2

    .end local v2    # "maxHeight":I
    .local v27, "maxHeight":I
    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    move/from16 v31, v5

    .end local v5    # "i":I
    .local v31, "i":I
    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v5

    .line 1133
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v9, v2

    iput v9, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_13

    .line 1135
    .end local v27    # "maxHeight":I
    .end local v31    # "i":I
    .restart local v2    # "maxHeight":I
    .restart local v5    # "i":I
    :cond_1e
    move/from16 v27, v2

    move/from16 v31, v5

    .end local v2    # "maxHeight":I
    .end local v5    # "i":I
    .restart local v27    # "maxHeight":I
    .restart local v31    # "i":I
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1136
    .local v2, "totalLength":I
    add-int v5, v2, v3

    iget v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v5, v9

    iget v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v9

    .line 1137
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v9

    add-int/2addr v5, v9

    .line 1136
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1116
    .end local v2    # "totalLength":I
    .end local v6    # "child":Landroid/view/View;
    .end local v8    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :goto_13
    add-int/lit8 v5, v31, 0x1

    move/from16 v2, v27

    .end local v31    # "i":I
    .restart local v5    # "i":I
    goto :goto_12

    .end local v27    # "maxHeight":I
    .local v2, "maxHeight":I
    :cond_1f
    move/from16 v27, v2

    move/from16 v31, v5

    .end local v2    # "maxHeight":I
    .end local v5    # "i":I
    .restart local v27    # "maxHeight":I
    .restart local v31    # "i":I
    goto :goto_14

    .line 1112
    .end local v4    # "widthMode":I
    .end local v27    # "maxHeight":I
    .restart local v2    # "maxHeight":I
    .local v31, "widthMode":I
    :cond_20
    move/from16 v27, v2

    move/from16 v4, v31

    .line 1143
    .end local v2    # "maxHeight":I
    .end local v31    # "widthMode":I
    .restart local v4    # "widthMode":I
    .restart local v27    # "maxHeight":I
    :goto_14
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1145
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1148
    .local v2, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1151
    move/from16 v5, p1

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v8

    .line 1152
    .local v8, "widthSizeAndState":I
    const v6, 0xffffff

    and-int v2, v8, v6

    .line 1157
    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v6, v2, v6

    .line 1158
    .local v6, "delta":I
    if-nez v22, :cond_27

    if-eqz v6, :cond_21

    cmpl-float v31, v0, v29

    if-lez v31, :cond_21

    move/from16 v33, v0

    move/from16 v34, v2

    move/from16 v36, v3

    move v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_18

    .line 1269
    :cond_21
    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1273
    if-eqz v14, :cond_26

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v4, v9, :cond_26

    .line 1274
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_15
    if-ge v9, v11, :cond_25

    .line 1275
    move/from16 v33, v0

    .end local v0    # "totalWeight":F
    .local v33, "totalWeight":F
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1277
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_24

    move/from16 v16, v1

    .end local v1    # "alternativeMaxHeight":I
    .local v16, "alternativeMaxHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v34, v2

    const/16 v2, 0x8

    .end local v2    # "widthSize":I
    .local v34, "widthSize":I
    if-ne v1, v2, :cond_22

    .line 1278
    move/from16 v36, v3

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_16

    .line 1281
    :cond_22
    nop

    .line 1282
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1284
    .local v1, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1285
    .local v2, "childExtra":F
    cmpl-float v17, v2, v29

    if-lez v17, :cond_23

    .line 1286
    nop

    .line 1287
    move-object/from16 v17, v1

    move/from16 v19, v2

    const/high16 v1, 0x40000000    # 2.0f

    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v2    # "childExtra":F
    .local v17, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v19, "childExtra":F
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1288
    move/from16 v36, v3

    .end local v3    # "largestChildWidth":I
    .restart local v36    # "largestChildWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1286
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    goto :goto_16

    .line 1285
    .end local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v19    # "childExtra":F
    .end local v36    # "largestChildWidth":I
    .restart local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v2    # "childExtra":F
    .restart local v3    # "largestChildWidth":I
    :cond_23
    move-object/from16 v17, v1

    move/from16 v19, v2

    move/from16 v36, v3

    const/high16 v1, 0x40000000    # 2.0f

    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v2    # "childExtra":F
    .end local v3    # "largestChildWidth":I
    .restart local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v19    # "childExtra":F
    .restart local v36    # "largestChildWidth":I
    goto :goto_16

    .line 1277
    .end local v16    # "alternativeMaxHeight":I
    .end local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v19    # "childExtra":F
    .end local v34    # "widthSize":I
    .end local v36    # "largestChildWidth":I
    .local v1, "alternativeMaxHeight":I
    .local v2, "widthSize":I
    .restart local v3    # "largestChildWidth":I
    :cond_24
    move/from16 v16, v1

    move/from16 v34, v2

    move/from16 v36, v3

    const/high16 v1, 0x40000000    # 2.0f

    .line 1274
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "alternativeMaxHeight":I
    .end local v2    # "widthSize":I
    .end local v3    # "largestChildWidth":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v34    # "widthSize":I
    .restart local v36    # "largestChildWidth":I
    :goto_16
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v16

    move/from16 v0, v33

    move/from16 v2, v34

    move/from16 v3, v36

    goto :goto_15

    .end local v16    # "alternativeMaxHeight":I
    .end local v33    # "totalWeight":F
    .end local v34    # "widthSize":I
    .end local v36    # "largestChildWidth":I
    .local v0, "totalWeight":F
    .restart local v1    # "alternativeMaxHeight":I
    .restart local v2    # "widthSize":I
    .restart local v3    # "largestChildWidth":I
    :cond_25
    move/from16 v33, v0

    move/from16 v16, v1

    move/from16 v34, v2

    move/from16 v36, v3

    const/high16 v1, 0x40000000    # 2.0f

    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxHeight":I
    .end local v2    # "widthSize":I
    .end local v3    # "largestChildWidth":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v33    # "totalWeight":F
    .restart local v34    # "widthSize":I
    .restart local v36    # "largestChildWidth":I
    goto :goto_17

    .line 1273
    .end local v9    # "i":I
    .end local v16    # "alternativeMaxHeight":I
    .end local v33    # "totalWeight":F
    .end local v34    # "widthSize":I
    .end local v36    # "largestChildWidth":I
    .restart local v0    # "totalWeight":F
    .restart local v1    # "alternativeMaxHeight":I
    .restart local v2    # "widthSize":I
    .restart local v3    # "largestChildWidth":I
    :cond_26
    move/from16 v33, v0

    move/from16 v16, v1

    move/from16 v34, v2

    move/from16 v36, v3

    const/high16 v1, 0x40000000    # 2.0f

    .line 1295
    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxHeight":I
    .end local v2    # "widthSize":I
    .end local v3    # "largestChildWidth":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v33    # "totalWeight":F
    .restart local v34    # "widthSize":I
    .restart local v36    # "largestChildWidth":I
    :goto_17
    move/from16 v40, v4

    move v4, v6

    move/from16 v25, v8

    move/from16 v38, v12

    move/from16 v3, v27

    move/from16 v2, v32

    move/from16 v6, p2

    move/from16 v32, v11

    move/from16 v27, v14

    goto/16 :goto_26

    .line 1158
    .end local v16    # "alternativeMaxHeight":I
    .end local v33    # "totalWeight":F
    .end local v34    # "widthSize":I
    .end local v36    # "largestChildWidth":I
    .restart local v0    # "totalWeight":F
    .restart local v1    # "alternativeMaxHeight":I
    .restart local v2    # "widthSize":I
    .restart local v3    # "largestChildWidth":I
    :cond_27
    move/from16 v33, v0

    move/from16 v34, v2

    move/from16 v36, v3

    move v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    .line 1159
    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxHeight":I
    .end local v3    # "largestChildWidth":I
    .local v2, "alternativeMaxHeight":I
    .restart local v33    # "totalWeight":F
    .restart local v34    # "widthSize":I
    .restart local v36    # "largestChildWidth":I
    :goto_18
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v3, v0, v29

    if-lez v3, :cond_28

    goto :goto_19

    :cond_28
    move/from16 v0, v33

    .line 1161
    .local v0, "weightSum":F
    :goto_19
    const/4 v3, -0x1

    aput v3, v10, v17

    aput v3, v10, v19

    aput v3, v10, v20

    const/4 v9, 0x0

    aput v3, v10, v9

    .line 1162
    aput v3, v15, v17

    aput v3, v15, v19

    aput v3, v15, v20

    aput v3, v15, v9

    .line 1163
    const/4 v3, -0x1

    .line 1165
    .end local v27    # "maxHeight":I
    .local v3, "maxHeight":I
    iput v9, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1167
    const/4 v9, 0x0

    move v1, v2

    move/from16 v2, v32

    .end local v32    # "childState":I
    .restart local v1    # "alternativeMaxHeight":I
    .local v2, "childState":I
    .restart local v9    # "i":I
    :goto_1a
    if-ge v9, v11, :cond_38

    .line 1168
    move/from16 v38, v12

    .end local v12    # "weightedMaxHeight":I
    .restart local v38    # "weightedMaxHeight":I
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1170
    .local v12, "child":Landroid/view/View;
    if-eqz v12, :cond_37

    move/from16 v27, v14

    .end local v14    # "useLargestChild":Z
    .local v27, "useLargestChild":Z
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v5, 0x8

    if-ne v14, v5, :cond_29

    .line 1171
    move/from16 v40, v4

    move v4, v6

    move/from16 v25, v8

    move/from16 v32, v11

    const/16 v28, -0x2

    move/from16 v6, p2

    goto/16 :goto_25

    .line 1174
    :cond_29
    nop

    .line 1175
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1177
    .local v14, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v5, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1178
    .local v5, "childExtra":F
    cmpl-float v32, v5, v29

    if-lez v32, :cond_2e

    .line 1180
    move/from16 v32, v11

    .end local v11    # "count":I
    .local v32, "count":I
    int-to-float v11, v6

    mul-float v11, v11, v5

    div-float/2addr v11, v0

    float-to-int v11, v11

    .line 1181
    .local v11, "share":I
    sub-float/2addr v0, v5

    .line 1182
    sub-int/2addr v6, v11

    .line 1184
    nop

    .line 1186
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v35

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v37

    add-int v35, v35, v37

    move/from16 v37, v0

    .end local v0    # "weightSum":F
    .local v37, "weightSum":F
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v35, v35, v0

    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v0, v35, v0

    move/from16 v35, v5

    .end local v5    # "childExtra":F
    .local v35, "childExtra":F
    iget v5, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 1184
    move/from16 v39, v6

    move/from16 v25, v8

    const/high16 v8, 0x40000000    # 2.0f

    move/from16 v6, p2

    .end local v6    # "delta":I
    .end local v8    # "widthSizeAndState":I
    .local v25, "widthSizeAndState":I
    .local v39, "delta":I
    invoke-static {v6, v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v0

    .line 1191
    .local v0, "childHeightMeasureSpec":I
    iget v5, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v5, :cond_2c

    if-eq v4, v8, :cond_2a

    goto :goto_1c

    .line 1204
    :cond_2a
    if-lez v11, :cond_2b

    move v5, v11

    goto :goto_1b

    :cond_2b
    const/4 v5, 0x0

    :goto_1b
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v12, v5, v0}, Landroid/view/View;->measure(II)V

    move/from16 v40, v4

    goto :goto_1d

    .line 1194
    :cond_2c
    :goto_1c
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v11

    .line 1195
    .local v5, "childWidth":I
    if-gez v5, :cond_2d

    .line 1196
    const/4 v5, 0x0

    .line 1199
    :cond_2d
    nop

    .line 1200
    move/from16 v40, v4

    .end local v4    # "widthMode":I
    .local v40, "widthMode":I
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1199
    invoke-virtual {v12, v4, v0}, Landroid/view/View;->measure(II)V

    .line 1202
    .end local v5    # "childWidth":I
    nop

    .line 1210
    :goto_1d
    nop

    .line 1211
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    .line 1210
    invoke-static {v2, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move/from16 v0, v37

    move/from16 v4, v39

    goto :goto_1e

    .line 1178
    .end local v25    # "widthSizeAndState":I
    .end local v32    # "count":I
    .end local v35    # "childExtra":F
    .end local v37    # "weightSum":F
    .end local v39    # "delta":I
    .end local v40    # "widthMode":I
    .local v0, "weightSum":F
    .restart local v4    # "widthMode":I
    .local v5, "childExtra":F
    .restart local v6    # "delta":I
    .restart local v8    # "widthSizeAndState":I
    .local v11, "count":I
    :cond_2e
    move/from16 v40, v4

    move/from16 v35, v5

    move v4, v6

    move/from16 v25, v8

    move/from16 v32, v11

    const/high16 v8, 0x40000000    # 2.0f

    move/from16 v6, p2

    .line 1214
    .end local v5    # "childExtra":F
    .end local v6    # "delta":I
    .end local v8    # "widthSizeAndState":I
    .end local v11    # "count":I
    .local v4, "delta":I
    .restart local v25    # "widthSizeAndState":I
    .restart local v32    # "count":I
    .restart local v35    # "childExtra":F
    .restart local v40    # "widthMode":I
    :goto_1e
    if-eqz v23, :cond_2f

    .line 1215
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    iget v8, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v11, v8

    iget v8, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v11, v8

    .line 1216
    invoke-virtual {v7, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int/2addr v11, v8

    add-int/2addr v5, v11

    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_1f

    .line 1218
    :cond_2f
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1219
    .local v5, "totalLength":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v5

    iget v11, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v8, v11

    iget v11, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v8, v11

    .line 1220
    invoke-virtual {v7, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v11

    add-int/2addr v8, v11

    .line 1219
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1223
    .end local v5    # "totalLength":I
    :goto_1f
    const/high16 v5, 0x40000000    # 2.0f

    if-eq v13, v5, :cond_30

    iget v5, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_30

    const/4 v5, 0x1

    goto :goto_20

    :cond_30
    const/4 v5, 0x0

    .line 1226
    .local v5, "matchHeightLocally":Z
    :goto_20
    iget v8, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v11, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v11

    .line 1227
    .local v8, "margin":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v8

    .line 1228
    .local v11, "childHeight":I
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1229
    move/from16 v39, v0

    if-eqz v5, :cond_31

    move v0, v8

    goto :goto_21

    :cond_31
    move v0, v11

    .end local v0    # "weightSum":F
    .local v39, "weightSum":F
    :goto_21
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1232
    .end local v1    # "alternativeMaxHeight":I
    .local v0, "alternativeMaxHeight":I
    if-eqz v18, :cond_32

    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v41, v0

    const/4 v0, -0x1

    .end local v0    # "alternativeMaxHeight":I
    .local v41, "alternativeMaxHeight":I
    if-ne v1, v0, :cond_33

    const/4 v0, 0x1

    goto :goto_22

    .end local v41    # "alternativeMaxHeight":I
    .restart local v0    # "alternativeMaxHeight":I
    :cond_32
    move/from16 v41, v0

    .end local v0    # "alternativeMaxHeight":I
    .restart local v41    # "alternativeMaxHeight":I
    :cond_33
    const/4 v0, 0x0

    .line 1234
    .end local v18    # "allFillParent":Z
    .local v0, "allFillParent":Z
    :goto_22
    if-eqz v21, :cond_36

    .line 1235
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 1236
    .local v1, "childBaseline":I
    move/from16 v18, v0

    const/4 v0, -0x1

    .end local v0    # "allFillParent":Z
    .restart local v18    # "allFillParent":Z
    if-eq v1, v0, :cond_35

    .line 1238
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v0, :cond_34

    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_23

    :cond_34
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_23
    and-int/lit8 v0, v0, 0x70

    .line 1240
    .local v0, "gravity":I
    shr-int/lit8 v42, v0, 0x4

    const/16 v28, -0x2

    and-int/lit8 v42, v42, -0x2

    shr-int/lit8 v42, v42, 0x1

    .line 1243
    .local v42, "index":I
    move/from16 v43, v0

    .end local v0    # "gravity":I
    .local v43, "gravity":I
    aget v0, v10, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v42

    .line 1244
    aget v0, v15, v42

    move/from16 v44, v2

    .end local v2    # "childState":I
    .local v44, "childState":I
    sub-int v2, v11, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v15, v42

    goto :goto_24

    .line 1236
    .end local v42    # "index":I
    .end local v43    # "gravity":I
    .end local v44    # "childState":I
    .restart local v2    # "childState":I
    :cond_35
    move/from16 v44, v2

    const/16 v28, -0x2

    .end local v2    # "childState":I
    .restart local v44    # "childState":I
    goto :goto_24

    .line 1234
    .end local v1    # "childBaseline":I
    .end local v18    # "allFillParent":Z
    .end local v44    # "childState":I
    .local v0, "allFillParent":Z
    .restart local v2    # "childState":I
    :cond_36
    move/from16 v18, v0

    move/from16 v44, v2

    const/16 v28, -0x2

    .line 1167
    .end local v0    # "allFillParent":Z
    .end local v2    # "childState":I
    .end local v5    # "matchHeightLocally":Z
    .end local v8    # "margin":I
    .end local v11    # "childHeight":I
    .end local v12    # "child":Landroid/view/View;
    .end local v14    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v35    # "childExtra":F
    .restart local v18    # "allFillParent":Z
    .restart local v44    # "childState":I
    :goto_24
    move/from16 v0, v39

    move/from16 v1, v41

    move/from16 v2, v44

    goto :goto_25

    .line 1170
    .end local v25    # "widthSizeAndState":I
    .end local v27    # "useLargestChild":Z
    .end local v32    # "count":I
    .end local v39    # "weightSum":F
    .end local v40    # "widthMode":I
    .end local v41    # "alternativeMaxHeight":I
    .end local v44    # "childState":I
    .local v0, "weightSum":F
    .local v1, "alternativeMaxHeight":I
    .restart local v2    # "childState":I
    .local v4, "widthMode":I
    .restart local v6    # "delta":I
    .local v8, "widthSizeAndState":I
    .local v11, "count":I
    .restart local v12    # "child":Landroid/view/View;
    .local v14, "useLargestChild":Z
    :cond_37
    move/from16 v40, v4

    move v4, v6

    move/from16 v25, v8

    move/from16 v32, v11

    move/from16 v27, v14

    const/16 v28, -0x2

    move/from16 v6, p2

    .line 1167
    .end local v6    # "delta":I
    .end local v8    # "widthSizeAndState":I
    .end local v11    # "count":I
    .end local v12    # "child":Landroid/view/View;
    .end local v14    # "useLargestChild":Z
    .local v4, "delta":I
    .restart local v25    # "widthSizeAndState":I
    .restart local v27    # "useLargestChild":Z
    .restart local v32    # "count":I
    .restart local v40    # "widthMode":I
    :goto_25
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, p1

    move v6, v4

    move/from16 v8, v25

    move/from16 v14, v27

    move/from16 v11, v32

    move/from16 v12, v38

    move/from16 v4, v40

    goto/16 :goto_1a

    .end local v25    # "widthSizeAndState":I
    .end local v27    # "useLargestChild":Z
    .end local v32    # "count":I
    .end local v38    # "weightedMaxHeight":I
    .end local v40    # "widthMode":I
    .local v4, "widthMode":I
    .restart local v6    # "delta":I
    .restart local v8    # "widthSizeAndState":I
    .restart local v11    # "count":I
    .local v12, "weightedMaxHeight":I
    .restart local v14    # "useLargestChild":Z
    :cond_38
    move/from16 v40, v4

    move v4, v6

    move/from16 v25, v8

    move/from16 v32, v11

    move/from16 v38, v12

    move/from16 v27, v14

    move/from16 v6, p2

    .line 1251
    .end local v6    # "delta":I
    .end local v8    # "widthSizeAndState":I
    .end local v9    # "i":I
    .end local v11    # "count":I
    .end local v12    # "weightedMaxHeight":I
    .end local v14    # "useLargestChild":Z
    .local v4, "delta":I
    .restart local v25    # "widthSizeAndState":I
    .restart local v27    # "useLargestChild":Z
    .restart local v32    # "count":I
    .restart local v38    # "weightedMaxHeight":I
    .restart local v40    # "widthMode":I
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1256
    aget v5, v10, v20

    const/4 v8, -0x1

    if-ne v5, v8, :cond_39

    const/4 v5, 0x0

    aget v9, v10, v5

    if-ne v9, v8, :cond_39

    aget v5, v10, v19

    if-ne v5, v8, :cond_39

    aget v5, v10, v17

    if-eq v5, v8, :cond_3a

    .line 1260
    :cond_39
    aget v5, v10, v17

    const/4 v8, 0x0

    aget v9, v10, v8

    aget v11, v10, v20

    aget v12, v10, v19

    .line 1262
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1261
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1260
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1263
    .local v5, "ascent":I
    aget v9, v15, v17

    aget v8, v15, v8

    aget v11, v15, v20

    aget v12, v15, v19

    .line 1265
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1264
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1263
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1266
    .local v8, "descent":I
    add-int v9, v5, v8

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1268
    .end local v0    # "weightSum":F
    .end local v5    # "ascent":I
    .end local v8    # "descent":I
    :cond_3a
    move/from16 v16, v1

    .line 1295
    .end local v1    # "alternativeMaxHeight":I
    .restart local v16    # "alternativeMaxHeight":I
    :goto_26
    if-nez v18, :cond_3b

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v13, v0, :cond_3b

    .line 1296
    move/from16 v3, v16

    .line 1299
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 1302
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1304
    .end local v3    # "maxHeight":I
    .local v0, "maxHeight":I
    const/high16 v1, -0x1000000

    and-int/2addr v1, v2

    or-int v1, v25, v1

    shl-int/lit8 v3, v2, 0x10

    .line 1305
    invoke-static {v0, v6, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    .line 1304
    invoke-virtual {v7, v1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 1308
    if-eqz v24, :cond_3c

    .line 1309
    move/from16 v1, p1

    move/from16 v3, v32

    .end local v32    # "count":I
    .local v3, "count":I
    invoke-direct {v7, v3, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    goto :goto_27

    .line 1308
    .end local v3    # "count":I
    .restart local v32    # "count":I
    :cond_3c
    move/from16 v1, p1

    move/from16 v3, v32

    .line 1311
    .end local v32    # "count":I
    .restart local v3    # "count":I
    :goto_27
    return-void
.end method

.method measureNullChild(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .line 1358
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 38
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 595
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 598
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 599
    .local v2, "alternativeMaxWidth":I
    const/4 v3, 0x0

    .line 600
    .local v3, "weightedMaxWidth":I
    const/4 v4, 0x1

    .line 601
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 603
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 605
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 606
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 608
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 609
    .local v6, "matchWidth":Z
    const/4 v14, 0x0

    .line 611
    .local v14, "skippedMeasure":Z
    iget v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 612
    .local v15, "baselineChildIndex":I
    iget-boolean v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 614
    .local v10, "useLargestChild":Z
    const/16 v17, 0x0

    .line 617
    .local v17, "largestChildHeight":I
    const/16 v18, 0x0

    move/from16 v19, v6

    move v6, v2

    move v2, v0

    move/from16 v37, v4

    move v4, v3

    move/from16 v3, v17

    move/from16 v17, v14

    move/from16 v14, v18

    move/from16 v18, v37

    .end local v0    # "maxWidth":I
    .local v2, "maxWidth":I
    .local v3, "largestChildHeight":I
    .local v4, "weightedMaxWidth":I
    .local v6, "alternativeMaxWidth":I
    .local v14, "i":I
    .local v17, "skippedMeasure":Z
    .local v18, "allFillParent":Z
    .local v19, "matchWidth":Z
    :goto_0
    move/from16 v20, v4

    .end local v4    # "weightedMaxWidth":I
    .local v20, "weightedMaxWidth":I
    const/16 v0, 0x8

    const/16 v22, 0x1

    const/16 v23, 0x0

    if-ge v14, v11, :cond_10

    .line 618
    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 620
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_0

    .line 621
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v21

    add-int v0, v0, v21

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 622
    move/from16 v21, v13

    move/from16 v4, v20

    move/from16 v20, v11

    goto/16 :goto_9

    .line 625
    :cond_0
    move/from16 v26, v1

    .end local v1    # "childState":I
    .local v26, "childState":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 626
    invoke-virtual {v7, v4, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v14, v0

    .line 627
    move/from16 v21, v13

    move/from16 v4, v20

    move/from16 v1, v26

    move/from16 v20, v11

    goto/16 :goto_9

    .line 630
    :cond_1
    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 631
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v0, v1

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 634
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 636
    .local v1, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v27, v5, v0

    .line 638
    .end local v5    # "totalWeight":F
    .local v27, "totalWeight":F
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v13, v5, :cond_3

    iget v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v0, :cond_3

    iget v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-lez v0, :cond_3

    .line 642
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 643
    .local v0, "totalLength":I
    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v5, v0

    move/from16 v28, v2

    .end local v2    # "maxWidth":I
    .local v28, "maxWidth":I
    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 644
    const/16 v17, 0x1

    .line 645
    .end local v0    # "totalLength":I
    move-object v8, v1

    move/from16 v33, v6

    move/from16 v21, v13

    move/from16 v24, v20

    move/from16 v9, v26

    move/from16 v31, v28

    move v13, v3

    move-object v3, v4

    move/from16 v20, v11

    goto/16 :goto_3

    .line 638
    .end local v28    # "maxWidth":I
    .restart local v2    # "maxWidth":I
    :cond_3
    move/from16 v28, v2

    .line 646
    .end local v2    # "maxWidth":I
    .restart local v28    # "maxWidth":I
    const/high16 v0, -0x80000000

    .line 648
    .local v0, "oldHeight":I
    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v2, :cond_4

    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v2, v2, v23

    if-lez v2, :cond_4

    .line 653
    const/4 v0, 0x0

    .line 654
    const/4 v2, -0x2

    iput v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move v5, v0

    goto :goto_1

    .line 661
    :cond_4
    move v5, v0

    .end local v0    # "oldHeight":I
    .local v5, "oldHeight":I
    :goto_1
    const/16 v29, 0x0

    cmpl-float v0, v27, v23

    if-nez v0, :cond_5

    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v30, v0

    goto :goto_2

    :cond_5
    const/16 v30, 0x0

    :goto_2
    const/high16 v2, -0x80000000

    move-object/from16 v0, p0

    move-object v8, v1

    move/from16 v9, v26

    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v26    # "childState":I
    .local v8, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v9, "childState":I
    move-object v1, v4

    move/from16 v31, v28

    .end local v28    # "maxWidth":I
    .local v31, "maxWidth":I
    move v2, v14

    move/from16 v21, v13

    move v13, v3

    .end local v3    # "largestChildHeight":I
    .local v13, "largestChildHeight":I
    .local v21, "heightMode":I
    move/from16 v3, p1

    move-object/from16 v26, v4

    move/from16 v24, v20

    move/from16 v20, v11

    const/high16 v11, 0x40000000    # 2.0f

    .end local v4    # "child":Landroid/view/View;
    .end local v11    # "count":I
    .local v20, "count":I
    .local v24, "weightedMaxWidth":I
    .local v26, "child":Landroid/view/View;
    move/from16 v4, v29

    move v11, v5

    .end local v5    # "oldHeight":I
    .local v11, "oldHeight":I
    move/from16 v5, p2

    move/from16 v33, v6

    .end local v6    # "alternativeMaxWidth":I
    .local v33, "alternativeMaxWidth":I
    move/from16 v6, v30

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 665
    const/high16 v1, -0x80000000

    if-eq v11, v1, :cond_6

    .line 666
    iput v11, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 669
    :cond_6
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 670
    .local v0, "childHeight":I
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 671
    .local v1, "totalLength":I
    add-int v2, v1, v0

    iget v3, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 672
    move-object/from16 v3, v26

    .end local v26    # "child":Landroid/view/View;
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 671
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 674
    if-eqz v10, :cond_7

    .line 675
    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v13, v2

    .line 683
    .end local v0    # "childHeight":I
    .end local v1    # "totalLength":I
    .end local v11    # "oldHeight":I
    :cond_7
    :goto_3
    if-ltz v15, :cond_8

    add-int/lit8 v0, v14, 0x1

    if-ne v15, v0, :cond_8

    .line 684
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 690
    :cond_8
    if-ge v14, v15, :cond_a

    iget v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-gtz v0, :cond_9

    goto :goto_4

    .line 691
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_a
    :goto_4
    const/4 v0, 0x0

    .line 698
    .local v0, "matchWidthLocally":Z
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v12, v1, :cond_b

    iget v1, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 703
    const/16 v19, 0x1

    .line 704
    const/4 v0, 0x1

    .line 707
    :cond_b
    iget v1, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 708
    .local v1, "margin":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 709
    .local v2, "measuredWidth":I
    move/from16 v4, v31

    .end local v31    # "maxWidth":I
    .local v4, "maxWidth":I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 710
    nop

    .line 711
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    .line 710
    invoke-static {v9, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    .line 713
    .end local v9    # "childState":I
    .local v5, "childState":I
    if-eqz v18, :cond_c

    iget v6, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v6, v9, :cond_c

    const/4 v6, 0x1

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    .line 714
    .end local v18    # "allFillParent":Z
    .local v6, "allFillParent":Z
    :goto_5
    iget v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v9, v9, v23

    if-lez v9, :cond_e

    .line 719
    if-eqz v0, :cond_d

    move v9, v1

    goto :goto_6

    :cond_d
    move v9, v2

    :goto_6
    move/from16 v11, v24

    .end local v24    # "weightedMaxWidth":I
    .local v11, "weightedMaxWidth":I
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v24, v0

    move/from16 v0, v33

    .end local v11    # "weightedMaxWidth":I
    .local v9, "weightedMaxWidth":I
    goto :goto_8

    .line 722
    .end local v9    # "weightedMaxWidth":I
    .restart local v24    # "weightedMaxWidth":I
    :cond_e
    move/from16 v11, v24

    .end local v24    # "weightedMaxWidth":I
    .restart local v11    # "weightedMaxWidth":I
    if-eqz v0, :cond_f

    move v9, v1

    goto :goto_7

    :cond_f
    move v9, v2

    :goto_7
    move/from16 v24, v0

    move/from16 v0, v33

    .end local v33    # "alternativeMaxWidth":I
    .local v0, "alternativeMaxWidth":I
    .local v24, "matchWidthLocally":Z
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v11

    .line 726
    .end local v11    # "weightedMaxWidth":I
    .restart local v9    # "weightedMaxWidth":I
    :goto_8
    invoke-virtual {v7, v3, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v11

    add-int/2addr v14, v11

    move v2, v4

    move v1, v5

    move/from16 v18, v6

    move v4, v9

    move v3, v13

    move/from16 v5, v27

    move v6, v0

    .line 617
    .end local v0    # "alternativeMaxWidth":I
    .end local v8    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v9    # "weightedMaxWidth":I
    .end local v13    # "largestChildHeight":I
    .end local v24    # "matchWidthLocally":Z
    .end local v27    # "totalWeight":F
    .local v1, "childState":I
    .local v2, "maxWidth":I
    .local v3, "largestChildHeight":I
    .local v4, "weightedMaxWidth":I
    .local v5, "totalWeight":F
    .local v6, "alternativeMaxWidth":I
    .restart local v18    # "allFillParent":Z
    :goto_9
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v11, v20

    move/from16 v13, v21

    goto/16 :goto_0

    .end local v4    # "weightedMaxWidth":I
    .end local v21    # "heightMode":I
    .local v11, "count":I
    .local v13, "heightMode":I
    .local v20, "weightedMaxWidth":I
    :cond_10
    move v9, v1

    move v4, v2

    move v0, v6

    move/from16 v21, v13

    const/high16 v1, -0x80000000

    const/16 v2, 0x8

    move v13, v3

    move/from16 v37, v20

    move/from16 v20, v11

    move/from16 v11, v37

    .line 729
    .end local v1    # "childState":I
    .end local v2    # "maxWidth":I
    .end local v3    # "largestChildHeight":I
    .end local v6    # "alternativeMaxWidth":I
    .end local v14    # "i":I
    .restart local v0    # "alternativeMaxWidth":I
    .local v4, "maxWidth":I
    .local v9, "childState":I
    .local v11, "weightedMaxWidth":I
    .local v13, "largestChildHeight":I
    .local v20, "count":I
    .restart local v21    # "heightMode":I
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_11

    move/from16 v3, v20

    .end local v20    # "count":I
    .local v3, "count":I
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 730
    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v6, v8

    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_a

    .line 729
    .end local v3    # "count":I
    .restart local v20    # "count":I
    :cond_11
    move/from16 v3, v20

    .line 733
    .end local v20    # "count":I
    .restart local v3    # "count":I
    :cond_12
    :goto_a
    if-eqz v10, :cond_17

    move/from16 v6, v21

    .end local v21    # "heightMode":I
    .local v6, "heightMode":I
    if-eq v6, v1, :cond_13

    if-nez v6, :cond_18

    .line 735
    :cond_13
    const/4 v1, 0x0

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 737
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v3, :cond_16

    .line 738
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 740
    .local v8, "child":Landroid/view/View;
    if-nez v8, :cond_14

    .line 741
    iget v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v20

    add-int v14, v14, v20

    iput v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 742
    move/from16 v24, v1

    goto :goto_c

    .line 745
    :cond_14
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v2, :cond_15

    .line 746
    invoke-virtual {v7, v8, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v14

    add-int/2addr v1, v14

    .line 747
    goto :goto_d

    .line 750
    :cond_15
    nop

    .line 751
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 753
    .local v14, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 754
    .local v2, "totalLength":I
    add-int v21, v2, v13

    move/from16 v24, v1

    .end local v1    # "i":I
    .local v24, "i":I
    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v21, v21, v1

    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v21, v21, v1

    .line 755
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v1, v21, v1

    .line 754
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 737
    .end local v2    # "totalLength":I
    .end local v8    # "child":Landroid/view/View;
    .end local v14    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v24    # "i":I
    .restart local v1    # "i":I
    :goto_c
    move/from16 v1, v24

    :goto_d
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    goto :goto_b

    :cond_16
    move/from16 v24, v1

    .end local v1    # "i":I
    .restart local v24    # "i":I
    goto :goto_e

    .line 733
    .end local v6    # "heightMode":I
    .end local v24    # "i":I
    .restart local v21    # "heightMode":I
    :cond_17
    move/from16 v6, v21

    .line 760
    .end local v21    # "heightMode":I
    .restart local v6    # "heightMode":I
    :cond_18
    :goto_e
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v8

    add-int/2addr v2, v8

    add-int/2addr v1, v2

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 762
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 765
    .local v1, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 768
    move/from16 v2, p2

    const/4 v8, 0x0

    invoke-static {v1, v2, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v14

    .line 769
    .local v14, "heightSizeAndState":I
    const v8, 0xffffff

    and-int v1, v14, v8

    .line 774
    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v8, v1, v8

    .line 775
    .local v8, "delta":I
    if-nez v17, :cond_20

    if-eqz v8, :cond_19

    cmpl-float v21, v5, v23

    if-lez v21, :cond_19

    move/from16 v21, v1

    move/from16 v31, v4

    move/from16 v24, v5

    move/from16 v26, v8

    goto/16 :goto_12

    .line 847
    :cond_19
    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 853
    if-eqz v10, :cond_1f

    move/from16 v16, v0

    const/high16 v0, 0x40000000    # 2.0f

    .end local v0    # "alternativeMaxWidth":I
    .local v16, "alternativeMaxWidth":I
    if-eq v6, v0, :cond_1e

    .line 854
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v3, :cond_1d

    .line 855
    move/from16 v21, v1

    .end local v1    # "heightSize":I
    .local v21, "heightSize":I
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 857
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1c

    move/from16 v31, v4

    .end local v4    # "maxWidth":I
    .restart local v31    # "maxWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v24, v5

    const/16 v5, 0x8

    .end local v5    # "totalWeight":F
    .local v24, "totalWeight":F
    if-ne v4, v5, :cond_1a

    .line 858
    move/from16 v26, v8

    goto :goto_10

    .line 861
    :cond_1a
    nop

    .line 862
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 864
    .local v4, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 865
    .local v5, "childExtra":F
    cmpl-float v22, v5, v23

    if-lez v22, :cond_1b

    .line 866
    nop

    .line 867
    move-object/from16 v22, v4

    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v22, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move/from16 v25, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "childExtra":F
    .local v25, "childExtra":F
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 869
    move/from16 v26, v8

    .end local v8    # "delta":I
    .local v26, "delta":I
    invoke-static {v13, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 866
    invoke-virtual {v1, v4, v8}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 865
    .end local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v25    # "childExtra":F
    .end local v26    # "delta":I
    .restart local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v5    # "childExtra":F
    .restart local v8    # "delta":I
    :cond_1b
    move-object/from16 v22, v4

    move/from16 v25, v5

    move/from16 v26, v8

    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "childExtra":F
    .end local v8    # "delta":I
    .restart local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v25    # "childExtra":F
    .restart local v26    # "delta":I
    goto :goto_10

    .line 857
    .end local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v24    # "totalWeight":F
    .end local v25    # "childExtra":F
    .end local v26    # "delta":I
    .end local v31    # "maxWidth":I
    .local v4, "maxWidth":I
    .local v5, "totalWeight":F
    .restart local v8    # "delta":I
    :cond_1c
    move/from16 v31, v4

    move/from16 v24, v5

    move/from16 v26, v8

    .line 854
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "maxWidth":I
    .end local v5    # "totalWeight":F
    .end local v8    # "delta":I
    .restart local v24    # "totalWeight":F
    .restart local v26    # "delta":I
    .restart local v31    # "maxWidth":I
    :goto_10
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v21

    move/from16 v5, v24

    move/from16 v8, v26

    move/from16 v4, v31

    goto :goto_f

    .end local v21    # "heightSize":I
    .end local v24    # "totalWeight":F
    .end local v26    # "delta":I
    .end local v31    # "maxWidth":I
    .local v1, "heightSize":I
    .restart local v4    # "maxWidth":I
    .restart local v5    # "totalWeight":F
    .restart local v8    # "delta":I
    :cond_1d
    move/from16 v21, v1

    move/from16 v31, v4

    move/from16 v24, v5

    move/from16 v26, v8

    .end local v1    # "heightSize":I
    .end local v4    # "maxWidth":I
    .end local v5    # "totalWeight":F
    .end local v8    # "delta":I
    .restart local v21    # "heightSize":I
    .restart local v24    # "totalWeight":F
    .restart local v26    # "delta":I
    .restart local v31    # "maxWidth":I
    goto :goto_11

    .line 853
    .end local v0    # "i":I
    .end local v21    # "heightSize":I
    .end local v24    # "totalWeight":F
    .end local v26    # "delta":I
    .end local v31    # "maxWidth":I
    .restart local v1    # "heightSize":I
    .restart local v4    # "maxWidth":I
    .restart local v5    # "totalWeight":F
    .restart local v8    # "delta":I
    :cond_1e
    move/from16 v21, v1

    move/from16 v31, v4

    move/from16 v24, v5

    move/from16 v26, v8

    .end local v1    # "heightSize":I
    .end local v4    # "maxWidth":I
    .end local v5    # "totalWeight":F
    .end local v8    # "delta":I
    .restart local v21    # "heightSize":I
    .restart local v24    # "totalWeight":F
    .restart local v26    # "delta":I
    .restart local v31    # "maxWidth":I
    goto :goto_11

    .end local v16    # "alternativeMaxWidth":I
    .end local v21    # "heightSize":I
    .end local v24    # "totalWeight":F
    .end local v26    # "delta":I
    .end local v31    # "maxWidth":I
    .local v0, "alternativeMaxWidth":I
    .restart local v1    # "heightSize":I
    .restart local v4    # "maxWidth":I
    .restart local v5    # "totalWeight":F
    .restart local v8    # "delta":I
    :cond_1f
    move/from16 v16, v0

    move/from16 v21, v1

    move/from16 v31, v4

    move/from16 v24, v5

    move/from16 v26, v8

    .line 876
    .end local v0    # "alternativeMaxWidth":I
    .end local v1    # "heightSize":I
    .end local v4    # "maxWidth":I
    .end local v5    # "totalWeight":F
    .end local v8    # "delta":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v21    # "heightSize":I
    .restart local v24    # "totalWeight":F
    .restart local v26    # "delta":I
    .restart local v31    # "maxWidth":I
    :goto_11
    move/from16 v34, v6

    move/from16 v27, v11

    move/from16 v29, v13

    move/from16 v30, v15

    move/from16 v4, v26

    move/from16 v13, p1

    move/from16 v26, v10

    goto/16 :goto_1d

    .line 775
    .end local v16    # "alternativeMaxWidth":I
    .end local v21    # "heightSize":I
    .end local v24    # "totalWeight":F
    .end local v26    # "delta":I
    .end local v31    # "maxWidth":I
    .restart local v0    # "alternativeMaxWidth":I
    .restart local v1    # "heightSize":I
    .restart local v4    # "maxWidth":I
    .restart local v5    # "totalWeight":F
    .restart local v8    # "delta":I
    :cond_20
    move/from16 v21, v1

    move/from16 v31, v4

    move/from16 v24, v5

    move/from16 v26, v8

    .line 776
    .end local v1    # "heightSize":I
    .end local v4    # "maxWidth":I
    .end local v5    # "totalWeight":F
    .end local v8    # "delta":I
    .restart local v21    # "heightSize":I
    .restart local v24    # "totalWeight":F
    .restart local v26    # "delta":I
    .restart local v31    # "maxWidth":I
    :goto_12
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v1, v5, v23

    if-lez v1, :cond_21

    goto :goto_13

    :cond_21
    move/from16 v5, v24

    :goto_13
    move v1, v5

    .line 778
    .local v1, "weightSum":F
    const/4 v4, 0x0

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 780
    const/4 v5, 0x0

    move v8, v0

    move/from16 v4, v26

    move/from16 v0, v31

    .end local v26    # "delta":I
    .end local v31    # "maxWidth":I
    .local v0, "maxWidth":I
    .local v4, "delta":I
    .local v5, "i":I
    .local v8, "alternativeMaxWidth":I
    :goto_14
    if-ge v5, v3, :cond_2c

    .line 781
    move/from16 v26, v10

    .end local v10    # "useLargestChild":Z
    .local v26, "useLargestChild":Z
    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 783
    .local v10, "child":Landroid/view/View;
    move/from16 v27, v11

    .end local v11    # "weightedMaxWidth":I
    .local v27, "weightedMaxWidth":I
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    move/from16 v29, v13

    const/16 v13, 0x8

    .end local v13    # "largestChildHeight":I
    .local v29, "largestChildHeight":I
    if-ne v11, v13, :cond_22

    .line 784
    move/from16 v13, p1

    move/from16 v34, v6

    move/from16 v30, v15

    goto/16 :goto_1c

    .line 787
    :cond_22
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 789
    .local v11, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v13, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 790
    .local v13, "childExtra":F
    cmpl-float v30, v13, v23

    if-lez v30, :cond_27

    .line 792
    move/from16 v30, v15

    .end local v15    # "baselineChildIndex":I
    .local v30, "baselineChildIndex":I
    int-to-float v15, v4

    mul-float v15, v15, v13

    div-float/2addr v15, v1

    float-to-int v15, v15

    .line 793
    .local v15, "share":I
    sub-float/2addr v1, v13

    .line 794
    sub-int/2addr v4, v15

    .line 796
    nop

    .line 797
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v32, v1

    .end local v1    # "weightSum":F
    .local v32, "weightSum":F
    iget v1, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v31, v31, v1

    iget v1, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v1, v31, v1

    move/from16 v31, v4

    .end local v4    # "delta":I
    .local v31, "delta":I
    iget v4, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 796
    move/from16 v33, v13

    move/from16 v13, p1

    .end local v13    # "childExtra":F
    .local v33, "childExtra":F
    invoke-static {v13, v1, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v1

    .line 802
    .local v1, "childWidthMeasureSpec":I
    iget v4, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v4, :cond_25

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v6, v4, :cond_23

    move/from16 v34, v6

    goto :goto_16

    .line 815
    :cond_23
    if-lez v15, :cond_24

    move v4, v15

    goto :goto_15

    :cond_24
    const/4 v4, 0x0

    .line 816
    :goto_15
    move/from16 v34, v6

    const/high16 v6, 0x40000000    # 2.0f

    .end local v6    # "heightMode":I
    .local v34, "heightMode":I
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 815
    invoke-virtual {v10, v1, v4}, Landroid/view/View;->measure(II)V

    move/from16 v35, v15

    goto :goto_17

    .line 802
    .end local v34    # "heightMode":I
    .restart local v6    # "heightMode":I
    :cond_25
    move/from16 v34, v6

    .line 805
    .end local v6    # "heightMode":I
    .restart local v34    # "heightMode":I
    :goto_16
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v15

    .line 806
    .local v4, "childHeight":I
    if-gez v4, :cond_26

    .line 807
    const/4 v4, 0x0

    .line 810
    :cond_26
    nop

    .line 811
    move/from16 v35, v15

    const/high16 v6, 0x40000000    # 2.0f

    .end local v15    # "share":I
    .local v35, "share":I
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 810
    invoke-virtual {v10, v1, v15}, Landroid/view/View;->measure(II)V

    .line 812
    .end local v4    # "childHeight":I
    nop

    .line 821
    :goto_17
    nop

    .line 822
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    and-int/lit16 v4, v4, -0x100

    .line 821
    invoke-static {v9, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    goto :goto_18

    .line 790
    .end local v30    # "baselineChildIndex":I
    .end local v31    # "delta":I
    .end local v32    # "weightSum":F
    .end local v33    # "childExtra":F
    .end local v34    # "heightMode":I
    .end local v35    # "share":I
    .local v1, "weightSum":F
    .local v4, "delta":I
    .restart local v6    # "heightMode":I
    .restart local v13    # "childExtra":F
    .local v15, "baselineChildIndex":I
    :cond_27
    move/from16 v34, v6

    move/from16 v33, v13

    move/from16 v30, v15

    move/from16 v13, p1

    .end local v6    # "heightMode":I
    .end local v13    # "childExtra":F
    .end local v15    # "baselineChildIndex":I
    .restart local v30    # "baselineChildIndex":I
    .restart local v33    # "childExtra":F
    .restart local v34    # "heightMode":I
    move/from16 v32, v1

    move/from16 v31, v4

    .line 826
    .end local v1    # "weightSum":F
    .end local v4    # "delta":I
    .restart local v31    # "delta":I
    .restart local v32    # "weightSum":F
    :goto_18
    iget v1, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v4, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v4

    .line 827
    .local v1, "margin":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    .line 828
    .local v4, "measuredWidth":I
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 830
    const/high16 v6, 0x40000000    # 2.0f

    if-eq v12, v6, :cond_28

    iget v6, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v6, v15, :cond_28

    const/4 v6, 0x1

    goto :goto_19

    :cond_28
    const/4 v6, 0x0

    .line 833
    .local v6, "matchWidthLocally":Z
    :goto_19
    if-eqz v6, :cond_29

    move v15, v1

    goto :goto_1a

    :cond_29
    move v15, v4

    :goto_1a
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 836
    if-eqz v18, :cond_2a

    iget v15, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v35, v0

    const/4 v0, -0x1

    .end local v0    # "maxWidth":I
    .local v35, "maxWidth":I
    if-ne v15, v0, :cond_2b

    const/4 v15, 0x1

    goto :goto_1b

    .end local v35    # "maxWidth":I
    .restart local v0    # "maxWidth":I
    :cond_2a
    move/from16 v35, v0

    const/4 v0, -0x1

    .end local v0    # "maxWidth":I
    .restart local v35    # "maxWidth":I
    :cond_2b
    const/4 v15, 0x0

    .line 838
    .end local v18    # "allFillParent":Z
    .local v15, "allFillParent":Z
    :goto_1b
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 839
    .local v0, "totalLength":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v18, v0, v18

    move/from16 v36, v1

    .end local v1    # "margin":I
    .local v36, "margin":I
    iget v1, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v18, v18, v1

    iget v1, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v18, v18, v1

    .line 840
    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v1, v18, v1

    .line 839
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v18, v15

    move/from16 v4, v31

    move/from16 v1, v32

    move/from16 v0, v35

    .line 780
    .end local v6    # "matchWidthLocally":Z
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v15    # "allFillParent":Z
    .end local v31    # "delta":I
    .end local v32    # "weightSum":F
    .end local v33    # "childExtra":F
    .end local v35    # "maxWidth":I
    .end local v36    # "margin":I
    .local v0, "maxWidth":I
    .local v1, "weightSum":F
    .local v4, "delta":I
    .restart local v18    # "allFillParent":Z
    :goto_1c
    add-int/lit8 v5, v5, 0x1

    move/from16 v10, v26

    move/from16 v11, v27

    move/from16 v13, v29

    move/from16 v15, v30

    move/from16 v6, v34

    goto/16 :goto_14

    .end local v26    # "useLargestChild":Z
    .end local v27    # "weightedMaxWidth":I
    .end local v29    # "largestChildHeight":I
    .end local v30    # "baselineChildIndex":I
    .end local v34    # "heightMode":I
    .local v6, "heightMode":I
    .local v10, "useLargestChild":Z
    .local v11, "weightedMaxWidth":I
    .local v13, "largestChildHeight":I
    .local v15, "baselineChildIndex":I
    :cond_2c
    move/from16 v31, v0

    move/from16 v34, v6

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v29, v13

    move/from16 v30, v15

    move/from16 v13, p1

    .line 844
    .end local v0    # "maxWidth":I
    .end local v5    # "i":I
    .end local v6    # "heightMode":I
    .end local v10    # "useLargestChild":Z
    .end local v11    # "weightedMaxWidth":I
    .end local v13    # "largestChildHeight":I
    .end local v15    # "baselineChildIndex":I
    .restart local v26    # "useLargestChild":Z
    .restart local v27    # "weightedMaxWidth":I
    .restart local v29    # "largestChildHeight":I
    .restart local v30    # "baselineChildIndex":I
    .local v31, "maxWidth":I
    .restart local v34    # "heightMode":I
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 846
    .end local v1    # "weightSum":F
    move/from16 v16, v8

    .line 876
    .end local v8    # "alternativeMaxWidth":I
    .restart local v16    # "alternativeMaxWidth":I
    :goto_1d
    if-nez v18, :cond_2d

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_2d

    .line 877
    move/from16 v31, v16

    .line 880
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int v0, v31, v0

    .line 883
    .end local v31    # "maxWidth":I
    .restart local v0    # "maxWidth":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 885
    invoke-static {v0, v13, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {v7, v1, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 888
    if-eqz v19, :cond_2e

    .line 889
    invoke-direct {v7, v3, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    .line 891
    :cond_2e
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 283
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 284
    return-void

    .line 287
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 288
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 292
    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1756
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1757
    const-class v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1758
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1762
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1763
    const-class v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1764
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1406
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1407
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    goto :goto_0

    .line 1409
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    .line 1411
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 550
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 551
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureVertical(II)V

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureHorizontal(II)V

    .line 555
    :goto_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .param p1, "baselineAligned"    # Z

    .line 392
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 393
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .param p1, "i"    # I

    .line 488
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 492
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 493
    return-void

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 232
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 236
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 238
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_0

    .line 240
    :cond_1
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 241
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 243
    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 244
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 245
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 257
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 258
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 1679
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 1680
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1681
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1684
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 1685
    or-int/lit8 p1, p1, 0x30

    .line 1688
    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1689
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1691
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I

    .line 1704
    const v0, 0x800007

    and-int v1, p1, v0

    .line 1705
    .local v1, "gravity":I
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_0

    .line 1706
    const v0, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1707
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1709
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 418
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 419
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 1654
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1655
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 1656
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1658
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .param p1, "showDividers"    # I

    .line 195
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 196
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 198
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 199
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 3
    .param p1, "verticalGravity"    # I

    .line 1712
    and-int/lit8 v0, p1, 0x70

    .line 1713
    .local v0, "gravity":I
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v0, :cond_0

    .line 1714
    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1715
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1717
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .param p1, "weightSum"    # F

    .line 545
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 546
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 203
    const/4 v0, 0x0

    return v0
.end method
