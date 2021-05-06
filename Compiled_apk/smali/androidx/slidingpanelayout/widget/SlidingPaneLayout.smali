.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private mDisplayListReflectionLoaded:Z

.field final mDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mGetDisplayList:Ljava/lang/reflect/Method;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mPreservedOpenState:Z

.field private mRecreateDisplayList:Ljava/lang/reflect/Field;

.field private mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field mSlideOffset:F

.field mSlideRange:I

.field mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 249
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    const v0, -0x33333334

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 195
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 252
    .local v1, "density":F
    const/high16 v2, 0x42000000    # 32.0f

    mul-float v2, v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 254
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    .line 256
    new-instance v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {v2, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 257
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 259
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;

    invoke-direct {v0, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    invoke-static {p0, v3, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 260
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 261
    return-void
.end method

.method private closePane(Landroid/view/View;I)Z
    .locals 2
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I

    .line 853
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 857
    :cond_0
    return v1

    .line 854
    :cond_1
    :goto_0
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 855
    const/4 v0, 0x1

    return v0
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mag"    # F
    .param p3, "fadeColor"    # I

    .line 962
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 964
    .local v0, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    if-eqz p3, :cond_2

    .line 965
    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    .line 966
    .local v1, "baseAlpha":I
    int-to-float v2, v1

    mul-float v2, v2, p2

    float-to-int v2, v2

    .line 967
    .local v2, "imag":I
    shl-int/lit8 v3, v2, 0x18

    const v4, 0xffffff

    and-int/2addr v4, p3

    or-int/2addr v3, v4

    .line 968
    .local v3, "color":I
    iget-object v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_0

    .line 969
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 971
    :cond_0
    iget-object v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v3, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 972
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 973
    iget-object v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 975
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    .end local v1    # "baseAlpha":I
    .end local v2    # "imag":I
    .end local v3    # "color":I
    goto :goto_0

    .line 976
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eqz v1, :cond_4

    .line 977
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_3

    .line 978
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 980
    :cond_3
    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;

    invoke-direct {v1, p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 981
    .local v1, "dlr":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 976
    .end local v1    # "dlr":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;
    :cond_4
    :goto_0
    nop

    .line 984
    :goto_1
    return-void
.end method

.method private openPane(Landroid/view/View;I)Z
    .locals 1
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I

    .line 861
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 865
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 862
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 863
    return v0
.end method

.method private parallaxOtherViews(F)V
    .locals 11
    .param p1, "slideOffset"    # F

    .line 1209
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    .line 1210
    .local v0, "isLayoutRtl":Z
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 1211
    .local v1, "slideLp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget v2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    iget v2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    :goto_0
    if-gtz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1213
    .local v2, "dimViews":Z
    :goto_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v3

    .line 1214
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_6

    .line 1215
    invoke-virtual {p0, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1216
    .local v5, "v":Landroid/view/View;
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v5, v6, :cond_2

    goto :goto_5

    .line 1218
    :cond_2
    iget v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    iget v8, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v9, v8

    mul-float v6, v6, v9

    float-to-int v6, v6

    .line 1219
    .local v6, "oldOffset":I
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxOffset:F

    .line 1220
    sub-float v9, v7, p1

    int-to-float v8, v8

    mul-float v9, v9, v8

    float-to-int v8, v9

    .line 1221
    .local v8, "newOffset":I
    sub-int v9, v6, v8

    .line 1223
    .local v9, "dx":I
    if-eqz v0, :cond_3

    neg-int v10, v9

    goto :goto_3

    :cond_3
    move v10, v9

    :goto_3
    invoke-virtual {v5, v10}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1225
    if-eqz v2, :cond_5

    .line 1226
    iget v10, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxOffset:F

    if-eqz v0, :cond_4

    sub-float/2addr v10, v7

    goto :goto_4

    :cond_4
    sub-float v10, v7, v10

    :goto_4
    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    invoke-direct {p0, v5, v10, v7}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 1214
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "oldOffset":I
    .end local v8    # "newOffset":I
    .end local v9    # "dx":I
    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1230
    .end local v4    # "i":I
    :cond_6
    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .line 400
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 401
    return v1

    .line 407
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    .line 408
    return v3

    .line 411
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 412
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 413
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 415
    :cond_3
    return v3
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 1244
    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1245
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 1246
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 1247
    .local v3, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 1248
    .local v4, "scrollY":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 1250
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 1253
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1254
    .local v13, "child":Landroid/view/View;
    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v8, :cond_0

    add-int v7, p5, v4

    .line 1255
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p5, v4

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    const/4 v9, 0x1

    add-int v7, p4, v3

    .line 1256
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v11, v7, v8

    add-int v7, p5, v4

    .line 1257
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v12, v7, v8

    .line 1256
    move-object v7, p0

    move-object v8, v13

    move/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1258
    return v2

    .line 1250
    .end local v13    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1263
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    move/from16 v1, p3

    move v3, v1

    goto :goto_1

    :cond_2
    move/from16 v1, p3

    neg-int v3, v1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_3
    move/from16 v1, p3

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public canSlide()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 920
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1288
    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public closePane()Z
    .locals 2

    .line 901
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .line 1097
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    .line 1099
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    .line 1100
    return-void

    .line 1103
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1105
    :cond_1
    return-void
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .line 338
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 339
    invoke-interface {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    .line 341
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 342
    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .line 331
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    .line 334
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 335
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;

    .line 325
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 326
    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 328
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 1175
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1176
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    .line 1178
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_0

    .line 1179
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    .local v1, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1181
    .end local v1    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1184
    .restart local v1    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1185
    .local v2, "shadowView":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_4

    if-nez v1, :cond_2

    goto :goto_3

    .line 1190
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1191
    .local v3, "top":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1193
    .local v4, "bottom":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 1196
    .local v5, "shadowWidth":I
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1197
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    .line 1198
    .local v6, "left":I
    add-int v7, v6, v5

    .local v7, "right":I
    goto :goto_2

    .line 1200
    .end local v6    # "left":I
    .end local v7    # "right":I
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 1201
    .restart local v7    # "right":I
    sub-int v6, v7, v5

    .line 1204
    .restart local v6    # "left":I
    :goto_2
    invoke-virtual {v1, v6, v3, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1205
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1206
    return-void

    .line 1187
    .end local v3    # "top":I
    .end local v4    # "bottom":I
    .end local v5    # "shadowWidth":I
    .end local v6    # "left":I
    .end local v7    # "right":I
    :cond_4
    :goto_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 988
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 990
    .local v0, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 992
    .local v1, "save":I
    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 994
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 995
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 996
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 998
    :cond_0
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1000
    :goto_0
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1003
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .line 1005
    .local v2, "result":Z
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1007
    return v2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1276
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1293
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1281
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public getCoveredFadeColor()I
    .locals 1

    .line 317
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getParallaxDistance()I
    .locals 1

    .line 282
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    return v0
.end method

.method public getSliderFadeColor()I
    .locals 1

    .line 299
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return v0
.end method

.method invalidateChildRegion(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 1015
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1016
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1017
    return-void

    .line 1020
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 1027
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDisplayListReflectionLoaded:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "SlidingPaneLayout"

    if-nez v0, :cond_1

    .line 1029
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v4, "getDisplayList"

    move-object v5, v1

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mGetDisplayList:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    goto :goto_0

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "Couldn\'t fetch getDisplayList method; dimming won\'t work right."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1036
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    :try_start_1
    const-class v0, Landroid/view/View;

    const-string v4, "mRecreateDisplayList"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    .line 1037
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1041
    goto :goto_1

    .line 1038
    :catch_1
    move-exception v0

    .line 1039
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v4, "Couldn\'t fetch mRecreateDisplayList field; dimming will be slow."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDisplayListReflectionLoaded:Z

    .line 1044
    :cond_1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mGetDisplayList:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    goto :goto_2

    .line 1051
    :cond_2
    :try_start_2
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 1052
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mGetDisplayList:Ljava/lang/reflect/Method;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1055
    goto :goto_3

    .line 1053
    :catch_2
    move-exception v0

    .line 1054
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error refreshing display list state"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1046
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1047
    return-void

    .line 1058
    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1059
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1058
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    .line 1060
    return-void
.end method

.method isDimmed(Landroid/view/View;)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 1267
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1268
    return v0

    .line 1270
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 1271
    .local v1, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method isLayoutRtlSupport()Z
    .locals 2

    .line 1617
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOpen()Z
    .locals 2

    .line 911
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSlideable()Z
    .locals 1

    .line 930
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 420
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 422
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 426
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 429
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 430
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;

    .line 431
    .local v2, "dlr":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;
    invoke-virtual {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    .line 429
    .end local v2    # "dlr":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 434
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 757
    .local v0, "action":I
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 759
    invoke-virtual {p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 760
    .local v1, "secondChild":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 761
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 761
    invoke-virtual {v3, v1, v4, v5}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v3

    xor-int/2addr v3, v2

    iput-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 766
    .end local v1    # "secondChild":Landroid/view/View;
    :cond_0
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 771
    :cond_1
    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_8

    if-ne v0, v2, :cond_2

    goto :goto_2

    .line 776
    :cond_2
    const/4 v1, 0x0

    .line 778
    .local v1, "interceptTap":Z
    if-eqz v0, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    goto :goto_0

    .line 794
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 795
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 796
    .local v5, "y":F
    iget v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 797
    .local v6, "adx":F
    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 798
    .local v7, "ady":F
    iget-object v8, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v8

    .line 799
    .local v8, "slop":I
    int-to-float v9, v8

    cmpl-float v9, v6, v9

    if-lez v9, :cond_5

    cmpl-float v9, v7, v6

    if-lez v9, :cond_5

    .line 800
    iget-object v9, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 801
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 802
    return v3

    .line 780
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "adx":F
    .end local v7    # "ady":F
    .end local v8    # "slop":I
    :cond_4
    iput-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 782
    .restart local v4    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 783
    .restart local v5    # "y":F
    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 784
    iput v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 786
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v8, v4

    float-to-int v9, v5

    invoke-virtual {v6, v7, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 787
    invoke-virtual {p0, v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 788
    const/4 v1, 0x1

    .line 807
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_5
    :goto_0
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v4, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 809
    .local v4, "interceptForDrag":Z
    if-nez v4, :cond_7

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_1
    return v2

    .line 772
    .end local v1    # "interceptTap":Z
    .end local v4    # "interceptForDrag":Z
    :cond_8
    :goto_2
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 773
    return v3

    .line 767
    :cond_9
    :goto_3
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 768
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 650
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    .line 651
    .local v1, "isLayoutRtl":Z
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 652
    iget-object v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    goto :goto_0

    .line 654
    :cond_0
    iget-object v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v3, v2}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 656
    :goto_0
    sub-int v3, p4, p2

    .line 657
    .local v3, "width":I
    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    .line 658
    .local v4, "paddingStart":I
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v5

    .line 659
    .local v5, "paddingEnd":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v6

    .line 661
    .local v6, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v7

    .line 662
    .local v7, "childCount":I
    move v8, v4

    .line 663
    .local v8, "xStart":I
    move v9, v8

    .line 665
    .local v9, "nextXStart":I
    iget-boolean v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v10, :cond_4

    .line 666
    iget-boolean v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v10, :cond_3

    iget-boolean v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    if-eqz v10, :cond_3

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    iput v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 669
    :cond_4
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    if-ge v10, v7, :cond_b

    .line 670
    invoke-virtual {v0, v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 672
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v2, 0x8

    if-ne v15, v2, :cond_5

    .line 673
    move/from16 v20, v4

    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_9

    .line 676
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 678
    .local v2, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 679
    .local v15, "childWidth":I
    const/16 v16, 0x0

    .line 681
    .local v16, "offset":I
    iget-boolean v13, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v13, :cond_8

    .line 682
    iget v13, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v12, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v13, v12

    .line 683
    .local v13, "margin":I
    sub-int v12, v3, v5

    iget v11, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOverhangSize:I

    sub-int/2addr v12, v11

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int/2addr v11, v8

    sub-int/2addr v11, v13

    .line 685
    .local v11, "range":I
    iput v11, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 686
    if-eqz v1, :cond_6

    iget v12, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_5

    :cond_6
    iget v12, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    .line 687
    .local v12, "lpMargin":I
    :goto_5
    add-int v18, v8, v12

    add-int v18, v18, v11

    div-int/lit8 v19, v15, 0x2

    move/from16 v20, v4

    .end local v4    # "paddingStart":I
    .local v20, "paddingStart":I
    add-int v4, v18, v19

    move/from16 v18, v13

    .end local v13    # "margin":I
    .local v18, "margin":I
    sub-int v13, v3, v5

    if-le v4, v13, :cond_7

    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    iput-boolean v4, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 688
    int-to-float v4, v11

    iget v13, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    mul-float v4, v4, v13

    float-to-int v4, v4

    .line 689
    .local v4, "pos":I
    add-int v13, v4, v12

    add-int/2addr v8, v13

    .line 690
    int-to-float v13, v4

    move-object/from16 v19, v2

    .end local v2    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .local v19, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v2, v2

    div-float/2addr v13, v2

    iput v13, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 691
    .end local v4    # "pos":I
    .end local v11    # "range":I
    .end local v12    # "lpMargin":I
    .end local v18    # "margin":I
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_7

    .end local v19    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v20    # "paddingStart":I
    .restart local v2    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .local v4, "paddingStart":I
    :cond_8
    move-object/from16 v19, v2

    move/from16 v20, v4

    .end local v2    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v4    # "paddingStart":I
    .restart local v19    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .restart local v20    # "paddingStart":I
    iget-boolean v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_9

    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v2, :cond_9

    .line 692
    iget v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v4, v11, v4

    int-to-float v2, v2

    mul-float v4, v4, v2

    float-to-int v2, v4

    .line 693
    .end local v16    # "offset":I
    .local v2, "offset":I
    move v8, v9

    move/from16 v16, v2

    goto :goto_7

    .line 691
    .end local v2    # "offset":I
    .restart local v16    # "offset":I
    :cond_9
    const/high16 v11, 0x3f800000    # 1.0f

    .line 695
    move v8, v9

    .line 700
    :goto_7
    if-eqz v1, :cond_a

    .line 701
    sub-int v2, v3, v8

    add-int v2, v2, v16

    .line 702
    .local v2, "childRight":I
    sub-int v4, v2, v15

    .local v4, "childLeft":I
    goto :goto_8

    .line 704
    .end local v2    # "childRight":I
    .end local v4    # "childLeft":I
    :cond_a
    sub-int v4, v8, v16

    .line 705
    .restart local v4    # "childLeft":I
    add-int v2, v4, v15

    .line 708
    .restart local v2    # "childRight":I
    :goto_8
    move v12, v6

    .line 709
    .local v12, "childTop":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v12

    .line 710
    .local v13, "childBottom":I
    invoke-virtual {v14, v4, v6, v2, v13}, Landroid/view/View;->layout(IIII)V

    .line 712
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v17

    add-int v9, v9, v17

    .line 669
    .end local v2    # "childRight":I
    .end local v4    # "childLeft":I
    .end local v12    # "childTop":I
    .end local v13    # "childBottom":I
    .end local v14    # "child":Landroid/view/View;
    .end local v15    # "childWidth":I
    .end local v16    # "offset":I
    .end local v19    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v20

    const/4 v2, 0x1

    goto/16 :goto_4

    .end local v20    # "paddingStart":I
    .local v4, "paddingStart":I
    :cond_b
    move/from16 v20, v4

    .line 715
    .end local v4    # "paddingStart":I
    .end local v10    # "i":I
    .restart local v20    # "paddingStart":I
    iget-boolean v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v2, :cond_f

    .line 716
    iget-boolean v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_d

    .line 717
    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v2, :cond_c

    .line 718
    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {v0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 720
    :cond_c
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_e

    .line 721
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {v0, v2, v4, v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_b

    .line 725
    :cond_d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v7, :cond_e

    .line 726
    invoke-virtual {v0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    const/4 v11, 0x0

    invoke-direct {v0, v4, v11, v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 725
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 729
    .end local v2    # "i":I
    :cond_e
    :goto_b
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 732
    :cond_f
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 733
    return-void
.end method

.method protected onMeasure(II)V
    .locals 29
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 438
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 439
    .local v1, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 440
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 441
    .local v3, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 443
    .local v4, "heightSize":I
    const/high16 v5, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v1, v6, :cond_2

    .line 444
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 449
    if-ne v1, v5, :cond_0

    .line 450
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_0

    .line 451
    :cond_0
    if-nez v1, :cond_4

    .line 452
    const/high16 v1, 0x40000000    # 2.0f

    .line 453
    const/16 v2, 0x12c

    goto :goto_0

    .line 456
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 458
    :cond_2
    if-nez v3, :cond_4

    .line 459
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 463
    if-nez v3, :cond_4

    .line 464
    const/high16 v3, -0x80000000

    .line 465
    const/16 v4, 0x12c

    goto :goto_0

    .line 468
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Height must not be UNSPECIFIED"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 472
    :cond_4
    :goto_0
    const/4 v7, 0x0

    .line 473
    .local v7, "layoutHeight":I
    const/4 v8, 0x0

    .line 474
    .local v8, "maxLayoutHeight":I
    if-eq v3, v5, :cond_6

    if-eq v3, v6, :cond_5

    goto :goto_1

    .line 476
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    move v8, v9

    move v7, v9

    .line 477
    goto :goto_1

    .line 479
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v10

    sub-int v8, v9, v10

    .line 483
    :goto_1
    const/4 v9, 0x0

    .line 484
    .local v9, "weightSum":F
    const/4 v10, 0x0

    .line 485
    .local v10, "canSlide":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v11

    sub-int v11, v2, v11

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    .line 486
    .local v11, "widthAvailable":I
    move v12, v11

    .line 487
    .local v12, "widthRemaining":I
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v13

    .line 489
    .local v13, "childCount":I
    const/4 v14, 0x2

    if-le v13, v14, :cond_7

    .line 490
    const-string v14, "SlidingPaneLayout"

    const-string v15, "onMeasure: More than two child views are not supported."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_7
    const/4 v14, 0x0

    iput-object v14, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 498
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    const/16 v15, 0x8

    const/16 v17, 0x1

    const/16 v19, 0x0

    if-ge v14, v13, :cond_11

    .line 499
    invoke-virtual {v0, v14}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 500
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v5, v21

    check-cast v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 502
    .local v5, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move/from16 v21, v1

    .end local v1    # "widthMode":I
    .local v21, "widthMode":I
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v15, :cond_8

    .line 503
    const/4 v1, 0x0

    iput-boolean v1, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 504
    move/from16 v22, v4

    goto/16 :goto_6

    .line 507
    :cond_8
    iget v1, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v19

    if-lez v1, :cond_9

    .line 508
    iget v1, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    add-float/2addr v9, v1

    .line 512
    iget v1, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v1, :cond_9

    move/from16 v22, v4

    goto/16 :goto_6

    .line 516
    :cond_9
    iget v1, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v15, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v15

    .line 517
    .local v1, "horizontalMargin":I
    iget v15, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v22, v4

    const/4 v4, -0x2

    .end local v4    # "heightSize":I
    .local v22, "heightSize":I
    if-ne v15, v4, :cond_a

    .line 518
    sub-int v4, v11, v1

    const/high16 v15, -0x80000000

    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .local v4, "childWidthSpec":I
    goto :goto_3

    .line 520
    .end local v4    # "childWidthSpec":I
    :cond_a
    iget v4, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v4, v15, :cond_b

    .line 521
    sub-int v4, v11, v1

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .restart local v4    # "childWidthSpec":I
    goto :goto_3

    .line 524
    .end local v4    # "childWidthSpec":I
    :cond_b
    const/high16 v15, 0x40000000    # 2.0f

    iget v4, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 528
    .restart local v4    # "childWidthSpec":I
    :goto_3
    iget v15, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v19, v1

    const/4 v1, -0x2

    .end local v1    # "horizontalMargin":I
    .local v19, "horizontalMargin":I
    if-ne v15, v1, :cond_c

    .line 529
    const/high16 v1, -0x80000000

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .local v15, "childHeightSpec":I
    goto :goto_4

    .line 530
    .end local v15    # "childHeightSpec":I
    :cond_c
    iget v1, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v1, v15, :cond_d

    .line 531
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .restart local v15    # "childHeightSpec":I
    goto :goto_4

    .line 533
    .end local v15    # "childHeightSpec":I
    :cond_d
    const/high16 v1, 0x40000000    # 2.0f

    iget v15, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    invoke-static {v15, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 536
    .restart local v15    # "childHeightSpec":I
    :goto_4
    invoke-virtual {v6, v4, v15}, Landroid/view/View;->measure(II)V

    .line 537
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 538
    .local v1, "childWidth":I
    move/from16 v18, v4

    .end local v4    # "childWidthSpec":I
    .local v18, "childWidthSpec":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 540
    .local v4, "childHeight":I
    move/from16 v20, v9

    const/high16 v9, -0x80000000

    .end local v9    # "weightSum":F
    .local v20, "weightSum":F
    if-ne v3, v9, :cond_e

    if-le v4, v7, :cond_e

    .line 541
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 544
    :cond_e
    sub-int/2addr v12, v1

    .line 545
    if-gez v12, :cond_f

    const/4 v9, 0x1

    goto :goto_5

    :cond_f
    const/4 v9, 0x0

    :goto_5
    iput-boolean v9, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int/2addr v9, v10

    .line 546
    .end local v10    # "canSlide":Z
    .local v9, "canSlide":Z
    iget-boolean v10, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v10, :cond_10

    .line 547
    iput-object v6, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 498
    .end local v1    # "childWidth":I
    .end local v4    # "childHeight":I
    .end local v5    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v6    # "child":Landroid/view/View;
    .end local v15    # "childHeightSpec":I
    .end local v18    # "childWidthSpec":I
    .end local v19    # "horizontalMargin":I
    :cond_10
    move v10, v9

    move/from16 v9, v20

    .end local v20    # "weightSum":F
    .local v9, "weightSum":F
    .restart local v10    # "canSlide":Z
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v21

    move/from16 v4, v22

    const/high16 v5, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    goto/16 :goto_2

    .end local v21    # "widthMode":I
    .end local v22    # "heightSize":I
    .local v1, "widthMode":I
    .local v4, "heightSize":I
    :cond_11
    move/from16 v21, v1

    move/from16 v22, v4

    .line 552
    .end local v1    # "widthMode":I
    .end local v4    # "heightSize":I
    .end local v14    # "i":I
    .restart local v21    # "widthMode":I
    .restart local v22    # "heightSize":I
    if-nez v10, :cond_13

    cmpl-float v1, v9, v19

    if-lez v1, :cond_12

    goto :goto_7

    :cond_12
    move/from16 v24, v3

    move/from16 v28, v8

    move/from16 v25, v13

    goto/16 :goto_f

    .line 553
    :cond_13
    :goto_7
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOverhangSize:I

    sub-int v1, v11, v1

    .line 555
    .local v1, "fixedPanelWidthLimit":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v13, :cond_25

    .line 556
    invoke-virtual {v0, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 558
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v15, :cond_14

    .line 559
    move/from16 v27, v1

    move/from16 v24, v3

    move/from16 v28, v8

    move/from16 v25, v13

    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_e

    .line 562
    :cond_14
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 564
    .local v6, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v15, :cond_15

    .line 565
    move/from16 v27, v1

    move/from16 v24, v3

    move/from16 v28, v8

    move/from16 v25, v13

    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_e

    .line 568
    :cond_15
    iget v14, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v14, :cond_16

    iget v14, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    cmpl-float v14, v14, v19

    if-lez v14, :cond_16

    const/4 v14, 0x1

    goto :goto_9

    :cond_16
    const/4 v14, 0x0

    .line 569
    .local v14, "skippedFirstPass":Z
    :goto_9
    if-eqz v14, :cond_17

    const/16 v23, 0x0

    goto :goto_a

    :cond_17
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    :goto_a
    move/from16 v24, v23

    .line 570
    .local v24, "measuredWidth":I
    if-eqz v10, :cond_1e

    iget-object v15, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eq v5, v15, :cond_1e

    .line 571
    iget v15, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-gez v15, :cond_1d

    move/from16 v15, v24

    .end local v24    # "measuredWidth":I
    .local v15, "measuredWidth":I
    if-gt v15, v1, :cond_19

    move/from16 v24, v3

    .end local v3    # "heightMode":I
    .local v24, "heightMode":I
    iget v3, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    cmpl-float v3, v3, v19

    if-lez v3, :cond_18

    goto :goto_b

    :cond_18
    move/from16 v27, v1

    move/from16 v28, v8

    move/from16 v25, v13

    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_e

    .end local v24    # "heightMode":I
    .restart local v3    # "heightMode":I
    :cond_19
    move/from16 v24, v3

    .line 575
    .end local v3    # "heightMode":I
    .restart local v24    # "heightMode":I
    :goto_b
    if-eqz v14, :cond_1c

    .line 578
    iget v3, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v25, v13

    const/4 v13, -0x2

    .end local v13    # "childCount":I
    .local v25, "childCount":I
    if-ne v3, v13, :cond_1a

    .line 579
    const/high16 v3, -0x80000000

    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/high16 v3, 0x40000000    # 2.0f

    .local v13, "childHeightSpec":I
    goto :goto_c

    .line 581
    .end local v13    # "childHeightSpec":I
    :cond_1a
    iget v3, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v13, -0x1

    if-ne v3, v13, :cond_1b

    .line 582
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .restart local v13    # "childHeightSpec":I
    goto :goto_c

    .line 585
    .end local v13    # "childHeightSpec":I
    :cond_1b
    const/high16 v3, 0x40000000    # 2.0f

    iget v13, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    invoke-static {v13, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .restart local v13    # "childHeightSpec":I
    goto :goto_c

    .line 589
    .end local v25    # "childCount":I
    .local v13, "childCount":I
    :cond_1c
    move/from16 v25, v13

    const/high16 v3, 0x40000000    # 2.0f

    .line 590
    .end local v13    # "childCount":I
    .restart local v25    # "childCount":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 589
    invoke-static {v13, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 592
    .local v13, "childHeightSpec":I
    :goto_c
    move/from16 v26, v14

    .end local v14    # "skippedFirstPass":Z
    .local v26, "skippedFirstPass":Z
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 594
    .local v14, "childWidthSpec":I
    invoke-virtual {v5, v14, v13}, Landroid/view/View;->measure(II)V

    .line 595
    .end local v13    # "childHeightSpec":I
    .end local v14    # "childWidthSpec":I
    move/from16 v27, v1

    move/from16 v28, v8

    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_e

    .line 571
    .end local v15    # "measuredWidth":I
    .end local v25    # "childCount":I
    .end local v26    # "skippedFirstPass":Z
    .restart local v3    # "heightMode":I
    .local v13, "childCount":I
    .local v14, "skippedFirstPass":Z
    .local v24, "measuredWidth":I
    :cond_1d
    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v15, v24

    move/from16 v24, v3

    .end local v3    # "heightMode":I
    .end local v13    # "childCount":I
    .end local v14    # "skippedFirstPass":Z
    .restart local v15    # "measuredWidth":I
    .local v24, "heightMode":I
    .restart local v25    # "childCount":I
    .restart local v26    # "skippedFirstPass":Z
    move/from16 v27, v1

    move/from16 v28, v8

    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_e

    .line 570
    .end local v15    # "measuredWidth":I
    .end local v25    # "childCount":I
    .end local v26    # "skippedFirstPass":Z
    .restart local v3    # "heightMode":I
    .restart local v13    # "childCount":I
    .restart local v14    # "skippedFirstPass":Z
    .local v24, "measuredWidth":I
    :cond_1e
    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v15, v24

    move/from16 v24, v3

    .line 596
    .end local v3    # "heightMode":I
    .end local v13    # "childCount":I
    .end local v14    # "skippedFirstPass":Z
    .restart local v15    # "measuredWidth":I
    .local v24, "heightMode":I
    .restart local v25    # "childCount":I
    .restart local v26    # "skippedFirstPass":Z
    iget v3, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    cmpl-float v3, v3, v19

    if-lez v3, :cond_24

    .line 598
    iget v3, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v3, :cond_21

    .line 600
    iget v3, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v13, -0x2

    if-ne v3, v13, :cond_1f

    .line 601
    const/high16 v3, -0x80000000

    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move v3, v14

    const/high16 v14, 0x40000000    # 2.0f

    .local v14, "childHeightSpec":I
    goto :goto_d

    .line 603
    .end local v14    # "childHeightSpec":I
    :cond_1f
    const/high16 v3, -0x80000000

    iget v14, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v14, v3, :cond_20

    .line 604
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    move/from16 v3, v16

    .local v16, "childHeightSpec":I
    goto :goto_d

    .line 607
    .end local v16    # "childHeightSpec":I
    :cond_20
    const/high16 v14, 0x40000000    # 2.0f

    iget v3, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childHeightSpec":I
    goto :goto_d

    .line 611
    .end local v3    # "childHeightSpec":I
    :cond_21
    const/4 v13, -0x2

    const/high16 v14, 0x40000000    # 2.0f

    .line 612
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 611
    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 615
    .restart local v3    # "childHeightSpec":I
    :goto_d
    if-eqz v10, :cond_23

    .line 617
    iget v13, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v14, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    .line 618
    .local v13, "horizontalMargin":I
    sub-int v14, v11, v13

    .line 619
    .local v14, "newWidth":I
    move/from16 v27, v1

    move/from16 v28, v8

    const/high16 v1, 0x40000000    # 2.0f

    .end local v1    # "fixedPanelWidthLimit":I
    .end local v8    # "maxLayoutHeight":I
    .local v27, "fixedPanelWidthLimit":I
    .local v28, "maxLayoutHeight":I
    invoke-static {v14, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 621
    .local v8, "childWidthSpec":I
    if-eq v15, v14, :cond_22

    .line 622
    invoke-virtual {v5, v8, v3}, Landroid/view/View;->measure(II)V

    .line 624
    .end local v8    # "childWidthSpec":I
    .end local v13    # "horizontalMargin":I
    .end local v14    # "newWidth":I
    :cond_22
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_e

    .line 626
    .end local v27    # "fixedPanelWidthLimit":I
    .end local v28    # "maxLayoutHeight":I
    .restart local v1    # "fixedPanelWidthLimit":I
    .local v8, "maxLayoutHeight":I
    :cond_23
    move/from16 v27, v1

    move/from16 v28, v8

    .end local v1    # "fixedPanelWidthLimit":I
    .end local v8    # "maxLayoutHeight":I
    .restart local v27    # "fixedPanelWidthLimit":I
    .restart local v28    # "maxLayoutHeight":I
    const/4 v1, 0x0

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 627
    .local v8, "widthToDistribute":I
    iget v13, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    int-to-float v14, v8

    mul-float v13, v13, v14

    div-float/2addr v13, v9

    float-to-int v13, v13

    .line 628
    .local v13, "addedWidth":I
    add-int v14, v15, v13

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v14, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 630
    .local v14, "childWidthSpec":I
    invoke-virtual {v5, v14, v3}, Landroid/view/View;->measure(II)V

    goto :goto_e

    .line 596
    .end local v3    # "childHeightSpec":I
    .end local v13    # "addedWidth":I
    .end local v14    # "childWidthSpec":I
    .end local v27    # "fixedPanelWidthLimit":I
    .end local v28    # "maxLayoutHeight":I
    .restart local v1    # "fixedPanelWidthLimit":I
    .local v8, "maxLayoutHeight":I
    :cond_24
    move/from16 v27, v1

    move/from16 v28, v8

    const/high16 v1, 0x40000000    # 2.0f

    .line 555
    .end local v1    # "fixedPanelWidthLimit":I
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v8    # "maxLayoutHeight":I
    .end local v15    # "measuredWidth":I
    .end local v26    # "skippedFirstPass":Z
    .restart local v27    # "fixedPanelWidthLimit":I
    .restart local v28    # "maxLayoutHeight":I
    :goto_e
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v24

    move/from16 v13, v25

    move/from16 v1, v27

    move/from16 v8, v28

    const/16 v15, 0x8

    goto/16 :goto_8

    .end local v24    # "heightMode":I
    .end local v25    # "childCount":I
    .end local v27    # "fixedPanelWidthLimit":I
    .end local v28    # "maxLayoutHeight":I
    .restart local v1    # "fixedPanelWidthLimit":I
    .local v3, "heightMode":I
    .restart local v8    # "maxLayoutHeight":I
    .local v13, "childCount":I
    :cond_25
    move/from16 v27, v1

    move/from16 v24, v3

    move/from16 v28, v8

    move/from16 v25, v13

    .line 636
    .end local v1    # "fixedPanelWidthLimit":I
    .end local v3    # "heightMode":I
    .end local v4    # "i":I
    .end local v8    # "maxLayoutHeight":I
    .end local v13    # "childCount":I
    .restart local v24    # "heightMode":I
    .restart local v25    # "childCount":I
    .restart local v28    # "maxLayoutHeight":I
    :goto_f
    move v1, v2

    .line 637
    .local v1, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v7

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 639
    .local v3, "measuredHeight":I
    invoke-virtual {v0, v1, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 640
    iput-boolean v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 642
    iget-object v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v4

    if-eqz v4, :cond_26

    if-nez v10, :cond_26

    .line 644
    iget-object v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    .line 646
    :cond_26
    return-void
.end method

.method onPanelDragged(I)V
    .locals 10
    .param p1, "newLeft"    # I

    .line 934
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 936
    const/4 v0, 0x0

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 937
    return-void

    .line 939
    :cond_0
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    .line 940
    .local v0, "isLayoutRtl":Z
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 942
    .local v1, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 943
    .local v2, "childWidth":I
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, v2

    goto :goto_0

    :cond_1
    move v3, p1

    .line 945
    .local v3, "newStart":I
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    .line 946
    .local v4, "paddingStart":I
    :goto_1
    if-eqz v0, :cond_3

    iget v5, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_3
    iget v5, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    .line 947
    .local v5, "lpMargin":I
    :goto_2
    add-int v6, v4, v5

    .line 949
    .local v6, "startBound":I
    sub-int v7, v3, v6

    int-to-float v7, v7

    iget v8, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 951
    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v7, :cond_4

    .line 952
    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {p0, v7}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 955
    :cond_4
    iget-boolean v7, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v7, :cond_5

    .line 956
    iget-object v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v8, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v9, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {p0, v7, v8, v9}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 958
    :cond_5
    iget-object v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 959
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1308
    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    if-nez v0, :cond_0

    .line 1309
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1310
    return-void

    .line 1313
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    .line 1314
    .local v0, "ss":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1316
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v1, :cond_1

    .line 1317
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane()Z

    goto :goto_0

    .line 1319
    :cond_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane()Z

    .line 1321
    :goto_0
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 1322
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1298
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1300
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1301
    .local v1, "ss":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    move-result v2

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :goto_0
    iput-boolean v2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    .line 1303
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 737
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 739
    if-eq p1, p3, :cond_0

    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 742
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 814
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    .line 815
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 818
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 820
    const/4 v0, 0x1

    .line 822
    .local v0, "wantTouchEvents":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 832
    :cond_1
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 833
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 834
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 835
    .local v2, "y":F
    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v3, v1, v3

    .line 836
    .local v3, "dx":F
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v4, v2, v4

    .line 837
    .local v4, "dy":F
    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    .line 838
    .local v5, "slop":I
    mul-float v6, v3, v3

    mul-float v7, v4, v4

    add-float/2addr v6, v7

    mul-int v7, v5, v5

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v8, v1

    float-to-int v9, v2

    .line 839
    invoke-virtual {v6, v7, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 841
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    .line 842
    goto :goto_0

    .line 824
    .end local v1    # "x":F
    .end local v2    # "y":F
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v5    # "slop":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 825
    .restart local v1    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 826
    .restart local v2    # "y":F
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 827
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 828
    nop

    .line 849
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_3
    :goto_0
    return v0
.end method

.method public openPane()Z
    .locals 2

    .line 883
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 746
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 747
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_1

    .line 748
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 750
    :cond_1
    return-void
.end method

.method setAllChildrenVisible()V
    .locals 5

    .line 391
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 392
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 393
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 394
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 391
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    .end local v0    # "i":I
    .end local v1    # "childCount":I
    :cond_1
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 309
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    .line 310
    return-void
.end method

.method public setPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    .line 321
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    .line 322
    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0
    .param p1, "parallaxBy"    # I

    .line 271
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    .line 272
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->requestLayout()V

    .line 273
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1116
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1117
    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1126
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1127
    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1136
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1137
    return-void
.end method

.method public setShadowResource(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1150
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1151
    return-void
.end method

.method public setShadowResourceLeft(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1160
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1161
    return-void
.end method

.method public setShadowResourceRight(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1170
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    .line 1171
    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 291
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 292
    return-void
.end method

.method public smoothSlideClosed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 891
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane()Z

    .line 892
    return-void
.end method

.method public smoothSlideOpen()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 873
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane()Z

    .line 874
    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 8
    .param p1, "slideOffset"    # F
    .param p2, "velocity"    # I

    .line 1069
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1071
    return v1

    .line 1074
    :cond_0
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    .line 1075
    .local v0, "isLayoutRtl":Z
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 1078
    .local v2, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 1079
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    iget v4, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1080
    .local v3, "startBound":I
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1081
    .local v4, "childWidth":I
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v3

    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v7, v7

    mul-float v7, v7, p1

    add-float/2addr v6, v7

    int-to-float v7, v4

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v3, v5

    .line 1082
    .end local v4    # "childWidth":I
    .local v3, "x":I
    goto :goto_0

    .line 1083
    .end local v3    # "x":I
    :cond_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    iget v4, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    .line 1084
    .local v3, "startBound":I
    int-to-float v4, v3

    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v5, v5

    mul-float v5, v5, p1

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 1087
    .local v3, "x":I
    :goto_0
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1088
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 1089
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1090
    const/4 v1, 0x1

    return v1

    .line 1092
    :cond_2
    return v1
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 19
    .param p1, "panel"    # Landroid/view/View;

    .line 345
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    .line 346
    .local v1, "isLayoutRtl":Z
    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    .line 347
    .local v2, "startBound":I
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 348
    .local v3, "endBound":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v4

    .line 349
    .local v4, "topBound":I
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 354
    .local v5, "bottomBound":I
    if-eqz v0, :cond_2

    invoke-static/range {p1 .. p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 356
    .local v6, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 357
    .local v7, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v8

    .line 358
    .local v8, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v9

    .local v9, "bottom":I
    goto :goto_2

    .line 360
    .end local v6    # "left":I
    .end local v7    # "right":I
    .end local v8    # "top":I
    .end local v9    # "bottom":I
    :cond_2
    const/4 v6, 0x0

    move v9, v6

    .restart local v9    # "bottom":I
    move v8, v6

    .restart local v8    # "top":I
    move v7, v6

    .line 363
    .restart local v6    # "left":I
    .restart local v7    # "right":I
    :goto_2
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v11

    .local v11, "childCount":I
    :goto_3
    if-ge v10, v11, :cond_8

    .line 364
    move-object/from16 v12, p0

    invoke-virtual {v12, v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 366
    .local v13, "child":Landroid/view/View;
    if-ne v13, v0, :cond_3

    .line 368
    move/from16 v16, v1

    goto/16 :goto_8

    .line 369
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_4

    .line 370
    move/from16 v16, v1

    goto :goto_7

    .line 373
    :cond_4
    if-eqz v1, :cond_5

    move v14, v3

    goto :goto_4

    :cond_5
    move v14, v2

    .line 374
    :goto_4
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 373
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 375
    .local v14, "clampedChildLeft":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 376
    .local v15, "clampedChildTop":I
    if-eqz v1, :cond_6

    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v3

    .line 377
    :goto_5
    move/from16 v16, v1

    .end local v1    # "isLayoutRtl":Z
    .local v16, "isLayoutRtl":Z
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v1

    .line 376
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 378
    .local v0, "clampedChildRight":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 380
    .local v1, "clampedChildBottom":I
    if-lt v14, v6, :cond_7

    if-lt v15, v8, :cond_7

    if-gt v0, v7, :cond_7

    if-gt v1, v9, :cond_7

    .line 382
    const/16 v17, 0x4

    move/from16 v18, v0

    move/from16 v0, v17

    .local v17, "vis":I
    goto :goto_6

    .line 384
    .end local v17    # "vis":I
    :cond_7
    const/16 v17, 0x0

    move/from16 v18, v0

    move/from16 v0, v17

    .line 386
    .local v0, "vis":I
    .local v18, "clampedChildRight":I
    :goto_6
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 363
    .end local v0    # "vis":I
    .end local v1    # "clampedChildBottom":I
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "clampedChildLeft":I
    .end local v15    # "clampedChildTop":I
    .end local v18    # "clampedChildRight":I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    goto :goto_3

    .end local v16    # "isLayoutRtl":Z
    .local v1, "isLayoutRtl":Z
    :cond_8
    move-object/from16 v12, p0

    move/from16 v16, v1

    .line 388
    .end local v1    # "isLayoutRtl":Z
    .end local v10    # "i":I
    .end local v11    # "childCount":I
    .restart local v16    # "isLayoutRtl":Z
    :goto_8
    return-void
.end method
