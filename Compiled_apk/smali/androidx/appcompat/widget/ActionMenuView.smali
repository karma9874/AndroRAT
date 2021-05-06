.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;
.implements Landroidx/appcompat/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$LayoutParams;,
        Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;,
        Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;,
        Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 80
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 83
    .local v1, "density":F
    const/high16 v2, 0x42600000    # 56.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    .line 84
    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 85
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 86
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 87
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 15
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .line 404
    move-object v0, p0

    move/from16 v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 406
    .local v2, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int v3, v3, p4

    .line 408
    .local v3, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 409
    .local v4, "childHeightMode":I
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 411
    .local v5, "childHeightSpec":I
    instance-of v6, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/view/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 413
    .local v6, "itemView":Landroidx/appcompat/view/menu/ActionMenuItemView;
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 415
    .local v9, "hasText":Z
    :goto_1
    const/4 v10, 0x0

    .line 416
    .local v10, "cellsUsed":I
    if-lez v1, :cond_4

    const/4 v11, 0x2

    if-eqz v9, :cond_2

    if-lt v1, v11, :cond_4

    .line 417
    :cond_2
    mul-int v12, p1, v1

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 419
    .local v12, "childWidthSpec":I
    invoke-virtual {p0, v12, v5}, Landroid/view/View;->measure(II)V

    .line 421
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 422
    .local v13, "measuredWidth":I
    div-int v10, v13, p1

    .line 423
    rem-int v14, v13, p1

    if-eqz v14, :cond_3

    add-int/lit8 v10, v10, 0x1

    .line 424
    :cond_3
    if-eqz v9, :cond_4

    if-ge v10, v11, :cond_4

    const/4 v10, 0x2

    .line 427
    .end local v12    # "childWidthSpec":I
    .end local v13    # "measuredWidth":I
    :cond_4
    iget-boolean v11, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v9, :cond_5

    const/4 v7, 0x1

    .line 428
    .local v7, "expandable":Z
    :cond_5
    iput-boolean v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 430
    iput v10, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 431
    mul-int v8, v10, p1

    .line 432
    .local v8, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v5}, Landroid/view/View;->measure(II)V

    .line 434
    return v10
.end method

