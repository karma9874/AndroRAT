.class public Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
.super Landroidx/constraintlayout/solver/widgets/ResolutionNode;
.source "ResolutionAnchor.java"


# static fields
.field public static final BARRIER_CONNECTION:I = 0x5

.field public static final CENTER_CONNECTION:I = 0x2

.field public static final CHAIN_CONNECTION:I = 0x4

.field public static final DIRECT_CONNECTION:I = 0x1

.field public static final MATCH_CONNECTION:I = 0x3

.field public static final UNCONNECTED:I


# instance fields
.field computedValue:F

.field private dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

.field private dimensionMultiplier:I

.field myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field offset:F

.field private opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

.field private oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

.field private oppositeDimensionMultiplier:I

.field private oppositeOffset:F

.field resolvedOffset:F

.field resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

.field target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

.field type:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .locals 2
    .param p1, "anchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 51
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 47
    const/4 v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    .line 48
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 49
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    .line 52
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 53
    return-void
.end method


# virtual methods
.method addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 4
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 304
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 306
    .local v0, "sv":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v1, :cond_0

    .line 307
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 310
    .local v1, "v":Landroidx/constraintlayout/solver/SolverVariable;
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    add-float/2addr v3, v2

    float-to-int v2, v3

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 312
    .end local v1    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_0
    return-void
.end method

.method public dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "node"    # Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .param p3, "offset"    # I

    .line 262
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 263
    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 264
    int-to-float v0, p3

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 265
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 269
    return-void
.end method

.method public dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V
    .locals 1
    .param p1, "node"    # Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .param p2, "offset"    # I

    .line 272
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 273
    int-to-float v0, p2

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 274
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 278
    return-void
.end method

.method public dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V
    .locals 1
    .param p1, "node"    # Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .param p2, "multiplier"    # I
    .param p3, "dimension"    # Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 281
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 282
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 283
    iput-object p3, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 284
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    .line 285
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 290
    return-void
.end method

.method public getResolvedValue()F
    .locals 1

    .line 315
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    return v0
.end method

.method public remove(Landroidx/constraintlayout/solver/widgets/ResolutionDimension;)V
    .locals 3
    .param p1, "resolutionDimension"    # Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 56
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 57
    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 58
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    int-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    goto :goto_0

    .line 59
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-ne v0, v2, :cond_1

    .line 60
    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 61
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    int-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve()V

    .line 64
    return-void
.end method

