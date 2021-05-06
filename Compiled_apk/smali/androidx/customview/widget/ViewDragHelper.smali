.class public Landroidx/customview/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 332
    new-instance v0, Landroidx/customview/widget/ViewDragHelper$1;

    invoke-direct {v0}, Landroidx/customview/widget/ViewDragHelper$1;-><init>()V

    sput-object v0, Landroidx/customview/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "cb"    # Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 340
    new-instance v0, Landroidx/customview/widget/ViewDragHelper$2;

    invoke-direct {v0, p0}, Landroidx/customview/widget/ViewDragHelper$2;-><init>(Landroidx/customview/widget/ViewDragHelper;)V

    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 384
    if-eqz p2, :cond_1

    .line 387
    if-eqz p3, :cond_0

    .line 391
    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 392
    iput-object p3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 394
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 395
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 396
    .local v1, "density":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v2, v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    .line 398
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    .line 399
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 400
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    .line 401
    new-instance v2, Landroid/widget/OverScroller;

    sget-object v3, Landroidx/customview/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    .line 402
    return-void

    .line 388
    .end local v0    # "vc":Landroid/view/ViewConfiguration;
    .end local v1    # "density":F
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent view may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 5
    .param p1, "delta"    # F
    .param p2, "odelta"    # F
    .param p3, "pointerId"    # I
    .param p4, "edge"    # I

    .line 1276
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1277
    .local v0, "absDelta":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1279
    .local v1, "absODelta":F
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    const/4 v3, 0x0

    if-ne v2, p4, :cond_3

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v2, p4

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-eq v2, p4, :cond_3

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-eq v2, p4, :cond_3

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v4, v2

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 1285
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v2, p4}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1286
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v2, p3

    or-int/2addr v4, p4

    aput v4, v2, p3

    .line 1287
    return v3

    .line 1289
    :cond_1
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-nez v2, :cond_2

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    .line 1283
    :cond_3
    :goto_0
    return v3
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .line 1303
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1304
    return v0

    .line 1306
    :cond_0
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1307
    .local v1, "checkHorizontal":Z
    :goto_0
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 1309
    .local v3, "checkVertical":Z
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 1310
    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    mul-int v5, v5, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 1311
    :cond_4
    if-eqz v1, :cond_6

    .line 1312
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    .line 1313
    :cond_6
    if-eqz v3, :cond_8

    .line 1314
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    .line 1316
    :cond_8
    return v0
.end method

