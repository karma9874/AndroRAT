.class public Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
.source "ConstraintTableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;,
        Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x0

.field private static final ALIGN_FULL:I = 0x3

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2


# instance fields
.field private mHorizontalGuidelines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;",
            ">;"
        }
    .end annotation
.end field

.field private mNumCols:I

.field private mNumRows:I

.field private mPadding:I

.field private mVerticalGrowth:Z

.field private mVerticalGuidelines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;",
            ">;"
        }
    .end annotation
.end field

.field private system:Landroidx/constraintlayout/solver/LinearSystem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 30
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    .line 67
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 88
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>(II)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 30
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    .line 89
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>(IIII)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 30
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    .line 79
    return-void
.end method

.method private setChildrenConnections()V
    .locals 15

    .line 481
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 482
    .local v0, "count":I
    const/4 v1, 0x0

    .line 483
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 484
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 485
    .local v3, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getContainerItemSkip()I

    move-result v4

    add-int/2addr v1, v4

    .line 487
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    rem-int v5, v1, v4

    .line 488
    .local v5, "col":I
    div-int v4, v1, v4

    .line 490
    .local v4, "row":I
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;

    .line 491
    .local v6, "horizontalSlice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    .line 492
    .local v7, "verticalSlice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->left:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 493
    .local v8, "targetLeft":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 494
    .local v9, "targetRight":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v10, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->top:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 495
    .local v10, "targetTop":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v11, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 497
    .local v11, "targetBottom":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 498
    invoke-virtual {v8, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 499
    instance-of v12, v9, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v12, :cond_0

    .line 500
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 501
    invoke-virtual {v9, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_1

    .line 503
    :cond_0
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 504
    invoke-virtual {v9, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 508
    :goto_1
    iget v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_3

    const/4 v13, 0x2

    if-eq v12, v13, :cond_2

    const/4 v13, 0x3

    if-eq v12, v13, :cond_1

    goto :goto_2

    .line 510
    :cond_1
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 512
    goto :goto_2

    .line 521
    :cond_2
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    .line 523
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    goto :goto_2

    .line 514
    :cond_3
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    .line 516
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    .line 519
    nop

    .line 528
    :goto_2
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 529
    invoke-virtual {v10, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 530
    instance-of v12, v11, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v12, :cond_4

    .line 531
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 532
    invoke-virtual {v11, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_3

    .line 534
    :cond_4
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 535
    invoke-virtual {v11, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 538
    :goto_3
    nop

    .end local v3    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v4    # "row":I
    .end local v5    # "col":I
    .end local v6    # "horizontalSlice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    .end local v7    # "verticalSlice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    .end local v8    # "targetLeft":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "targetRight":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v10    # "targetTop":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v11    # "targetBottom":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v1, v1, 0x1

    .line 483
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 540
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method private setHorizontalSlices()V
    .locals 7

    .line 453
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 454
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    .line 455
    .local v1, "increment":F
    move v0, v1

    .line 456
    .local v0, "percent":F
    move-object v2, p0

    .line 457
    .local v2, "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-ge v3, v4, :cond_1

    .line 458
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;

    invoke-direct {v4, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;)V

    .line 459
    .local v4, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    iput-object v2, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->top:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 460
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_0

    .line 461
    new-instance v5, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-direct {v5}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    .line 462
    .local v5, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    .line 463
    invoke-virtual {v5, p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 464
    float-to-int v6, v0

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(I)V

    .line 465
    add-float/2addr v0, v1

    .line 466
    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 467
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    .end local v5    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    goto :goto_1

    .line 469
    :cond_0
    iput-object p0, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 471
    :goto_1
    iget-object v2, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 472
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .end local v4    # "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 474
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    .line 475
    return-void
.end method

.method private setVerticalSlices()V
    .locals 7

    .line 424
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 425
    move-object v0, p0

    .line 426
    .local v0, "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v2, v1

    .line 427
    .local v2, "increment":F
    move v1, v2

    .line 428
    .local v1, "percent":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-ge v3, v4, :cond_1

    .line 429
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    invoke-direct {v4, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;)V

    .line 430
    .local v4, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    iput-object v0, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->left:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 431
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_0

    .line 432
    new-instance v5, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-direct {v5}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    .line 433
    .local v5, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    .line 434
    invoke-virtual {v5, p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 435
    float-to-int v6, v1

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(I)V

    .line 436
    add-float/2addr v1, v2

    .line 437
    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 438
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v5    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    goto :goto_1

    .line 440
    :cond_0
    iput-object p0, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 442
    :goto_1
    iget-object v0, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 443
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    .end local v4    # "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 445
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    .line 446
    return-void
.end method

.method private updateDebugSolverNames()V
    .locals 6

    .line 406
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    if-nez v0, :cond_0

    .line 407
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 410
    .local v0, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 411
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".VG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 414
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 415
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".HG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 417
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 8
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 316
    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 317
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 318
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 319
    return-void

    .line 321
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    .line 324
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    if-ne p1, v1, :cond_5

    .line 325
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 326
    .local v1, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v1, :cond_2

    .line 327
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 328
    .local v5, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    nop

    .line 329
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_1

    const/4 v3, 0x1

    .line 328
    :cond_1
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->setPositionRelaxed(Z)V

    .line 330
    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 326
    .end local v5    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 333
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 334
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 335
    .restart local v5    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    nop

    .line 336
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 335
    :goto_2
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setPositionRelaxed(Z)V

    .line 337
    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 333
    .end local v5    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 339
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_5

    .line 340
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 341
    .local v3, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v3, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 339
    .end local v3    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 344
    .end local v1    # "num":I
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method public computeGuidelinesPercentPositions()V
    .locals 3

    .line 580
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 581
    .local v0, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 582
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativePercentPosition()V

    .line 581
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 585
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 586
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativePercentPosition()V

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 588
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public cycleColumnAlignment(I)V
    .locals 4
    .param p1, "column"    # I

    .line 252
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    .line 253
    .local v0, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iput v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    .line 259
    goto :goto_0

    .line 255
    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    .line 256
    goto :goto_0

    .line 261
    :cond_2
    iput v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    .line 264
    :goto_0
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    .line 265
    return-void
.end method

.method public getColumnAlignmentRepresentation(I)Ljava/lang/String;
    .locals 3
    .param p1, "column"    # I

    .line 158
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    .line 159
    .local v0, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 160
    const-string v1, "L"

    return-object v1

    .line 161
    :cond_0
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    if-nez v1, :cond_1

    .line 162
    const-string v1, "C"

    return-object v1

    .line 163
    :cond_1
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 164
    const-string v1, "F"

    return-object v1

    .line 165
    :cond_2
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 166
    const-string v1, "R"

    return-object v1

    .line 168
    :cond_3
    const-string v1, "!"

    return-object v1
.end method

.method public getColumnsAlignmentRepresentation()Ljava/lang/String;
    .locals 6

    .line 134
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 135
    .local v0, "numSlices":I
    const-string v1, ""

    .line 136
    .local v1, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 137
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    .line 138
    .local v3, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 140
    :cond_0
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    if-nez v4, :cond_1

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 142
    :cond_1
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 144
    :cond_2
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .end local v3    # "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "i":I
    :cond_4
    return-object v1
.end method

.method public getHorizontalGuidelines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumCols()I
    .locals 1

    .line 116
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .line 107
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    return v0
.end method

.method public getPadding()I
    .locals 1

    .line 125
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "ConstraintTableLayout"

    return-object v0
.end method

.method public getVerticalGuidelines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handlesInternalConstraints()Z
    .locals 1

    .line 573
    const/4 v0, 0x1

    return v0
.end method

.method public isVerticalGrowth()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    return v0
.end method

.method public setColumnAlignment(II)V
    .locals 1
    .param p1, "column"    # I
    .param p2, "alignment"    # I

    .line 239
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 240
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    .line 241
    .local v0, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    iput p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    .line 242
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    .line 244
    .end local v0    # "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    :cond_0
    return-void
.end method

.method public setColumnAlignment(Ljava/lang/String;)V
    .locals 5
    .param p1, "alignment"    # Ljava/lang/String;

    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 275
    .local v2, "c":C
    const/16 v3, 0x4c

    if-ne v2, v3, :cond_0

    .line 276
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_1

    .line 277
    :cond_0
    const/16 v3, 0x43

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 278
    invoke-virtual {p0, v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_1

    .line 279
    :cond_1
    const/16 v3, 0x46

    if-ne v2, v3, :cond_2

    .line 280
    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_1

    .line 281
    :cond_2
    const/16 v3, 0x52

    if-ne v2, v3, :cond_3

    .line 282
    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_1

    .line 284
    :cond_3
    invoke-virtual {p0, v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    .line 273
    .end local v2    # "c":C
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_4
    return-void
.end method

.method public setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "name"    # Ljava/lang/String;

    .line 398
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    .line 399
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    .line 401
    return-void
.end method

.method public setNumCols(I)V
    .locals 1
    .param p1, "num"    # I

    .line 179
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-eq v0, p1, :cond_0

    .line 180
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 181
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setVerticalSlices()V

    .line 182
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    .line 184
    :cond_0
    return-void
.end method

.method public setNumRows(I)V
    .locals 1
    .param p1, "num"    # I

    .line 194
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-eq v0, p1, :cond_0

    .line 195
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 196
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setHorizontalSlices()V

    .line 197
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    .line 199
    :cond_0
    return-void
.end method

.method public setPadding(I)V
    .locals 1
    .param p1, "padding"    # I

    .line 226
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 227
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    .line 229
    :cond_0
    return-void
.end method

.method public setTableDimensions()V
    .locals 6

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "extra":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 353
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 354
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 355
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getContainerItemSkip()I

    move-result v4

    add-int/2addr v0, v4

    .line 353
    .end local v3    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    .end local v2    # "i":I
    :cond_0
    add-int/2addr v1, v0

    .line 358
    iget-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 359
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-nez v2, :cond_1

    .line 360
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setNumCols(I)V

    .line 362
    :cond_1
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    div-int v4, v1, v2

    .line 363
    .local v4, "rows":I
    mul-int v2, v2, v4

    if-ge v2, v1, :cond_2

    .line 364
    add-int/lit8 v4, v4, 0x1

    .line 366
    :cond_2
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 367
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    sub-int/2addr v5, v3

    if-ne v2, v5, :cond_3

    .line 368
    return-void

    .line 370
    :cond_3
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 371
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setHorizontalSlices()V

    .line 372
    .end local v4    # "rows":I
    goto :goto_1

    .line 373
    :cond_4
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-nez v2, :cond_5

    .line 374
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setNumRows(I)V

    .line 376
    :cond_5
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    div-int v4, v1, v2

    .line 377
    .local v4, "cols":I
    mul-int v2, v2, v4

    if-ge v2, v1, :cond_6

    .line 378
    add-int/lit8 v4, v4, 0x1

    .line 380
    :cond_6
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 381
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    sub-int/2addr v5, v3

    if-ne v2, v5, :cond_7

    .line 382
    return-void

    .line 384
    :cond_7
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 385
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setVerticalSlices()V

    .line 387
    .end local v4    # "cols":I
    :goto_1
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    .line 388
    return-void
.end method

.method public setVerticalGrowth(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 217
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    .line 218
    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 3
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 549
    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 552
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    if-ne p1, v0, :cond_1

    .line 553
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 554
    .local v0, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 555
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 556
    .local v2, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 554
    .end local v2    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 559
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 560
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 561
    .restart local v2    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 559
    .end local v2    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 564
    .end local v0    # "num":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
