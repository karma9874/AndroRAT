.class public Landroidx/constraintlayout/solver/widgets/Barrier;
.super Landroidx/constraintlayout/solver/widgets/Helper;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final TOP:I = 0x2


# instance fields
.field private mAllowsGoneWidget:Z

.field private mBarrierType:I

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/Helper;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 11
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 209
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 210
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 211
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 212
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 214
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    iput-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-ltz v0, :cond_12

    const/4 v1, 0x4

    if-ge v0, v1, :cond_12

    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v0, v0, v1

    .line 223
    .local v0, "position":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v1, 0x0

    .line 224
    .local v1, "hasMatchConstraintWidgets":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v6, v7, :cond_6

    .line 225
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v6

    .line 226
    .local v7, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-boolean v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v8, :cond_1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v8

    if-nez v8, :cond_1

    .line 227
    goto :goto_2

    .line 229
    :cond_1
    iget v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v8, :cond_2

    if-ne v8, v4, :cond_3

    .line 230
    :cond_2
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_3

    .line 231
    const/4 v1, 0x1

    .line 232
    goto :goto_3

    .line 233
    :cond_3
    iget v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eq v8, v3, :cond_4

    if-ne v8, v5, :cond_5

    .line 234
    :cond_4
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_5

    .line 235
    const/4 v1, 0x1

    .line 236
    goto :goto_3

    .line 224
    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 239
    .end local v6    # "i":I
    :cond_6
    :goto_3
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v6, :cond_8

    if-ne v6, v4, :cond_7

    goto :goto_4

    .line 244
    :cond_7
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Barrier;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_9

    .line 245
    const/4 v1, 0x0

    goto :goto_5

    .line 240
    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Barrier;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_9

    .line 241
    const/4 v1, 0x0

    .line 248
    :cond_9
    :goto_5
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v6, v7, :cond_d

    .line 249
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v6

    .line 250
    .restart local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-boolean v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v8, :cond_a

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v8

    if-nez v8, :cond_a

    .line 251
    goto :goto_8

    .line 253
    :cond_a
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v8, v8, v9

    invoke-virtual {p1, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    .line 254
    .local v8, "target":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v10, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v9, v9, v10

    iput-object v8, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 255
    if-eqz v10, :cond_c

    if-ne v10, v3, :cond_b

    goto :goto_7

    .line 258
    :cond_b
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v9, v8, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Z)V

    goto :goto_8

    .line 256
    :cond_c
    :goto_7
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v9, v8, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Z)V

    .line 248
    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v8    # "target":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 262
    .end local v6    # "i":I
    :cond_d
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v7, 0x5

    const/4 v8, 0x6

    if-nez v6, :cond_e

    .line 263
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 264
    if-nez v1, :cond_11

    .line 265
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_9

    .line 267
    :cond_e
    if-ne v6, v4, :cond_f

    .line 268
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 269
    if-nez v1, :cond_11

    .line 270
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_9

    .line 272
    :cond_f
    if-ne v6, v3, :cond_10

    .line 273
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 274
    if-nez v1, :cond_11

    .line 275
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_9

    .line 277
    :cond_10
    if-ne v6, v5, :cond_11

    .line 278
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 279
    if-nez v1, :cond_11

    .line 280
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v3, v4, v2, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 283
    :cond_11
    :goto_9
    return-void

    .line 219
    .end local v0    # "position":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v1    # "hasMatchConstraintWidgets":Z
    :cond_12
    return-void
.end method

.method public allowedInBarrier()Z
    .locals 1

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public allowsGoneWidget()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return v0
.end method