.method private onMeasureExactFormat(II)V
    .locals 40
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 178
    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 179
    .local v1, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 180
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 182
    .local v3, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 183
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 185
    .local v5, "heightPadding":I
    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    .line 188
    .local v6, "itemHeightSpec":I
    sub-int/2addr v2, v4

    .line 191
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    div-int v9, v2, v8

    .line 192
    .local v9, "cellCount":I
    rem-int v10, v2, v8

    .line 194
    .local v10, "cellSizeRemaining":I
    const/4 v11, 0x0

    if-nez v9, :cond_0

    .line 196
    invoke-virtual {v0, v2, v11}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 197
    return-void

    .line 200
    :cond_0
    div-int v12, v10, v9

    add-int/2addr v8, v12

    .line 202
    .local v8, "cellSize":I
    move v12, v9

    .line 203
    .local v12, "cellsRemaining":I
    const/4 v13, 0x0

    .line 204
    .local v13, "maxChildHeight":I
    const/4 v14, 0x0

    .line 205
    .local v14, "maxCellsUsed":I
    const/4 v15, 0x0

    .line 206
    .local v15, "expandableItemCount":I
    const/16 v16, 0x0

    .line 207
    .local v16, "visibleItemCount":I
    const/16 v17, 0x0

    .line 210
    .local v17, "hasOverflow":Z
    const-wide/16 v18, 0x0

    .line 212
    .local v18, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v11

    .line 213
    .local v11, "childCount":I
    const/16 v21, 0x0

    move-wide/from16 v38, v18

    move/from16 v18, v3

    move v3, v13

    move/from16 v13, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v12

    move/from16 v12, v21

    move-wide/from16 v21, v38

    .local v3, "maxChildHeight":I
    .local v12, "i":I
    .local v13, "visibleItemCount":I
    .local v14, "cellsRemaining":I
    .local v15, "maxCellsUsed":I
    .local v16, "expandableItemCount":I
    .local v18, "heightSize":I
    .local v21, "smallestItemsAt":J
    :goto_0
    move/from16 v19, v4

    .end local v4    # "widthPadding":I
    .local v19, "widthPadding":I
    if-ge v12, v11, :cond_8

    .line 214
    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 215
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    move/from16 v24, v9

    .end local v9    # "cellCount":I
    .local v24, "cellCount":I
    const/16 v9, 0x8

    if-ne v7, v9, :cond_1

    move/from16 v27, v5

    move/from16 v25, v10

    goto/16 :goto_4

    .line 217
    :cond_1
    instance-of v7, v4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 218
    .local v7, "isGeneratedItem":Z
    add-int/lit8 v13, v13, 0x1

    .line 220
    if-eqz v7, :cond_2

    .line 223
    iget v9, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v25, v10

    const/4 v10, 0x0

    .end local v10    # "cellSizeRemaining":I
    .local v25, "cellSizeRemaining":I
    invoke-virtual {v4, v9, v10, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 220
    .end local v25    # "cellSizeRemaining":I
    .restart local v10    # "cellSizeRemaining":I
    :cond_2
    move/from16 v25, v10

    const/4 v10, 0x0

    .line 226
    .end local v10    # "cellSizeRemaining":I
    .restart local v25    # "cellSizeRemaining":I
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 227
    .local v9, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iput-boolean v10, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 228
    iput v10, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 229
    iput v10, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 230
    iput-boolean v10, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 231
    iput v10, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 232
    iput v10, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 233
    if-eqz v7, :cond_3

    move-object v10, v4

    check-cast v10, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    iput-boolean v10, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 236
    iget-boolean v10, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    move v10, v14

    .line 238
    .local v10, "cellsAvailable":I
    :goto_3
    move/from16 v26, v7

    .end local v7    # "isGeneratedItem":Z
    .local v26, "isGeneratedItem":Z
    invoke-static {v4, v8, v10, v6, v5}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v7

    .line 241
    .local v7, "cellsUsed":I
    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 242
    move/from16 v27, v5

    .end local v5    # "heightPadding":I
    .local v27, "heightPadding":I
    iget-boolean v5, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v5, :cond_5

    add-int/lit8 v16, v16, 0x1

    .line 243
    :cond_5
    iget-boolean v5, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_6

    const/16 v17, 0x1

    .line 245
    :cond_6
    sub-int/2addr v14, v7

    .line 246
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 247
    const/4 v5, 0x1

    if-ne v7, v5, :cond_7

    shl-int/2addr v5, v12

    move/from16 v28, v3

    move-object/from16 v23, v4

    .end local v3    # "maxChildHeight":I
    .end local v4    # "child":Landroid/view/View;
    .local v23, "child":Landroid/view/View;
    .local v28, "maxChildHeight":I
    int-to-long v3, v5

    or-long v3, v21, v3

    move-wide/from16 v21, v3

    move/from16 v3, v28

    .end local v21    # "smallestItemsAt":J
    .local v3, "smallestItemsAt":J
    goto :goto_4

    .end local v23    # "child":Landroid/view/View;
    .end local v28    # "maxChildHeight":I
    .local v3, "maxChildHeight":I
    .restart local v4    # "child":Landroid/view/View;
    .restart local v21    # "smallestItemsAt":J
    :cond_7
    move/from16 v28, v3

    move-object/from16 v23, v4

    .line 213
    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "cellsUsed":I
    .end local v9    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v10    # "cellsAvailable":I
    .end local v26    # "isGeneratedItem":Z
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, p2

    move/from16 v4, v19

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v5, v27

    goto/16 :goto_0

    .end local v24    # "cellCount":I
    .end local v25    # "cellSizeRemaining":I
    .end local v27    # "heightPadding":I
    .restart local v5    # "heightPadding":I
    .local v9, "cellCount":I
    .local v10, "cellSizeRemaining":I
    :cond_8
    move/from16 v27, v5

    move/from16 v24, v9

    move/from16 v25, v10

    .line 252
    .end local v5    # "heightPadding":I
    .end local v9    # "cellCount":I
    .end local v10    # "cellSizeRemaining":I
    .end local v12    # "i":I
    .restart local v24    # "cellCount":I
    .restart local v25    # "cellSizeRemaining":I
    .restart local v27    # "heightPadding":I
    const/4 v4, 0x2

    if-eqz v17, :cond_9

    if-ne v13, v4, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    .line 257
    .local v5, "centerSingleExpandedItem":Z
    :goto_5
    const/4 v7, 0x0

    .line 258
    .local v7, "needsExpansion":Z
    :goto_6
    const-wide/16 v28, 0x0

    if-lez v16, :cond_13

    if-lez v14, :cond_13

    .line 259
    const v12, 0x7fffffff

    .line 260
    .local v12, "minCells":I
    const-wide/16 v30, 0x0

    .line 261
    .local v30, "minCellsAt":J
    const/16 v26, 0x0

    .line 262
    .local v26, "minCellsItemCount":I
    const/16 v32, 0x0

    move v9, v12

    move/from16 v4, v26

    move/from16 v12, v32

    .end local v26    # "minCellsItemCount":I
    .local v4, "minCellsItemCount":I
    .local v9, "minCells":I
    .local v12, "i":I
    :goto_7
    if-ge v12, v11, :cond_d

    .line 263
    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 264
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    move/from16 v35, v7

    .end local v7    # "needsExpansion":Z
    .local v35, "needsExpansion":Z
    move-object/from16 v7, v34

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 267
    .local v7, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move-object/from16 v34, v10

    .end local v10    # "child":Landroid/view/View;
    .local v34, "child":Landroid/view/View;
    iget-boolean v10, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v10, :cond_a

    goto :goto_8

    .line 270
    :cond_a
    iget v10, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v10, v9, :cond_b

    .line 271
    iget v9, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 272
    const-wide/16 v32, 0x1

    shl-long v30, v32, v12

    .line 273
    const/4 v4, 0x1

    goto :goto_8

    .line 274
    :cond_b
    const-wide/16 v32, 0x1

    iget v10, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v10, v9, :cond_c

    .line 275
    shl-long v36, v32, v12

    or-long v30, v30, v36

    .line 276
    add-int/lit8 v4, v4, 0x1

    .line 262
    .end local v7    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v34    # "child":Landroid/view/View;
    :cond_c
    :goto_8
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v35

    goto :goto_7

    .end local v35    # "needsExpansion":Z
    .local v7, "needsExpansion":Z
    :cond_d
    move/from16 v35, v7

    .line 281
    .end local v7    # "needsExpansion":Z
    .end local v12    # "i":I
    .restart local v35    # "needsExpansion":Z
    or-long v21, v21, v30

    .line 283
    if-le v4, v14, :cond_e

    move/from16 v36, v2

    move/from16 v37, v3

    goto :goto_b

    .line 286
    :cond_e
    add-int/lit8 v9, v9, 0x1

    .line 288
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9
    if-ge v7, v11, :cond_12

    .line 289
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 290
    .restart local v10    # "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 291
    .local v12, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move/from16 v34, v4

    const/16 v23, 0x1

    .end local v4    # "minCellsItemCount":I
    .local v34, "minCellsItemCount":I
    shl-int v4, v23, v7

    move/from16 v36, v2

    move/from16 v37, v3

    .end local v2    # "widthSize":I
    .end local v3    # "maxChildHeight":I
    .local v36, "widthSize":I
    .local v37, "maxChildHeight":I
    int-to-long v2, v4

    and-long v2, v30, v2

    cmp-long v4, v2, v28

    if-nez v4, :cond_f

    .line 293
    iget v2, v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v2, v9, :cond_11

    shl-int v2, v23, v7

    int-to-long v2, v2

    or-long v21, v21, v2

    goto :goto_a

    .line 297
    :cond_f
    if-eqz v5, :cond_10

    iget-boolean v2, v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    if-ne v14, v2, :cond_10

    .line 299
    iget v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int v3, v2, v8

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 301
    :cond_10
    iget v2, v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 302
    iput-boolean v3, v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 303
    add-int/lit8 v14, v14, -0x1

    .line 288
    .end local v10    # "child":Landroid/view/View;
    .end local v12    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_11
    :goto_a
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v34

    move/from16 v2, v36

    move/from16 v3, v37

    goto :goto_9

    .end local v34    # "minCellsItemCount":I
    .end local v36    # "widthSize":I
    .end local v37    # "maxChildHeight":I
    .restart local v2    # "widthSize":I
    .restart local v3    # "maxChildHeight":I
    .restart local v4    # "minCellsItemCount":I
    :cond_12
    move/from16 v36, v2

    move/from16 v37, v3

    move/from16 v34, v4

    .line 306
    .end local v2    # "widthSize":I
    .end local v3    # "maxChildHeight":I
    .end local v4    # "minCellsItemCount":I
    .end local v7    # "i":I
    .restart local v34    # "minCellsItemCount":I
    .restart local v36    # "widthSize":I
    .restart local v37    # "maxChildHeight":I
    const/4 v7, 0x1

    .line 307
    .end local v9    # "minCells":I
    .end local v30    # "minCellsAt":J
    .end local v34    # "minCellsItemCount":I
    .end local v35    # "needsExpansion":Z
    .local v7, "needsExpansion":Z
    const/4 v4, 0x2

    goto/16 :goto_6

    .line 258
    .end local v36    # "widthSize":I
    .end local v37    # "maxChildHeight":I
    .restart local v2    # "widthSize":I
    .restart local v3    # "maxChildHeight":I
    :cond_13
    move/from16 v36, v2

    move/from16 v37, v3

    move/from16 v35, v7

    .line 312
    .end local v2    # "widthSize":I
    .end local v3    # "maxChildHeight":I
    .end local v7    # "needsExpansion":Z
    .restart local v35    # "needsExpansion":Z
    .restart local v36    # "widthSize":I
    .restart local v37    # "maxChildHeight":I
    :goto_b
    if-nez v17, :cond_14

    const/4 v2, 0x1

    if-ne v13, v2, :cond_14

    const/4 v2, 0x1

    goto :goto_c

    :cond_14
    const/4 v2, 0x0

    .line 313
    .local v2, "singleItem":Z
    :goto_c
    if-lez v14, :cond_23

    cmp-long v3, v21, v28

    if-eqz v3, :cond_23

    add-int/lit8 v3, v13, -0x1

    if-lt v14, v3, :cond_16

    if-nez v2, :cond_16

    const/4 v3, 0x1

    if-le v15, v3, :cond_15

    goto :goto_d

    :cond_15
    move v10, v2

    move v9, v5

    goto/16 :goto_13

    .line 315
    :cond_16
    :goto_d
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    int-to-float v3, v3

    .line 317
    .local v3, "expandCount":F
    if-nez v2, :cond_19

    .line 319
    const-wide/16 v9, 0x1

    and-long v9, v21, v9

    const/high16 v4, 0x3f000000    # 0.5f

    cmp-long v7, v9, v28

    if-eqz v7, :cond_17

    .line 320
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 321
    .local v7, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v9, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v9, :cond_18

    sub-float/2addr v3, v4

    goto :goto_e

    .line 319
    .end local v7    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_17
    const/4 v10, 0x0

    .line 323
    :cond_18
    :goto_e
    add-int/lit8 v7, v11, -0x1

    const/4 v9, 0x1

    shl-int v7, v9, v7

    move v9, v5

    .end local v5    # "centerSingleExpandedItem":Z
    .local v9, "centerSingleExpandedItem":Z
    int-to-long v4, v7

    and-long v4, v21, v4

    cmp-long v7, v4, v28

    if-eqz v7, :cond_1a

    .line 324
    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 325
    .local v4, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v5, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v5, :cond_1a

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v3, v5

    goto :goto_f

    .line 317
    .end local v4    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v9    # "centerSingleExpandedItem":Z
    .restart local v5    # "centerSingleExpandedItem":Z
    :cond_19
    move v9, v5

    const/4 v10, 0x0

    .line 329
    .end local v5    # "centerSingleExpandedItem":Z
    .restart local v9    # "centerSingleExpandedItem":Z
    :cond_1a
    :goto_f
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1b

    mul-int v4, v14, v8

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    goto :goto_10

    :cond_1b
    const/4 v4, 0x0

    .line 332
    .local v4, "extraPixels":I
    :goto_10
    const/4 v5, 0x0

    move/from16 v7, v35

    .end local v35    # "needsExpansion":Z
    .local v5, "i":I
    .local v7, "needsExpansion":Z
    :goto_11
    if-ge v5, v11, :cond_22

    .line 333
    const/4 v10, 0x1

    shl-int v12, v10, v5

    move v10, v2

    move/from16 v20, v3

    .end local v2    # "singleItem":Z
    .end local v3    # "expandCount":F
    .local v10, "singleItem":Z
    .local v20, "expandCount":F
    int-to-long v2, v12

    and-long v2, v21, v2

    cmp-long v12, v2, v28

    if-nez v12, :cond_1c

    const/16 v26, 0x2

    goto :goto_12

    .line 335
    :cond_1c
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 336
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 337
    .local v3, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    instance-of v12, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v12, :cond_1e

    .line 339
    iput v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 340
    const/4 v12, 0x1

    iput-boolean v12, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 341
    if-nez v5, :cond_1d

    iget-boolean v12, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v12, :cond_1d

    .line 344
    neg-int v12, v4

    const/16 v26, 0x2

    div-int/lit8 v12, v12, 0x2

    iput v12, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 346
    :cond_1d
    const/4 v7, 0x1

    const/16 v26, 0x2

    goto :goto_12

    .line 347
    :cond_1e
    iget-boolean v12, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v12, :cond_1f

    .line 348
    iput v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 349
    const/4 v12, 0x1

    iput-boolean v12, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 350
    neg-int v12, v4

    const/16 v26, 0x2

    div-int/lit8 v12, v12, 0x2

    iput v12, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 351
    const/4 v7, 0x1

    goto :goto_12

    .line 356
    :cond_1f
    const/16 v26, 0x2

    if-eqz v5, :cond_20

    .line 357
    div-int/lit8 v12, v4, 0x2

    iput v12, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 359
    :cond_20
    add-int/lit8 v12, v11, -0x1

    if-eq v5, v12, :cond_21

    .line 360
    div-int/lit8 v12, v4, 0x2

    iput v12, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 332
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_21
    :goto_12
    add-int/lit8 v5, v5, 0x1

    move v2, v10

    move/from16 v3, v20

    goto :goto_11

    .end local v10    # "singleItem":Z
    .end local v20    # "expandCount":F
    .local v2, "singleItem":Z
    .local v3, "expandCount":F
    :cond_22
    move v10, v2

    move/from16 v20, v3

    .line 365
    .end local v2    # "singleItem":Z
    .end local v3    # "expandCount":F
    .end local v5    # "i":I
    .restart local v10    # "singleItem":Z
    .restart local v20    # "expandCount":F
    const/4 v14, 0x0

    move/from16 v35, v7

    goto :goto_13

    .line 313
    .end local v4    # "extraPixels":I
    .end local v7    # "needsExpansion":Z
    .end local v9    # "centerSingleExpandedItem":Z
    .end local v10    # "singleItem":Z
    .end local v20    # "expandCount":F
    .restart local v2    # "singleItem":Z
    .local v5, "centerSingleExpandedItem":Z
    .restart local v35    # "needsExpansion":Z
    :cond_23
    move v10, v2

    move v9, v5

    .line 369
    .end local v2    # "singleItem":Z
    .end local v5    # "centerSingleExpandedItem":Z
    .restart local v9    # "centerSingleExpandedItem":Z
    .restart local v10    # "singleItem":Z
    :goto_13
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v35, :cond_25

    .line 370
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v11, :cond_25

    .line 371
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 372
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 374
    .local v5, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v7, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v7, :cond_24

    goto :goto_15

    .line 376
    :cond_24
    iget v7, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v7, v7, v8

    iget v12, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v7, v12

    .line 377
    .local v7, "width":I
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v4, v12, v6}, Landroid/view/View;->measure(II)V

    .line 370
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v7    # "width":I
    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 382
    .end local v3    # "i":I
    :cond_25
    if-eq v1, v2, :cond_26

    .line 383
    move/from16 v3, v37

    .end local v18    # "heightSize":I
    .local v3, "heightSize":I
    goto :goto_16

    .line 382
    .end local v3    # "heightSize":I
    .restart local v18    # "heightSize":I
    :cond_26
    move/from16 v3, v18

    .line 386
    .end local v18    # "heightSize":I
    .restart local v3    # "heightSize":I
    :goto_16
    move/from16 v2, v36

    .end local v36    # "widthSize":I
    .local v2, "widthSize":I
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 387
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 610
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 723
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 726
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    .line 583
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 585
    .local v0, "params":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 586
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 591
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 596
    if-eqz p1, :cond_2

    .line 597
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroidx/appcompat/widget/ActionMenuView$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    .local v0, "result":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_1

    .line 601
    const/16 v1, 0x10

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 603
    :cond_1
    return-object v0

    .line 605
    .end local v0    # "result":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateOverflowButtonLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    .line 616
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 617
    .local v0, "result":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 618
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .line 651
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    .line 652
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 653
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 654
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 655
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 656
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 657
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v2}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 659
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 660
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 663
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 565
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 566
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .line 113
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .line 733
    if-nez p1, :cond_0

    .line 734
    const/4 v0, 0x0

    return v0

    .line 736
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 737
    .local v0, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 738
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 739
    .local v2, "result":Z
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v0, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    .line 740
    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 742
    :cond_1
    if-lez p1, :cond_2

    instance-of v3, v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 743
    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 745
    :cond_2
    return v2
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 700
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .line 639
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 640
    return-void
