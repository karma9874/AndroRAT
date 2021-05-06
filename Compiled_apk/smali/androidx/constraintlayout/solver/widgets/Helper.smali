.class public Landroidx/constraintlayout/solver/widgets/Helper;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.source "Helper.java"


# instance fields
.field protected mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mWidgetsCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 3
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 18
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 19
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    aput-object p1, v0, v1

    .line 22
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    .line 23
    return-void
.end method

.method public removeAllIds()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    .line 30
    return-void
.end method
