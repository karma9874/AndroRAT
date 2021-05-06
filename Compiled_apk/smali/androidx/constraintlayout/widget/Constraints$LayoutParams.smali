.class public Landroidx/constraintlayout/widget/Constraints$LayoutParams;
.super Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alpha:F

.field public applyElevation:Z

.field public elevation:F

.field public rotation:F

.field public rotationX:F

.field public rotationY:F

.field public scaleX:F

.field public scaleY:F

.field public transformPivotX:F

.field public transformPivotY:F

.field public translationX:F

.field public translationY:F

.field public translationZ:F


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 82
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    .line 70
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    .line 71
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    .line 72
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    .line 73
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    .line 74
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    .line 75
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    .line 76
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    .line 77
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    .line 78
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    .line 79
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 90
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    .line 70
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    .line 71
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    .line 72
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    .line 73
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    .line 74
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    .line 75
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    .line 76
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    .line 77
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    .line 78
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    .line 79
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    .line 91
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 93
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_c

    .line 94
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 95
    .local v3, "attr":I
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_alpha:I

    if-ne v3, v4, :cond_0

    .line 96
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    goto/16 :goto_1

    .line 97
    :cond_0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_elevation:I

    if-ne v3, v4, :cond_1

    .line 98
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    .line 99
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    goto/16 :goto_1

    .line 100
    :cond_1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationX:I

    if-ne v3, v4, :cond_2

    .line 101
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    goto/16 :goto_1

    .line 102
    :cond_2
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationY:I

    if-ne v3, v4, :cond_3

    .line 103
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    goto/16 :goto_1

    .line 104
    :cond_3
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotation:I

    if-ne v3, v4, :cond_4

    .line 105
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    goto :goto_1

    .line 106
    :cond_4
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleX:I

    if-ne v3, v4, :cond_5

    .line 107
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    goto :goto_1

    .line 108
    :cond_5
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleY:I

    if-ne v3, v4, :cond_6

    .line 109
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    goto :goto_1

    .line 110
    :cond_6
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotX:I

    if-ne v3, v4, :cond_7

    .line 111
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    goto :goto_1

    .line 112
    :cond_7
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotY:I

    if-ne v3, v4, :cond_8

    .line 113
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    goto :goto_1

    .line 114
    :cond_8
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationX:I

    if-ne v3, v4, :cond_9

    .line 115
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    goto :goto_1

    .line 116
    :cond_9
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationY:I

    if-ne v3, v4, :cond_a

    .line 117
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    goto :goto_1

    .line 118
    :cond_a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationZ:I

    if-ne v3, v4, :cond_b

    .line 119
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    .line 93
    .end local v3    # "attr":I
    :cond_b
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 122
    .end local v2    # "i":I
    :cond_c
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 2
    .param p1, "source"    # Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 86
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    .line 70
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    .line 71
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    .line 72
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    .line 73
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    .line 74
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    .line 75
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    .line 76
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    .line 77
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    .line 78
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    .line 79
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    .line 87
    return-void
.end method