.end method

.method public invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 625
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 716
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 710
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 572
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 128
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 133
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 135
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 138
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 544
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 545
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    .line 546
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 439
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-nez v1, :cond_0

    .line 440
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 441
    return-void

    .line 444
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 445
    .local v1, "childCount":I
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    .line 446
    .local v2, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getDividerWidth()I

    move-result v3

    .line 447
    .local v3, "dividerWidth":I
    const/4 v4, 0x0

    .line 448
    .local v4, "overflowWidth":I
    const/4 v5, 0x0

    .line 449
    .local v5, "nonOverflowWidth":I
    const/4 v6, 0x0

    .line 450
    .local v6, "nonOverflowCount":I
    sub-int v7, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    .line 451
    .local v7, "widthRemaining":I
    const/4 v8, 0x0

    .line 452
    .local v8, "hasOverflow":Z
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    .line 453
    .local v9, "isLayoutRtl":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v11, 0x8

    if-ge v10, v1, :cond_6

    .line 454
    invoke-virtual {v0, v10}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 455
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v11, :cond_1

    .line 456
    move/from16 v16, v2

    move/from16 v17, v9

    goto :goto_2

    .line 459
    :cond_1
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 460
    .local v11, "p":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v13, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v13, :cond_4

    .line 461
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 462
    invoke-virtual {v0, v10}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 463
    add-int/2addr v4, v3

    .line 465
    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 468
    .local v13, "height":I
    if-eqz v9, :cond_3

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v14

    iget v15, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    .line 470
    .local v14, "l":I
    add-int v15, v14, v4

    .local v15, "r":I
    goto :goto_1

    .line 472
    .end local v14    # "l":I
    .end local v15    # "r":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget v15, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v15, v14, v15

    .line 473
    .restart local v15    # "r":I
    sub-int v14, v15, v4

    .line 475
    .restart local v14    # "l":I
    :goto_1
    div-int/lit8 v16, v13, 0x2

    move/from16 v17, v9

    .end local v9    # "isLayoutRtl":Z
    .local v17, "isLayoutRtl":Z
    sub-int v9, v2, v16

    .line 476
    .local v9, "t":I
    move/from16 v16, v2

    .end local v2    # "midVertical":I
    .local v16, "midVertical":I
    add-int v2, v9, v13

    .line 477
    .local v2, "b":I
    invoke-virtual {v12, v14, v9, v15, v2}, Landroid/view/View;->layout(IIII)V

    .line 479
    sub-int/2addr v7, v4

    .line 480
    const/4 v2, 0x1

    .line 481
    .end local v8    # "hasOverflow":Z
    .end local v9    # "t":I
    .end local v13    # "height":I
    .end local v14    # "l":I
    .end local v15    # "r":I
    .local v2, "hasOverflow":Z
    move v8, v2

    goto :goto_2

    .line 482
    .end local v16    # "midVertical":I
    .end local v17    # "isLayoutRtl":Z
    .local v2, "midVertical":I
    .restart local v8    # "hasOverflow":Z
    .local v9, "isLayoutRtl":Z
    :cond_4
    move/from16 v16, v2

    move/from16 v17, v9

    .end local v2    # "midVertical":I
    .end local v9    # "isLayoutRtl":Z
    .restart local v16    # "midVertical":I
    .restart local v17    # "isLayoutRtl":Z
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v9, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v9

    iget v9, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v9

    .line 483
    .local v2, "size":I
    add-int/2addr v5, v2

    .line 484
    sub-int/2addr v7, v2

    .line 485
    invoke-virtual {v0, v10}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 486
    add-int/2addr v5, v3

    .line 488
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 453
    .end local v2    # "size":I
    .end local v11    # "p":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v12    # "v":Landroid/view/View;
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    move/from16 v9, v17

    goto :goto_0

    .end local v16    # "midVertical":I
    .end local v17    # "isLayoutRtl":Z
    .local v2, "midVertical":I
    .restart local v9    # "isLayoutRtl":Z
    :cond_6
    move/from16 v16, v2

    move/from16 v17, v9

    .line 492
    .end local v2    # "midVertical":I
    .end local v9    # "isLayoutRtl":Z
    .end local v10    # "i":I
    .restart local v16    # "midVertical":I
    .restart local v17    # "isLayoutRtl":Z
    const/4 v2, 0x0

    const/4 v9, 0x1

    if-ne v1, v9, :cond_7

    if-nez v8, :cond_7

    .line 494
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 495
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 496
    .local v9, "width":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 497
    .local v10, "height":I
    sub-int v11, p4, p2

    div-int/lit8 v11, v11, 0x2

    .line 498
    .local v11, "midHorizontal":I
    div-int/lit8 v12, v9, 0x2

    sub-int v12, v11, v12

    .line 499
    .local v12, "l":I
    div-int/lit8 v13, v10, 0x2

    sub-int v13, v16, v13

    .line 500
    .local v13, "t":I
    add-int v14, v12, v9

    add-int v15, v13, v10

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 501
    return-void

    .line 504
    .end local v2    # "v":Landroid/view/View;
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "midHorizontal":I
    .end local v12    # "l":I
    .end local v13    # "t":I
    :cond_7
    xor-int/lit8 v9, v8, 0x1

    sub-int v9, v6, v9

    .line 505
    .local v9, "spacerCount":I
    if-lez v9, :cond_8

    div-int v10, v7, v9

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    :goto_3
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 507
    .local v2, "spacerSize":I
    if-eqz v17, :cond_c

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v10, v12

    .line 509
    .local v10, "startRight":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    if-ge v12, v1, :cond_b

    .line 510
    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 511
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 512
    .local v14, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v11, :cond_a

    iget-boolean v15, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v15, :cond_9

    .line 513
    move/from16 v19, v3

    move/from16 v20, v4

    goto :goto_5

    .line 516
    :cond_9
    iget v15, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v10, v15

    .line 517
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 518
    .local v15, "width":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    .line 519
    .local v18, "height":I
    div-int/lit8 v19, v18, 0x2

    sub-int v11, v16, v19

    .line 520
    .local v11, "t":I
    move/from16 v19, v3

    .end local v3    # "dividerWidth":I
    .local v19, "dividerWidth":I
    sub-int v3, v10, v15

    move/from16 v20, v4

    .end local v4    # "overflowWidth":I
    .local v20, "overflowWidth":I
    add-int v4, v11, v18

    invoke-virtual {v13, v3, v11, v10, v4}, Landroid/view/View;->layout(IIII)V

    .line 521
    iget v3, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v15

    add-int/2addr v3, v2

    sub-int/2addr v10, v3

    goto :goto_5

    .line 512
    .end local v11    # "t":I
    .end local v15    # "width":I
    .end local v18    # "height":I
    .end local v19    # "dividerWidth":I
    .end local v20    # "overflowWidth":I
    .restart local v3    # "dividerWidth":I
    .restart local v4    # "overflowWidth":I
    :cond_a
    move/from16 v19, v3

    move/from16 v20, v4

    .line 509
    .end local v3    # "dividerWidth":I
    .end local v4    # "overflowWidth":I
    .end local v13    # "v":Landroid/view/View;
    .end local v14    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .restart local v19    # "dividerWidth":I
    .restart local v20    # "overflowWidth":I
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v19

    move/from16 v4, v20

    const/16 v11, 0x8

    goto :goto_4

    .end local v19    # "dividerWidth":I
    .end local v20    # "overflowWidth":I
    .restart local v3    # "dividerWidth":I
    .restart local v4    # "overflowWidth":I
    :cond_b
    move/from16 v19, v3

    move/from16 v20, v4

    .line 523
    .end local v3    # "dividerWidth":I
    .end local v4    # "overflowWidth":I
    .end local v10    # "startRight":I
    .end local v12    # "i":I
    .restart local v19    # "dividerWidth":I
    .restart local v20    # "overflowWidth":I
    goto :goto_8

    .line 524
    .end local v19    # "dividerWidth":I
    .end local v20    # "overflowWidth":I
    .restart local v3    # "dividerWidth":I
    .restart local v4    # "overflowWidth":I
    :cond_c
    move/from16 v19, v3

    move/from16 v20, v4

    .end local v3    # "dividerWidth":I
    .end local v4    # "overflowWidth":I
    .restart local v19    # "dividerWidth":I
    .restart local v20    # "overflowWidth":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v3

    .line 525
    .local v3, "startLeft":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    if-ge v4, v1, :cond_f

    .line 526
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 527
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 528
    .local v11, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_e

    iget-boolean v12, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v12, :cond_d

    .line 529
    goto :goto_7

    .line 532
    :cond_d
    iget v12, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v12

    .line 533
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 534
    .local v12, "width":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 535
    .local v14, "height":I
    div-int/lit8 v15, v14, 0x2

    sub-int v15, v16, v15

    .line 536
    .local v15, "t":I
    add-int v13, v3, v12

    add-int v0, v15, v14

    invoke-virtual {v10, v3, v15, v13, v0}, Landroid/view/View;->layout(IIII)V

    .line 537
    iget v0, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v12

    add-int/2addr v0, v2

    add-int/2addr v3, v0

    .line 525
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v12    # "width":I
    .end local v14    # "height":I
    .end local v15    # "t":I
    :cond_e
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    .line 540
    .end local v3    # "startLeft":I
    .end local v4    # "i":I
    :cond_f
    :goto_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 147
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 148
    .local v0, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 150
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eq v0, v1, :cond_1

    .line 151
    iput v3, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 156
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 157
    .local v1, "widthSize":I
    iget-boolean v4, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v4, :cond_2

    iget v5, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v5, :cond_2

    .line 158
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 159
    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 162
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v2

    .line 163
    .local v2, "childCount":I
    iget-boolean v4, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_3

    if-lez v2, :cond_3

    .line 164
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_2

    .line 167
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 168
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 169
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 170
    .local v6, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iput v3, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v3, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 167
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 172
    .end local v4    # "i":I
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 174
    :goto_2
    return-void
.end method

.method public peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 1

    .line 682
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    .line 756
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 757
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 672
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 673
    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 674
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 141
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 142
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 554
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 555
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 556
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .line 578
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    .line 579
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 97
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    .line 98
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 99
    if-nez p1, :cond_0

    .line 100
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 105
    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 122
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 123
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 124
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 691
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
