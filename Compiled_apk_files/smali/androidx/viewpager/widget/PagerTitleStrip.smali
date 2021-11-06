.class public Landroidx/viewpager/widget/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "PagerTitleStrip.java"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/PagerTitleStrip$PageListener;,
        Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final SIDE_ALPHA:F = 0.6f

.field private static final TEXT_ATTRS:[I

.field private static final TEXT_SPACING:I = 0x10


# instance fields
.field mCurrText:Landroid/widget/TextView;

.field private mGravity:I

.field private mLastKnownCurrentPage:I

.field mLastKnownPositionOffset:F

.field mNextText:Landroid/widget/TextView;

.field private mNonPrimaryAlpha:I

.field private final mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

.field mPager:Landroidx/viewpager/widget/ViewPager;

.field mPrevText:Landroid/widget/TextView;

.field private mScaledTextSpacing:I

.field mTextColor:I

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z

.field private mWatchingAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/viewpager/widget/PagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/viewpager/widget/PagerTitleStrip;->ATTRS:[I

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101038c

    aput v2, v0, v1

    sput-object v0, Landroidx/viewpager/widget/PagerTitleStrip;->TEXT_ATTRS:[I

    return-void

    :array_0
    .array-data 4
        0x1010034
        0x1010095
        0x1010098
        0x10100af
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager/widget/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 62
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 69
    new-instance v0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;-><init>(Landroidx/viewpager/widget/PagerTitleStrip;)V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    .line 115
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 116
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 117
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 119
    sget-object v0, Landroidx/viewpager/widget/PagerTitleStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 121
    .local v2, "textAppearance":I
    if-eqz v2, :cond_0

    .line 122
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 123
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 124
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 126
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 127
    .local v3, "textSize":I
    if-eqz v3, :cond_1

    .line 128
    int-to-float v4, v3

    invoke-virtual {p0, v1, v4}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextSize(IF)V

    .line 130
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 132
    .local v4, "textColor":I
    iget-object v5, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v5, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v5, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    .end local v4    # "textColor":I
    :cond_2
    const/4 v4, 0x3

    const/16 v5, 0x50

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mGravity:I

    .line 137
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    iget-object v4, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iput v4, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mTextColor:I

    .line 140
    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    .line 142
    iget-object v4, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 143
    iget-object v4, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 144
    iget-object v4, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 146
    const/4 v4, 0x0

    .line 147
    .local v4, "allCaps":Z
    if-eqz v2, :cond_3

    .line 148
    sget-object v5, Landroidx/viewpager/widget/PagerTitleStrip;->TEXT_ATTRS:[I

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 149
    .local v5, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v5, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 150
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    .end local v5    # "ta":Landroid/content/res/TypedArray;
    :cond_3
    if-eqz v4, :cond_4

    .line 154
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/viewpager/widget/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 155
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/viewpager/widget/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 156
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/viewpager/widget/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    goto :goto_0

    .line 158
    :cond_4
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 159
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 160
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 163
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 164
    .local v1, "density":F
    const/high16 v5, 0x41800000    # 16.0f

    mul-float v5, v5, v1

    float-to-int v5, v5

    iput v5, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    .line 165
    return-void
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "text"    # Landroid/widget/TextView;

    .line 105
    new-instance v0, Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 106
    return-void
.end method


# virtual methods
.method getMinHeight()I
    .locals 2

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "minHeight":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 465
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 468
    :cond_0
    return v0
.end method

.method public getTextSpacing()I
    .locals 1

    .line 181
    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 239
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 241
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 242
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_1

    .line 247
    move-object v1, v0

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 248
    .local v1, "pager":Landroidx/viewpager/widget/ViewPager;
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    .line 250
    .local v2, "adapter":Landroidx/viewpager/widget/PagerAdapter;
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setInternalPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 251
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 252
    iput-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 253
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/PagerAdapter;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v3, v2}, Landroidx/viewpager/widget/PagerTitleStrip;->updateAdapter(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    .line 254
    return-void

    .line 243
    .end local v1    # "pager":Landroidx/viewpager/widget/ViewPager;
    .end local v2    # "adapter":Landroidx/viewpager/widget/PagerAdapter;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 258
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 259
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/PagerTitleStrip;->updateAdapter(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    .line 261
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setInternalPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 262
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 263
    iput-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 265
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 456
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 457
    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 458
    .local v0, "offset":F
    :goto_0
    iget v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 460
    .end local v0    # "offset":F
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 420
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 421
    .local v0, "widthMode":I
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    .line 425
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 426
    .local v2, "heightPadding":I
    const/4 v3, -0x2

    invoke-static {p2, v2, v3}, Landroidx/viewpager/widget/PagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v4

    .line 429
    .local v4, "childHeightSpec":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 430
    .local v5, "widthSize":I
    int-to-float v6, v5

    const v7, 0x3e4ccccd    # 0.2f

    mul-float v6, v6, v7

    float-to-int v6, v6

    .line 431
    .local v6, "widthPadding":I
    invoke-static {p1, v6, v3}, Landroidx/viewpager/widget/PagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v3

    .line 434
    .local v3, "childWidthSpec":I
    iget-object v7, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 435
    iget-object v7, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 436
    iget-object v7, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 439
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 440
    .local v7, "heightMode":I
    if-ne v7, v1, :cond_0

    .line 441
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .local v1, "height":I
    goto :goto_0

    .line 443
    .end local v1    # "height":I
    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 444
    .local v1, "textHeight":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getMinHeight()I

    move-result v8

    .line 445
    .local v8, "minHeight":I
    add-int v9, v1, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 448
    .end local v8    # "minHeight":I
    .local v1, "height":I
    :goto_0
    iget-object v8, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v8

    .line 449
    .local v8, "childState":I
    shl-int/lit8 v9, v8, 0x10

    invoke-static {v1, p2, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v9

    .line 451
    .local v9, "measuredHeight":I
    invoke-virtual {p0, v5, v9}, Landroidx/viewpager/widget/PagerTitleStrip;->setMeasuredDimension(II)V

    .line 452
    return-void

    .line 422
    .end local v1    # "height":I
    .end local v2    # "heightPadding":I
    .end local v3    # "childWidthSpec":I
    .end local v4    # "childHeightSpec":I
    .end local v5    # "widthSize":I
    .end local v6    # "widthPadding":I
    .end local v7    # "heightMode":I
    .end local v8    # "childState":I
    .end local v9    # "measuredHeight":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must measure with an exact width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestLayout()V
    .locals 1

    .line 308
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingText:Z

    if-nez v0, :cond_0

    .line 309
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 311
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 233
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mGravity:I

    .line 234
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    .line 235
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .line 190
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNonPrimaryAlpha:I

    .line 191
    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mTextColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 192
    .local v0, "transparentColor":I
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    return-void
.end method

.method public setTextColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 203
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mTextColor:I

    .line 204
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mTextColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 206
    .local v0, "transparentColor":I
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 221
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 222
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 223
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 224
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 0
    .param p1, "spacingPixels"    # I

    .line 173
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    .line 174
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    .line 175
    return-void
.end method

.method updateAdapter(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 2
    .param p1, "oldAdapter"    # Landroidx/viewpager/widget/PagerAdapter;
    .param p2, "newAdapter"    # Landroidx/viewpager/widget/PagerAdapter;

    .line 314
    if-eqz p1, :cond_0

    .line 315
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 318
    :cond_0
    if-eqz p2, :cond_1

    .line 319
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPageListener:Landroidx/viewpager/widget/PagerTitleStrip$PageListener;

    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 320
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 322
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_2

    .line 323
    const/4 v1, -0x1

    iput v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 324
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 325
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroidx/viewpager/widget/PagerTitleStrip;->updateText(ILandroidx/viewpager/widget/PagerAdapter;)V

    .line 326
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    .line 328
    :cond_2
    return-void
.end method

.method updateText(ILandroidx/viewpager/widget/PagerAdapter;)V
    .locals 10
    .param p1, "currentItem"    # I
    .param p2, "adapter"    # Landroidx/viewpager/widget/PagerAdapter;

    .line 268
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 269
    .local v1, "itemCount":I
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingText:Z

    .line 271
    const/4 v3, 0x0

    .line 272
    .local v3, "text":Ljava/lang/CharSequence;
    if-lt p1, v2, :cond_1

    if-eqz p2, :cond_1

    .line 273
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p2, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 275
    :cond_1
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    if-ge p1, v1, :cond_2

    .line 278
    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 277
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    const/4 v2, 0x0

    .line 281
    .end local v3    # "text":Ljava/lang/CharSequence;
    .local v2, "text":Ljava/lang/CharSequence;
    add-int/lit8 v3, p1, 0x1

    if-ge v3, v1, :cond_3

    if-eqz p2, :cond_3

    .line 282
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 284
    :cond_3
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 288
    .local v3, "width":I
    int-to-float v4, v3

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 289
    .local v4, "maxWidth":I
    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 290
    .local v6, "childWidthSpec":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 291
    .local v7, "childHeight":I
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 292
    .local v8, "maxHeight":I
    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 293
    .local v5, "childHeightSpec":I
    iget-object v9, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v9, v6, v5}, Landroid/widget/TextView;->measure(II)V

    .line 294
    iget-object v9, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v9, v6, v5}, Landroid/widget/TextView;->measure(II)V

    .line 295
    iget-object v9, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v9, v6, v5}, Landroid/widget/TextView;->measure(II)V

    .line 297
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 299
    iget-boolean v9, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingPositions:Z

    if-nez v9, :cond_4

    .line 300
    iget v9, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    invoke-virtual {p0, p1, v9, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 303
    :cond_4
    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingText:Z

    .line 304
    return-void
.end method

.method updateTextPositions(IFZ)V
    .locals 42
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "force"    # Z

    .line 331
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownCurrentPage:I

    if-eq v1, v3, :cond_0

    .line 332
    iget-object v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroidx/viewpager/widget/PagerTitleStrip;->updateText(ILandroidx/viewpager/widget/PagerAdapter;)V

    goto :goto_0

    .line 333
    :cond_0
    if-nez p3, :cond_1

    iget v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    .line 334
    return-void

    .line 337
    :cond_1
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingPositions:Z

    .line 339
    iget-object v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 340
    .local v3, "prevWidth":I
    iget-object v4, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 341
    .local v4, "currWidth":I
    iget-object v5, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 342
    .local v5, "nextWidth":I
    div-int/lit8 v6, v4, 0x2

    .line 344
    .local v6, "halfCurrWidth":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getWidth()I

    move-result v7

    .line 345
    .local v7, "stripWidth":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getHeight()I

    move-result v8

    .line 346
    .local v8, "stripHeight":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingLeft()I

    move-result v9

    .line 347
    .local v9, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingRight()I

    move-result v10

    .line 348
    .local v10, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingTop()I

    move-result v11

    .line 349
    .local v11, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getPaddingBottom()I

    move-result v12

    .line 350
    .local v12, "paddingBottom":I
    add-int v13, v9, v6

    .line 351
    .local v13, "textPaddedLeft":I
    add-int v14, v10, v6

    .line 352
    .local v14, "textPaddedRight":I
    sub-int v15, v7, v13

    sub-int/2addr v15, v14

    .line 354
    .local v15, "contentWidth":I
    const/high16 v16, 0x3f000000    # 0.5f

    add-float v16, v2, v16

    .line 355
    .local v16, "currOffset":F
    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v18, v16, v17

    if-lez v18, :cond_2

    .line 356
    sub-float v16, v16, v17

    .line 358
    :cond_2
    sub-int v17, v7, v14

    int-to-float v1, v15

    mul-float v1, v1, v16

    float-to-int v1, v1

    sub-int v17, v17, v1

    .line 359
    .local v17, "currCenter":I
    div-int/lit8 v1, v4, 0x2

    sub-int v1, v17, v1

    .line 360
    .local v1, "currLeft":I
    move/from16 v18, v6

    .end local v6    # "halfCurrWidth":I
    .local v18, "halfCurrWidth":I
    add-int v6, v1, v4

    .line 362
    .local v6, "currRight":I
    move/from16 v19, v4

    .end local v4    # "currWidth":I
    .local v19, "currWidth":I
    iget-object v4, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBaseline()I

    move-result v4

    .line 363
    .local v4, "prevBaseline":I
    move/from16 v20, v13

    .end local v13    # "textPaddedLeft":I
    .local v20, "textPaddedLeft":I
    iget-object v13, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getBaseline()I

    move-result v13

    .line 364
    .local v13, "currBaseline":I
    move/from16 v21, v14

    .end local v14    # "textPaddedRight":I
    .local v21, "textPaddedRight":I
    iget-object v14, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getBaseline()I

    move-result v14

    .line 365
    .local v14, "nextBaseline":I
    move/from16 v22, v15

    .end local v15    # "contentWidth":I
    .local v22, "contentWidth":I
    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 366
    .local v15, "maxBaseline":I
    sub-int v23, v15, v4

    .line 367
    .local v23, "prevTopOffset":I
    sub-int v24, v15, v13

    .line 368
    .local v24, "currTopOffset":I
    sub-int v25, v15, v14

    .line 369
    .local v25, "nextTopOffset":I
    move/from16 v26, v4

    .end local v4    # "prevBaseline":I
    .local v26, "prevBaseline":I
    iget-object v4, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int v4, v23, v4

    .line 370
    .local v4, "alignedPrevHeight":I
    move/from16 v27, v13

    .end local v13    # "currBaseline":I
    .local v27, "currBaseline":I
    iget-object v13, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    add-int v13, v24, v13

    .line 371
    .local v13, "alignedCurrHeight":I
    move/from16 v28, v14

    .end local v14    # "nextBaseline":I
    .local v28, "nextBaseline":I
    iget-object v14, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    add-int v14, v25, v14

    .line 372
    .local v14, "alignedNextHeight":I
    move/from16 v29, v15

    .end local v15    # "maxBaseline":I
    .local v29, "maxBaseline":I
    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 375
    .local v15, "maxTextHeight":I
    move/from16 v30, v4

    .end local v4    # "alignedPrevHeight":I
    .local v30, "alignedPrevHeight":I
    iget v4, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    .line 380
    .local v4, "vgrav":I
    move/from16 v31, v13

    .end local v13    # "alignedCurrHeight":I
    .local v31, "alignedCurrHeight":I
    const/16 v13, 0x10

    move/from16 v32, v14

    .end local v14    # "alignedNextHeight":I
    .local v32, "alignedNextHeight":I
    const/4 v14, 0x0

    if-eq v4, v13, :cond_4

    const/16 v13, 0x50

    if-eq v4, v13, :cond_3

    .line 383
    add-int v13, v11, v23

    .line 384
    .local v13, "prevTop":I
    add-int v33, v11, v24

    .line 385
    .local v33, "currTop":I
    add-int v34, v11, v25

    .line 386
    .local v34, "nextTop":I
    move v14, v13

    move/from16 v13, v33

    move/from16 v41, v34

    move/from16 v34, v4

    move/from16 v4, v41

    goto :goto_1

    .line 380
    .end local v13    # "prevTop":I
    .end local v33    # "currTop":I
    .end local v34    # "nextTop":I
    :cond_3
    move v13, v14

    .local v13, "paddedHeight":I
    move/from16 v33, v14

    .local v33, "centeredTop":I
    move/from16 v34, v14

    .local v34, "prevTop":I
    move/from16 v35, v14

    .local v35, "currTop":I
    move/from16 v36, v14

    .line 395
    .local v36, "nextTop":I
    sub-int v37, v8, v12

    sub-int v37, v37, v15

    .line 396
    .local v37, "bottomGravTop":I
    add-int v34, v37, v23

    .line 397
    add-int v35, v37, v24

    .line 398
    add-int v36, v37, v25

    move/from16 v14, v34

    move/from16 v13, v35

    move/from16 v34, v4

    move/from16 v4, v36

    goto :goto_1

    .line 380
    .end local v13    # "paddedHeight":I
    .end local v33    # "centeredTop":I
    .end local v34    # "prevTop":I
    .end local v35    # "currTop":I
    .end local v36    # "nextTop":I
    .end local v37    # "bottomGravTop":I
    :cond_4
    move v13, v14

    .local v13, "prevTop":I
    move/from16 v33, v14

    .local v33, "currTop":I
    move/from16 v34, v14

    .line 388
    .local v34, "nextTop":I
    sub-int v35, v8, v11

    sub-int v35, v35, v12

    .line 389
    .local v35, "paddedHeight":I
    sub-int v36, v35, v15

    div-int/lit8 v36, v36, 0x2

    .line 390
    .local v36, "centeredTop":I
    add-int v13, v36, v23

    .line 391
    add-int v33, v36, v24

    .line 392
    add-int v34, v36, v25

    .line 393
    move v14, v13

    move/from16 v13, v33

    move/from16 v41, v34

    move/from16 v34, v4

    move/from16 v4, v41

    .line 402
    .end local v33    # "currTop":I
    .end local v35    # "paddedHeight":I
    .end local v36    # "centeredTop":I
    .local v4, "nextTop":I
    .local v13, "currTop":I
    .local v14, "prevTop":I
    .local v34, "vgrav":I
    :goto_1
    move/from16 v35, v8

    .end local v8    # "stripHeight":I
    .local v35, "stripHeight":I
    iget-object v8, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 403
    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v36

    move/from16 v37, v11

    .end local v11    # "paddingTop":I
    .local v37, "paddingTop":I
    add-int v11, v13, v36

    .line 402
    invoke-virtual {v8, v1, v13, v6, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 405
    iget v8, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    sub-int v8, v1, v8

    sub-int/2addr v8, v3

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 406
    .local v8, "prevLeft":I
    iget-object v11, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move/from16 v36, v1

    .end local v1    # "currLeft":I
    .local v36, "currLeft":I
    add-int v1, v8, v3

    .line 407
    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v38

    move/from16 v39, v3

    .end local v3    # "prevWidth":I
    .local v39, "prevWidth":I
    add-int v3, v14, v38

    .line 406
    invoke-virtual {v11, v8, v14, v1, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 409
    sub-int v1, v7, v10

    sub-int/2addr v1, v5

    iget v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mScaledTextSpacing:I

    add-int/2addr v3, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 411
    .local v1, "nextLeft":I
    iget-object v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    add-int v11, v1, v5

    .line 412
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v38

    move/from16 v40, v5

    .end local v5    # "nextWidth":I
    .local v40, "nextWidth":I
    add-int v5, v4, v38

    .line 411
    invoke-virtual {v3, v1, v4, v11, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 414
    iput v2, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 415
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mUpdatingPositions:Z

    .line 416
    return-void
.end method