.method public reset()V
    .locals 3

    .line 229
    invoke-super {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->reset()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 231
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 232
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 233
    const/4 v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    .line 234
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 235
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    .line 236
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 237
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 238
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->computedValue:F

    .line 239
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 240
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 242
    return-void
.end method

.method public resolve()V
    .locals 9

    .line 110
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 114
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v0, :cond_3

    .line 117
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->state:I

    if-eq v0, v1, :cond_2

    .line 118
    return-void

    .line 120
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    int-to-float v0, v0

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->value:F

    mul-float v0, v0, v2

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 122
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v0, :cond_5

    .line 123
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->state:I

    if-eq v0, v1, :cond_4

    .line 124
    return-void

    .line 126
    :cond_4
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    int-to-float v0, v0

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->value:F

    mul-float v0, v0, v2

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    .line 128
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_6

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_8

    .line 133
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-nez v0, :cond_7

    .line 134
    iput-object p0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 135
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    goto :goto_0

    .line 137
    :cond_7
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 138
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 140
    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    goto/16 :goto_6

    .line 141
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v2, 0x2

    const-wide/16 v3, 0x1

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_11

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_11

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_11

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_11

    .line 149
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 150
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v0

    iget-wide v5, v0, Landroidx/constraintlayout/solver/Metrics;->centerConnectionResolved:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Landroidx/constraintlayout/solver/Metrics;->centerConnectionResolved:J

    .line 152
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 153
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v2, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "distance":F
    const/high16 v2, 0x3f000000    # 0.5f

    .line 158
    .local v2, "percent":F
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v3, v4, :cond_b

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v3, v4, :cond_a

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    .line 160
    .local v1, "isEndAnchor":Z
    :cond_b
    :goto_1
    if-eqz v1, :cond_c

    .line 162
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    sub-float/2addr v3, v4

    .end local v0    # "distance":F
    .local v3, "distance":F
    goto :goto_2

    .line 164
    .end local v3    # "distance":F
    .restart local v0    # "distance":F
    :cond_c
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    sub-float/2addr v3, v4

    .line 167
    .end local v0    # "distance":F
    .restart local v3    # "distance":F
    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v4, :cond_e

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v4, :cond_d

    goto :goto_3

    .line 172
    :cond_d
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v3, v0

    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .end local v2    # "percent":F
    .local v0, "percent":F
    goto :goto_4

    .line 169
    .end local v0    # "percent":F
    .restart local v2    # "percent":F
    :cond_e
    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v3, v0

    .line 170
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 175
    .end local v2    # "percent":F
    .restart local v0    # "percent":F
    :goto_4
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    .line 176
    .local v2, "margin":I
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 177
    .local v4, "oppositeMargin":I
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    if-ne v5, v6, :cond_f

    .line 178
    const/high16 v0, 0x3f000000    # 0.5f

    .line 179
    const/4 v2, 0x0

    .line 180
    const/4 v4, 0x0

    .line 183
    :cond_f
    int-to-float v5, v2

    sub-float/2addr v3, v5

    .line 184
    int-to-float v5, v4

    sub-float/2addr v3, v5

    .line 186
    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_10

    .line 188
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    int-to-float v8, v4

    add-float/2addr v7, v8

    mul-float v8, v3, v0

    add-float/2addr v7, v8

    iput v7, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 190
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    int-to-float v7, v2

    sub-float/2addr v6, v7

    sub-float/2addr v5, v0

    mul-float v5, v5, v3

    sub-float/2addr v6, v5

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    goto :goto_5

    .line 192
    :cond_10
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    int-to-float v7, v2

    add-float/2addr v6, v7

    mul-float v7, v3, v0

    add-float/2addr v6, v7

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 193
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    int-to-float v8, v4

    sub-float/2addr v7, v8

    sub-float/2addr v5, v0

    mul-float v5, v5, v3

    sub-float/2addr v7, v5

    iput v7, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 197
    :goto_5
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 198
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 199
    .end local v0    # "percent":F
    .end local v1    # "isEndAnchor":Z
    .end local v2    # "margin":I
    .end local v3    # "distance":F
    .end local v4    # "oppositeMargin":I
    goto :goto_6

    :cond_11
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_13

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_13

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_13

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_13

    .line 207
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 208
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v0

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->matchConnectionResolved:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->matchConnectionResolved:J

    .line 210
    :cond_12
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 211
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v3, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 213
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 214
    iget v0, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v0, v2

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 216
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    goto :goto_6

    .line 218
    :cond_13
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 219
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolve()V

    .line 221
    :cond_14
    :goto_6
    return-void
.end method

.method public resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V
    .locals 2
    .param p1, "target"    # Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .param p2, "offset"    # F

    .line 79
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eq v0, p1, :cond_2

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    .line 80
    :cond_0
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 81
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 82
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 83
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->invalidate()V

    .line 85
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 87
    :cond_2
    return-void
.end method

.method sType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 90
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 91
    const-string v0, "DIRECT"

    return-object v0

    .line 92
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 93
    const-string v0, "CENTER"

    return-object v0

    .line 94
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 95
    const-string v0, "MATCH"

    return-object v0

    .line 96
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 97
    const-string v0, "CHAIN"

    return-object v0

    .line 98
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 99
    const-string v0, "BARRIER"

    return-object v0

    .line 101
    :cond_4
    const-string v0, "UNCONNECTED"

    return-object v0
.end method

.method public setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V
    .locals 0
    .param p1, "opposite"    # Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .param p2, "oppositeOffset"    # F

    .line 293
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 294
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    .line 295
    return-void
.end method

.method public setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V
    .locals 0
    .param p1, "opposite"    # Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .param p2, "multiplier"    # I
    .param p3, "dimension"    # Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 298
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 299
    iput-object p3, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 300
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    .line 301
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 224
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 225
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    const-string v1, ", RESOLVED: "

    const-string v2, "["

    if-ne v0, p0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]  type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->sType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 73
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->sType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    return-object v0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " UNRESOLVED} type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->sType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 4

    .line 245
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 246
    .local v0, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-nez v0, :cond_0

    .line 247
    return-void

    .line 249
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, v2, :cond_1

    .line 250
    const/4 v1, 0x4

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 251
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iput v1, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 253
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 254
    .local v1, "margin":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v3, :cond_3

    .line 256
    :cond_2
    neg-int v1, v1

    .line 258
    :cond_3
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 259
    return-void
.end method