.method public analyze(I)V
    .locals 8
    .param p1, "optimizationLevel"    # I

    .line 65
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    return-void

    .line 73
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    .line 87
    return-void

    .line 84
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 85
    .local v0, "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    goto :goto_0

    .line 81
    .end local v0    # "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 82
    .restart local v0    # "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    goto :goto_0

    .line 78
    .end local v0    # "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 79
    .restart local v0    # "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    goto :goto_0

    .line 75
    .end local v0    # "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 76
    .restart local v0    # "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    nop

    .line 89
    :goto_0
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 91
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_7

    if-ne v4, v3, :cond_6

    goto :goto_1

    .line 95
    :cond_6
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 96
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto :goto_2

    .line 92
    :cond_7
    :goto_1
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 93
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 99
    :goto_2
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 100
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v4, v5, :cond_e

    .line 101
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v4

    .line 102
    .local v5, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-boolean v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v6, :cond_8

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v6

    if-nez v6, :cond_8

    .line 103
    goto :goto_5

    .line 105
    :cond_8
    const/4 v6, 0x0

    .line 106
    .local v6, "depends":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v7, :cond_c

    if-eq v7, v3, :cond_b

    if-eq v7, v1, :cond_a

    if-eq v7, v2, :cond_9

    goto :goto_4

    .line 117
    :cond_9
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    goto :goto_4

    .line 114
    :cond_a
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    .line 115
    goto :goto_4

    .line 111
    :cond_b
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    .line 112
    goto :goto_4

    .line 108
    :cond_c
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    .line 109
    nop

    .line 120
    :goto_4
    if-eqz v6, :cond_d

    .line 121
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 100
    .end local v5    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v6    # "depends":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_d
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 125
    .end local v4    # "i":I
    :cond_e
    return-void
.end method

.method public resetResolutionNodes()V
    .locals 1

    .line 55
    invoke-super {p0}, Landroidx/constraintlayout/solver/widgets/Helper;->resetResolutionNodes()V

    .line 56
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    return-void
.end method

.method public resolve()V
    .locals 12

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    const/4 v1, 0x0

    .line 134
    .local v1, "value":F
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    .line 150
    return-void

    .line 147
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 148
    goto :goto_0

    .line 143
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 144
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 145
    goto :goto_0

    .line 140
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 141
    goto :goto_0

    .line 136
    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 137
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 138
    nop

    .line 153
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 154
    .local v2, "count":I
    const/4 v6, 0x0

    .line 155
    .local v6, "resolvedTarget":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_8

    .line 156
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 157
    .local v8, "n":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    iget v9, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-eq v9, v5, :cond_4

    .line 158
    return-void

    .line 160
    :cond_4
    iget v9, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v9, :cond_6

    if-ne v9, v4, :cond_5

    goto :goto_2

    .line 166
    :cond_5
    iget v9, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpl-float v9, v9, v1

    if-lez v9, :cond_7

    .line 167
    iget v1, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 168
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    goto :goto_3

    .line 161
    :cond_6
    :goto_2
    iget v9, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpg-float v9, v9, v1

    if-gez v9, :cond_7

    .line 162
    iget v1, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 163
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 155
    .end local v8    # "n":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_7
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 173
    .end local v7    # "i":I
    :cond_8
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 174
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v7

    iget-wide v8, v7, Landroidx/constraintlayout/solver/Metrics;->barrierConnectionResolved:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroidx/constraintlayout/solver/Metrics;->barrierConnectionResolved:J

    .line 180
    :cond_9
    iput-object v6, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 181
    iput v1, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 182
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 183
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v7, :cond_d

    if-eq v7, v5, :cond_c

    if-eq v7, v4, :cond_b

    if-eq v7, v3, :cond_a

    .line 197
    return-void

    .line 194
    :cond_a
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 195
    goto :goto_4

    .line 191
    :cond_b
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 192
    goto :goto_4

    .line 188
    :cond_c
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 189
    goto :goto_4

    .line 185
    :cond_d
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 186
    nop

    .line 199
    :goto_4
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 0
    .param p1, "allowsGoneWidget"    # Z

    .line 49
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method

.method public setBarrierType(I)V
    .locals 0
    .param p1, "barrierType"    # I

    .line 46
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    .line 47
    return-void
.end method
