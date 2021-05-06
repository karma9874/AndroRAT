.class public Landroidx/constraintlayout/solver/widgets/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 46
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    if-lt p1, v0, :cond_0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    if-lt p2, v0, :cond_0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCenterX()I
    .locals 2

    .line 50
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getCenterY()I
    .locals 2

    .line 51
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method grow(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 34
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    .line 35
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    .line 36
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    .line 37
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    .line 38
    return-void
.end method

.method intersects(Landroidx/constraintlayout/solver/widgets/Rectangle;)Z
    .locals 3
    .param p1, "bounds"    # Landroidx/constraintlayout/solver/widgets/Rectangle;

    .line 41
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    iget v1, p1, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    if-lt v0, v1, :cond_0

    iget v2, p1, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    iget v1, p1, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    if-lt v0, v1, :cond_0

    iget v2, p1, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBounds(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 28
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    .line 29
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    .line 30
    iput p3, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    .line 31
    iput p4, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    .line 32
    return-void
.end method