.method private clampMag(FFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "absMin"    # F
    .param p3, "absMax"    # F

    .line 687
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 688
    .local v0, "absValue":F
    const/4 v1, 0x0

    cmpg-float v2, v0, p2

    if-gez v2, :cond_0

    return v1

    .line 689
    :cond_0
    cmpl-float v2, v0, p3

    if-lez v2, :cond_2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    move v1, p3

    goto :goto_0

    :cond_1
    neg-float v1, p3

    :goto_0
    return v1

    .line 690
    :cond_2
    return p1
.end method

.method private clampMag(III)I
    .locals 2
    .param p1, "value"    # I
    .param p2, "absMin"    # I
    .param p3, "absMax"    # I

    .line 670
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 671
    .local v0, "absValue":I
    if-ge v0, p2, :cond_0

    const/4 v1, 0x0

    return v1

    .line 672
    :cond_0
    if-le v0, p3, :cond_2

    if-lez p1, :cond_1

    move v1, p3

    goto :goto_0

    :cond_1
    neg-int v1, p3

    :goto_0
    return v1

    .line 673
    :cond_2
    return p1
.end method

.method private clearMotionHistory()V
    .locals 2

    .line 790
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 791
    return-void

    .line 793
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 794
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 795
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 796
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 797
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 798
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 799
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 800
    iput v1, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    .line 801
    return-void
.end method

.method private clearMotionHistory(I)V
    .locals 2
    .param p1, "pointerId"    # I

    .line 804
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 808
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 809
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 810
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 811
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 812
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v1, v0, p1

    .line 813
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v1, v0, p1

    .line 814
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    .line 815
    return-void

    .line 805
    :cond_1
    :goto_0
    return-void
.end method

.method private computeAxisDuration(III)I
    .locals 7
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    .line 638
    if-nez p1, :cond_0

    .line 639
    const/4 v0, 0x0

    return v0

    .line 642
    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 643
    .local v0, "width":I
    div-int/lit8 v1, v0, 0x2

    .line 644
    .local v1, "halfWidth":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 645
    .local v2, "distanceRatio":F
    int-to-float v4, v1

    int-to-float v5, v1

    .line 646
    invoke-direct {p0, v2}, Landroidx/customview/widget/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    .line 649
    .local v4, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 650
    if-lez p2, :cond_1

    .line 651
    const/high16 v3, 0x447a0000    # 1000.0f

    int-to-float v5, p2

    div-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v5, v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    .local v3, "duration":I
    goto :goto_0

    .line 653
    .end local v3    # "duration":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p3

    div-float/2addr v5, v6

    .line 654
    .local v5, "range":F
    add-float/2addr v3, v5

    const/high16 v6, 0x43800000    # 256.0f

    mul-float v3, v3, v6

    float-to-int v3, v3

    .line 656
    .end local v5    # "range":F
    .restart local v3    # "duration":I
    :goto_0
    const/16 v5, 0x258

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    return v5
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "xvel"    # I
    .param p5, "yvel"    # I

    .line 617
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v2, v2

    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v3, v3

    move/from16 v4, p4

    invoke-direct {v0, v4, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->clampMag(III)I

    move-result v2

    .line 618
    .end local p4    # "xvel":I
    .local v2, "xvel":I
    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v3, v3

    iget v4, v0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v4, v4

    move/from16 v5, p5

    invoke-direct {v0, v5, v3, v4}, Landroidx/customview/widget/ViewDragHelper;->clampMag(III)I

    move-result v3

    .line 619
    .end local p5    # "yvel":I
    .local v3, "yvel":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 620
    .local v4, "absDx":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 621
    .local v5, "absDy":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 622
    .local v6, "absXVel":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 623
    .local v7, "absYVel":I
    add-int v8, v6, v7

    .line 624
    .local v8, "addedVel":I
    add-int v9, v4, v5

    .line 626
    .local v9, "addedDistance":I
    if-eqz v2, :cond_0

    int-to-float v10, v6

    int-to-float v11, v8

    goto :goto_0

    :cond_0
    int-to-float v10, v4

    int-to-float v11, v9

    :goto_0
    div-float/2addr v10, v11

    .line 628
    .local v10, "xweight":F
    if-eqz v3, :cond_1

    int-to-float v11, v7

    int-to-float v12, v8

    goto :goto_1

    :cond_1
    int-to-float v11, v5

    int-to-float v12, v9

    :goto_1
    div-float/2addr v11, v12

    .line 631
    .local v11, "yweight":F
    iget-object v12, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v12, v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v13, p2

    invoke-direct {v0, v13, v2, v12}, Landroidx/customview/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v12

    .line 632
    .local v12, "xduration":I
    iget-object v14, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v14, v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v14

    move/from16 v15, p3

    invoke-direct {v0, v15, v3, v14}, Landroidx/customview/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v14

    .line 634
    .local v14, "yduration":I
    int-to-float v0, v12

    mul-float v0, v0, v10

    int-to-float v1, v14

    mul-float v1, v1, v11

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 369
    invoke-static {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    .line 370
    .local v0, "helper":Landroidx/customview/widget/ViewDragHelper;
    iget v1, v0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    .line 371
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;
    .locals 2
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "cb"    # Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 355
    new-instance v0, Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/customview/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 780
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 781
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 783
    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v2, v0, :cond_0

    .line 785
    invoke-virtual {p0, v1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 787
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 2
    .param p1, "f"    # F

    .line 694
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 695
    const v0, 0x3ef1463b

    mul-float p1, p1, v0

    .line 696
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .locals 16
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 1424
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p1

    .line 1425
    .local v3, "clampedX":I
    move/from16 v4, p2

    .line 1426
    .local v4, "clampedY":I
    iget-object v5, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1427
    .local v5, "oldLeft":I
    iget-object v6, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1428
    .local v6, "oldTop":I
    if-eqz v1, :cond_0

    .line 1429
    iget-object v7, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v8, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move/from16 v9, p1

    invoke-virtual {v7, v8, v9, v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v3

    .line 1430
    iget-object v7, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v8, v3, v5

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    goto :goto_0

    .line 1428
    :cond_0
    move/from16 v9, p1

    .line 1432
    :goto_0
    if-eqz v2, :cond_1

    .line 1433
    iget-object v7, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v8, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move/from16 v15, p2

    invoke-virtual {v7, v8, v15, v2}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v4

    .line 1434
    iget-object v7, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v8, v4, v6

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 1432
    :cond_1
    move/from16 v15, p2

    .line 1437
    :goto_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 1438
    :cond_2
    sub-int v7, v3, v5

    .line 1439
    .local v7, "clampedDx":I
    sub-int v8, v4, v6

    .line 1440
    .local v8, "clampedDy":I
    iget-object v10, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v11, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v12, v3

    move v13, v4

    move v14, v7

    move v15, v8

    invoke-virtual/range {v10 .. v15}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1443
    .end local v7    # "clampedDx":I
    .end local v8    # "clampedDy":I
    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 10
    .param p1, "pointerId"    # I

    .line 818
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    if-gt v0, p1, :cond_2

    .line 819
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [F

    .line 820
    .local v0, "imx":[F
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [F

    .line 821
    .local v1, "imy":[F
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [F

    .line 822
    .local v2, "lmx":[F
    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [F

    .line 823
    .local v3, "lmy":[F
    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    .line 824
    .local v4, "iit":[I
    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [I

    .line 825
    .local v5, "edip":[I
    add-int/lit8 v6, p1, 0x1

    new-array v6, v6, [I

    .line 827
    .local v6, "edl":[I
    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_1

    .line 828
    array-length v8, v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    array-length v8, v7

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 830
    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    array-length v8, v7

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 831
    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    array-length v8, v7

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v7

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 833
    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v7

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 834
    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v7

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 837
    :cond_1
    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    .line 838
    iput-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    .line 839
    iput-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    .line 840
    iput-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    .line 841
    iput-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 842
    iput-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 843
    iput-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 845
    .end local v0    # "imx":[F
    .end local v1    # "imy":[F
    .end local v2    # "lmx":[F
    .end local v3    # "lmy":[F
    .end local v4    # "iit":[I
    .end local v5    # "edip":[I
    .end local v6    # "edl":[I
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 11
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I
    .param p3, "xvel"    # I
    .param p4, "yvel"    # I

    .line 597
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 598
    .local v0, "startLeft":I
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 599
    .local v7, "startTop":I
    sub-int v8, p1, v0

    .line 600
    .local v8, "dx":I
    sub-int v9, p2, v7

    .line 602
    .local v9, "dy":I
    if-nez v8, :cond_0

    if-nez v9, :cond_0

    .line 604
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 605
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 606
    return v1

    .line 609
    :cond_0
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v1, p0

    move v3, v8

    move v4, v9

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/customview/widget/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v10

    .line 610
    .local v10, "duration":I
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 612
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 613
    const/4 v1, 0x1

    return v1
.end method

.method private getEdgesTouched(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1499
    const/4 v0, 0x0

    .line 1501
    .local v0, "result":I
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 1502
    :cond_0
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1503
    :cond_1
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1504
    :cond_2
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    .line 1506
    :cond_3
    return v0
.end method

.method private isValidPointerForActionMove(I)Z
    .locals 2
    .param p1, "pointerId"    # I

    .line 1510
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " because ACTION_DOWN was not received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "for this pointer before ACTION_MOVE. It likely happened because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewDragHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    const/4 v0, 0x0

    return v0

    .line 1516
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 4

    .line 1413
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1414
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1415
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1414
    invoke-direct {p0, v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1417
    .local v0, "xvel":F
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1418
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1417
    invoke-direct {p0, v1, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1420
    .local v1, "yvel":F
    invoke-direct {p0, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1421
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "pointerId"    # I

    .line 1255
    const/4 v0, 0x0

    .line 1256
    .local v0, "dragsStarted":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1257
    or-int/lit8 v0, v0, 0x1

    .line 1259
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1260
    or-int/lit8 v0, v0, 0x4

    .line 1262
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1263
    or-int/lit8 v0, v0, 0x2

    .line 1265
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1266
    or-int/lit8 v0, v0, 0x8

    .line 1269
    :cond_3
    if-eqz v0, :cond_4

    .line 1270
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1271
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1273
    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .line 848
    invoke-direct {p0, p3}, Landroidx/customview/widget/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 849
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 850
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 851
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    .line 852
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    .line 853
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 857
    .local v0, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 858
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 860
    .local v2, "pointerId":I
    invoke-direct {p0, v2}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 861
    goto :goto_1

    .line 863
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 864
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 865
    .local v4, "y":F
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 866
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    .line 857
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 868
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 10

    .line 525
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 526
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 528
    .local v0, "oldX":I
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    .line 529
    .local v1, "oldY":I
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 530
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    .line 531
    .local v2, "newX":I
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v9

    .line 532
    .local v9, "newY":I
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v7, v2, v0

    sub-int v8, v9, v1

    move v5, v2

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 534
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "newX":I
    .end local v9    # "newY":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 535
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .line 933
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 934
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 935
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 936
    .local v3, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 937
    .local v4, "scrollY":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 939
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 942
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 943
    .local v14, "child":Landroid/view/View;
    add-int v7, p5, v3

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p5, v3

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v8, :cond_0

    add-int v7, p6, v4

    .line 944
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p6, v4

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    const/4 v9, 0x1

    add-int v7, p5, v3

    .line 945
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v12, v7, v8

    add-int v7, p6, v4

    .line 946
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v13, v7, v8

    .line 945
    move-object v7, p0

    move-object v8, v14

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v7 .. v13}, Landroidx/customview/widget/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 947
    return v2

    .line 939
    .end local v14    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 952
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_1
    if-eqz p2, :cond_3

    move/from16 v1, p3

    neg-int v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-nez v3, :cond_2

    move/from16 v3, p4

    neg-int v4, v3

    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_2
    move/from16 v3, p4

    goto :goto_1

    :cond_3
    move/from16 v1, p3

    move/from16 v3, p4

    :cond_4
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public cancel()V
    .locals 1

    .line 511
    const/4 v0, -0x1

    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 512
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory()V

    .line 514
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 518
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 476
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 477
    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 478
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 479
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 480
    return-void

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkTouchSlop(I)Z
    .locals 3
    .param p1, "directions"    # I

    .line 1334
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v0

    .line 1335
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1336
    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1337
    const/4 v2, 0x1

    return v2

    .line 1335
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1340
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public checkTouchSlop(II)Z
    .locals 8
    .param p1, "directions"    # I
    .param p2, "pointerId"    # I

    .line 1359
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1360
    return v1

    .line 1363
    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1364
    .local v0, "checkHorizontal":Z
    :goto_0
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 1366
    .local v3, "checkVertical":Z
    :goto_1
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    aget v4, v4, p2

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v5, v5, p2

    sub-float/2addr v4, v5

    .line 1367
    .local v4, "dx":F
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aget v5, v5, p2

    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v6, v6, p2

    sub-float/2addr v5, v6

    .line 1369
    .local v5, "dy":F
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 1370
    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    iget v7, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    mul-int v7, v7, v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 1371
    :cond_4
    if-eqz v0, :cond_6

    .line 1372
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    .line 1373
    :cond_6
    if-eqz v3, :cond_8

    .line 1374
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    .line 1376
    :cond_8
    return v1
.end method

.method public continueSettling(Z)Z
    .locals 13
    .param p1, "deferCallbacks"    # Z

    .line 735
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 736
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 737
    .local v0, "keepGoing":Z
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    .line 738
    .local v3, "x":I
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    .line 739
    .local v10, "y":I
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v11, v3, v4

    .line 740
    .local v11, "dx":I
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v12, v10, v4

    .line 742
    .local v12, "dy":I
    if-eqz v11, :cond_0

    .line 743
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-static {v4, v11}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 745
    :cond_0
    if-eqz v12, :cond_1

    .line 746
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-static {v4, v12}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 749
    :cond_1
    if-nez v11, :cond_2

    if-eqz v12, :cond_3

    .line 750
    :cond_2
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v6, v3

    move v7, v10

    move v8, v11

    move v9, v12

    invoke-virtual/range {v4 .. v9}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 753
    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v4

    if-ne v10, v4, :cond_4

    .line 756
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 757
    const/4 v0, 0x0

    .line 760
    :cond_4
    if-nez v0, :cond_6

    .line 761
    if-eqz p1, :cond_5

    .line 762
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 764
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 769
    .end local v0    # "keepGoing":Z
    .end local v3    # "x":I
    .end local v10    # "y":I
    .end local v11    # "dx":I
    .end local v12    # "dy":I
    :cond_6
    :goto_0
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1487
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1488
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1489
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1490
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 1491
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 1492
    return-object v2

    .line 1488
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1495
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public flingCapturedView(IIII)V
    .locals 10
    .param p1, "minLeft"    # I
    .param p2, "minTop"    # I
    .param p3, "maxLeft"    # I
    .param p4, "maxTop"    # I

    .line 710
    iget-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    .line 715
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 716
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 717
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v5, v0

    .line 715
    move v6, p1

    move v7, p3

    move v8, p2

    move v9, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 720
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 721
    return-void

    .line 711
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActivePointerId()I
    .locals 1

    .line 495
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .line 487
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    .line 459
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .line 422
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .line 503
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .line 431
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1455
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isEdgeTouched(I)Z
    .locals 3
    .param p1, "edges"    # I

    .line 1389
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v0, v0

    .line 1390
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1391
    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1392
    const/4 v2, 0x1

    return v2

    .line 1390
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1395
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isEdgeTouched(II)Z
    .locals 1
    .param p1, "edges"    # I
    .param p2, "pointerId"    # I

    .line 1409
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p2

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPointerDown(I)Z
    .locals 3
    .param p1, "pointerId"    # I

    .line 884
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 1468
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1469
    return v0

    .line 1471
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 1472
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 1473
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 1474
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1097
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1098
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1100
    .local v1, "actionIndex":I
    if-nez v0, :cond_0

    .line 1103
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 1106
    :cond_0
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1107
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1109
    :cond_1
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1111
    if-eqz v0, :cond_15

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    const/4 v3, 0x3

    if-eq v0, v3, :cond_a

    const/4 v3, 0x5

    if-eq v0, v3, :cond_7

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_7

    .line 1206
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 1207
    .local v3, "pointerId":I
    iget v4, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v4, v2, :cond_6

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v3, v2, :cond_6

    .line 1209
    const/4 v2, -0x1

    .line 1210
    .local v2, "newActivePointer":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 1211
    .local v4, "pointerCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_5

    .line 1212
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 1213
    .local v6, "id":I
    iget v7, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v6, v7, :cond_3

    .line 1215
    goto :goto_1

    .line 1218
    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1219
    .local v7, "x":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1220
    .local v8, "y":F
    float-to-int v9, v7

    float-to-int v10, v8

    invoke-virtual {p0, v9, v10}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v9, v10, :cond_4

    .line 1221
    invoke-virtual {p0, v10, v6}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1222
    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1223
    goto :goto_2

    .line 1211
    .end local v6    # "id":I
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1227
    .end local v5    # "i":I
    :cond_5
    :goto_2
    const/4 v5, -0x1

    if-ne v2, v5, :cond_6

    .line 1229
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1232
    .end local v2    # "newActivePointer":I
    .end local v4    # "pointerCount":I
    :cond_6
    invoke-direct {p0, v3}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory(I)V

    .line 1233
    goto/16 :goto_7

    .line 1133
    .end local v3    # "pointerId":I
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1134
    .local v2, "pointerId":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1135
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1137
    .local v4, "y":F
    invoke-direct {p0, v3, v4, v2}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1140
    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v5, :cond_8

    .line 1143
    float-to-int v5, v3

    float-to-int v6, v4

    invoke-virtual {p0, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    .line 1144
    .local v5, "toCapture":Landroid/view/View;
    invoke-virtual {p0, v5, v2}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1146
    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v6, v6, v2

    .line 1147
    .local v6, "edgesTouched":I
    iget v7, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v8, v6, v7

    if-eqz v8, :cond_9

    .line 1148
    iget-object v8, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v7, v6

    invoke-virtual {v8, v7, v2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_3

    .line 1150
    .end local v5    # "toCapture":Landroid/view/View;
    .end local v6    # "edgesTouched":I
    :cond_8
    float-to-int v5, v3

    float-to-int v6, v4

    invoke-virtual {p0, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1155
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v5, v2}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_7

    .line 1150
    :cond_9
    :goto_3
    goto/16 :goto_7

    .line 1245
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_a
    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v3, v2, :cond_b

    .line 1246
    const/4 v2, 0x0

    invoke-direct {p0, v2, v2}, Landroidx/customview/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1248
    :cond_b
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_7

    .line 1161
    :cond_c
    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v3, v2, :cond_e

    .line 1163
    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    invoke-direct {p0, v2}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_7

    .line 1165
    :cond_d
    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1166
    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1167
    .restart local v3    # "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1168
    .restart local v4    # "y":F
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    iget v6, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    aget v5, v5, v6

    sub-float v5, v3, v5

    float-to-int v5, v5

    .line 1169
    .local v5, "idx":I
    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aget v6, v7, v6

    sub-float v6, v4, v6

    float-to-int v6, v6

    .line 1171
    .local v6, "idy":I
    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v7, v5

    iget-object v8, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v8, v6

    invoke-direct {p0, v7, v8, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->dragTo(IIII)V

    .line 1173
    invoke-direct {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1174
    .end local v2    # "index":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "idx":I
    .end local v6    # "idy":I
    goto/16 :goto_7

    .line 1176
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 1177
    .local v3, "pointerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v3, :cond_12

    .line 1178
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 1181
    .local v5, "pointerId":I
    invoke-direct {p0, v5}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_5

    .line 1183
    :cond_f
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 1184
    .local v6, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 1185
    .local v7, "y":F
    iget-object v8, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v8, v8, v5

    sub-float v8, v6, v8

    .line 1186
    .local v8, "dx":F
    iget-object v9, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v9, v9, v5

    sub-float v9, v7, v9

    .line 1188
    .local v9, "dy":F
    invoke-direct {p0, v8, v9, v5}, Landroidx/customview/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1189
    iget v10, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v10, v2, :cond_10

    .line 1191
    goto :goto_6

    .line 1194
    :cond_10
    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {p0, v10, v11}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v10

    .line 1195
    .local v10, "toCapture":Landroid/view/View;
    invoke-direct {p0, v10, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1196
    invoke-virtual {p0, v10, v5}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1197
    goto :goto_6

    .line 1177
    .end local v5    # "pointerId":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v10    # "toCapture":Landroid/view/View;
    :cond_11
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1200
    .end local v4    # "i":I
    :cond_12
    :goto_6
    invoke-direct {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1202
    .end local v3    # "pointerCount":I
    goto :goto_7

    .line 1237
    :cond_13
    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v3, v2, :cond_14

    .line 1238
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1240
    :cond_14
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 1241
    goto :goto_7

    .line 1113
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1114
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1115
    .local v3, "y":F
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1116
    .local v4, "pointerId":I
    float-to-int v5, v2

    float-to-int v6, v3

    invoke-virtual {p0, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    .line 1118
    .local v5, "toCapture":Landroid/view/View;
    invoke-direct {p0, v2, v3, v4}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1123
    invoke-virtual {p0, v5, v4}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1125
    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v6, v6, v4

    .line 1126
    .local v6, "edgesTouched":I
    iget v7, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v8, v6, v7

    if-eqz v8, :cond_16

    .line 1127
    iget-object v8, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v7, v6

    invoke-virtual {v8, v7, v4}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1252
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v4    # "pointerId":I
    .end local v5    # "toCapture":Landroid/view/View;
    .end local v6    # "edgesTouched":I
    :cond_16
    :goto_7
    return-void
.end method

.method setDragState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 888
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 889
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 890
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    .line 891
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 892
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v0, :cond_0

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 896
    :cond_0
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0
    .param p1, "edgeFlags"    # I

    .line 447
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    .line 448
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0
    .param p1, "minVel"    # F

    .line 411
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    .line 412
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I

    .line 577
    iget-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 583
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 584
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 582
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0

    .line 578
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 963
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 964
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 966
    .local v3, "actionIndex":I
    if-nez v2, :cond_0

    .line 969
    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 972
    :cond_0
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 973
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 975
    :cond_1
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 977
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_15

    if-eq v2, v6, :cond_14

    if-eq v2, v5, :cond_8

    const/4 v7, 0x3

    if-eq v2, v7, :cond_7

    const/4 v7, 0x5

    if-eq v2, v7, :cond_3

    const/4 v5, 0x6

    if-eq v2, v5, :cond_2

    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1075
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 1076
    .local v5, "pointerId":I
    invoke-direct {v0, v5}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory(I)V

    .line 1077
    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v4, 0x0

    goto/16 :goto_6

    .line 999
    .end local v5    # "pointerId":I
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 1000
    .local v7, "pointerId":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 1001
    .local v8, "x":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 1003
    .local v9, "y":F
    invoke-direct {v0, v8, v9, v7}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1006
    iget v10, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v10, :cond_4

    .line 1007
    iget-object v5, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v5, v5, v7

    .line 1008
    .local v5, "edgesTouched":I
    iget v10, v0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v11, v5, v10

    if-eqz v11, :cond_6

    .line 1009
    iget-object v11, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v10, v5

    invoke-virtual {v11, v10, v7}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1011
    .end local v5    # "edgesTouched":I
    :cond_4
    if-ne v10, v5, :cond_6

    .line 1013
    float-to-int v5, v8

    float-to-int v10, v9

    invoke-virtual {v0, v5, v10}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    .line 1014
    .local v5, "toCapture":Landroid/view/View;
    iget-object v10, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v5, v10, :cond_5

    .line 1015
    invoke-virtual {v0, v5, v7}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1017
    .end local v5    # "toCapture":Landroid/view/View;
    :cond_5
    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1011
    :cond_6
    :goto_0
    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v4, 0x0

    goto/16 :goto_6

    .line 977
    .end local v7    # "pointerId":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_7
    move/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_5

    .line 1022
    :cond_8
    iget-object v5, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v5, :cond_13

    iget-object v5, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    if-nez v5, :cond_9

    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1025
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 1026
    .local v5, "pointerCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_11

    .line 1027
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 1030
    .local v8, "pointerId":I
    invoke-direct {v0, v8}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v9

    if-nez v9, :cond_a

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v19, v5

    goto/16 :goto_3

    .line 1032
    :cond_a
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 1033
    .local v9, "x":F
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 1034
    .local v10, "y":F
    iget-object v11, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v11, v11, v8

    sub-float v11, v9, v11

    .line 1035
    .local v11, "dx":F
    iget-object v12, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v12, v12, v8

    sub-float v12, v10, v12

    .line 1037
    .local v12, "dy":F
    float-to-int v13, v9

    float-to-int v14, v10

    invoke-virtual {v0, v13, v14}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v13

    .line 1038
    .local v13, "toCapture":Landroid/view/View;
    if-eqz v13, :cond_b

    invoke-direct {v0, v13, v11, v12}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x1

    goto :goto_2

    :cond_b
    const/4 v14, 0x0

    .line 1039
    .local v14, "pastSlop":Z
    :goto_2
    if-eqz v14, :cond_d

    .line 1045
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 1046
    .local v15, "oldLeft":I
    float-to-int v4, v11

    add-int/2addr v4, v15

    .line 1047
    .local v4, "targetLeft":I
    iget-object v6, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move/from16 v16, v2

    .end local v2    # "action":I
    .local v16, "action":I
    float-to-int v2, v11

    invoke-virtual {v6, v13, v4, v2}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    .line 1049
    .local v2, "newLeft":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1050
    .local v6, "oldTop":I
    move/from16 v17, v3

    .end local v3    # "actionIndex":I
    .local v17, "actionIndex":I
    float-to-int v3, v12

    add-int/2addr v3, v6

    .line 1051
    .local v3, "targetTop":I
    move/from16 v18, v4

    .end local v4    # "targetLeft":I
    .local v18, "targetLeft":I
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move/from16 v19, v5

    .end local v5    # "pointerCount":I
    .local v19, "pointerCount":I
    float-to-int v5, v12

    invoke-virtual {v4, v13, v3, v5}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v4

    .line 1053
    .local v4, "newTop":I
    iget-object v5, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v5, v13}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v5

    .line 1054
    .local v5, "hDragRange":I
    move/from16 v20, v3

    .end local v3    # "targetTop":I
    .local v20, "targetTop":I
    iget-object v3, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, v13}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v3

    .line 1055
    .local v3, "vDragRange":I
    if-eqz v5, :cond_c

    if-lez v5, :cond_e

    if-ne v2, v15, :cond_e

    :cond_c
    if-eqz v3, :cond_12

    if-lez v3, :cond_e

    if-ne v4, v6, :cond_e

    .line 1057
    goto :goto_4

    .line 1039
    .end local v4    # "newTop":I
    .end local v6    # "oldTop":I
    .end local v15    # "oldLeft":I
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .end local v18    # "targetLeft":I
    .end local v19    # "pointerCount":I
    .end local v20    # "targetTop":I
    .local v2, "action":I
    .local v3, "actionIndex":I
    .local v5, "pointerCount":I
    :cond_d
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v19, v5

    .line 1060
    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .end local v5    # "pointerCount":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    .restart local v19    # "pointerCount":I
    :cond_e
    invoke-direct {v0, v11, v12, v8}, Landroidx/customview/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1061
    iget v2, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 1063
    goto :goto_4

    .line 1066
    :cond_f
    if-eqz v14, :cond_10

    invoke-virtual {v0, v13, v8}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1067
    goto :goto_4

    .line 1026
    .end local v8    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "dx":F
    .end local v12    # "dy":F
    .end local v13    # "toCapture":Landroid/view/View;
    .end local v14    # "pastSlop":Z
    :cond_10
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v5, v19

    const/4 v6, 0x1

    goto/16 :goto_1

    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .end local v19    # "pointerCount":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    .restart local v5    # "pointerCount":I
    :cond_11
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v19, v5

    .line 1070
    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .end local v5    # "pointerCount":I
    .end local v7    # "i":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    .restart local v19    # "pointerCount":I
    :cond_12
    :goto_4
    invoke-direct/range {p0 .. p1}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1071
    const/4 v4, 0x0

    goto :goto_6

    .line 1022
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .end local v19    # "pointerCount":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    :cond_13
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    const/4 v4, 0x0

    goto :goto_6

    .line 977
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    :cond_14
    move/from16 v16, v2

    move/from16 v17, v3

    .line 1082
    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    const/4 v4, 0x0

    goto :goto_6

    .line 979
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    :cond_15
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 980
    .local v2, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 981
    .local v3, "y":F
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 982
    .local v6, "pointerId":I
    invoke-direct {v0, v2, v3, v6}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 984
    float-to-int v7, v2

    float-to-int v8, v3

    invoke-virtual {v0, v7, v8}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 987
    .local v7, "toCapture":Landroid/view/View;
    iget-object v8, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v7, v8, :cond_16

    iget v8, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v8, v5, :cond_16

    .line 988
    invoke-virtual {v0, v7, v6}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 991
    :cond_16
    iget-object v5, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v5, v5, v6

    .line 992
    .local v5, "edgesTouched":I
    iget v8, v0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v9, v5, v8

    if-eqz v9, :cond_17

    .line 993
    iget-object v9, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v8, v5

    invoke-virtual {v9, v8, v6}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1087
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v5    # "edgesTouched":I
    .end local v6    # "pointerId":I
    .end local v7    # "toCapture":Landroid/view/View;
    :cond_17
    :goto_6
    iget v2, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    goto :goto_7

    :cond_18
    const/4 v3, 0x0

    :goto_7
    return v3
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I

    .line 552
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 553
    const/4 v0, -0x1

    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 555
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Landroidx/customview/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    .line 556
    .local v0, "continueSliding":Z
    if-nez v0, :cond_0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 559
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 562
    :cond_0
    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .line 908
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v0, p2, :cond_0

    .line 910
    return v1

    .line 912
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 913
    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 914
    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 915
    return v1

    .line 917
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
