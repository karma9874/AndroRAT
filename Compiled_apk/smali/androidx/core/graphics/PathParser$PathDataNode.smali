.class public Landroidx/core/graphics/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field public mParams:[F

.field public mType:C


# direct methods
.method constructor <init>(C[F)V
    .locals 0
    .param p1, "type"    # C
    .param p2, "params"    # [F

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-char p1, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 322
    iput-object p2, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 323
    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/PathParser$PathDataNode;)V
    .locals 3
    .param p1, "n"    # Landroidx/core/graphics/PathParser$PathDataNode;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iget-char v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 327
    iget-object v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 328
    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .locals 26
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "current"    # [F
    .param p2, "previousCmd"    # C
    .param p3, "cmd"    # C
    .param p4, "val"    # [F

    .line 365
    move-object/from16 v10, p0

    move/from16 v11, p3

    move-object/from16 v12, p4

    const/4 v0, 0x2

    .line 366
    .local v0, "incr":I
    const/4 v13, 0x0

    aget v1, p1, v13

    .line 367
    .local v1, "currentX":F
    const/4 v14, 0x1

    aget v2, p1, v14

    .line 368
    .local v2, "currentY":F
    const/4 v15, 0x2

    aget v3, p1, v15

    .line 369
    .local v3, "ctrlPointX":F
    const/16 v16, 0x3

    aget v4, p1, v16

    .line 370
    .local v4, "ctrlPointY":F
    const/16 v17, 0x4

    aget v5, p1, v17

    .line 371
    .local v5, "currentSegmentStartX":F
    const/16 v18, 0x5

    aget v6, p1, v18

    .line 375
    .local v6, "currentSegmentStartY":F
    sparse-switch v11, :sswitch_data_0

    move/from16 v19, v0

    goto :goto_0

    .line 378
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    .line 382
    move v1, v5

    .line 383
    move v2, v6

    .line 384
    move v3, v5

    .line 385
    move v4, v6

    .line 386
    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 387
    move/from16 v19, v0

    goto :goto_0

    .line 410
    :sswitch_1
    const/4 v0, 0x4

    .line 411
    move/from16 v19, v0

    goto :goto_0

    .line 394
    :sswitch_2
    const/4 v0, 0x2

    .line 395
    move/from16 v19, v0

    goto :goto_0

    .line 400
    :sswitch_3
    const/4 v0, 0x1

    .line 401
    move/from16 v19, v0

    goto :goto_0

    .line 404
    :sswitch_4
    const/4 v0, 0x6

    .line 405
    move/from16 v19, v0

    goto :goto_0

    .line 414
    :sswitch_5
    const/4 v0, 0x7

    move/from16 v19, v0

    .line 418
    .end local v0    # "incr":I
    .local v19, "incr":I
    :goto_0
    const/4 v0, 0x0

    move v9, v0

    move v8, v1

    move v7, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v6, p2

    .end local v1    # "currentX":F
    .end local v2    # "currentY":F
    .end local v3    # "ctrlPointX":F
    .end local v4    # "ctrlPointY":F
    .end local v5    # "currentSegmentStartX":F
    .end local p2    # "previousCmd":C
    .local v6, "previousCmd":C
    .local v7, "currentY":F
    .local v8, "currentX":F
    .local v9, "k":I
    .local v20, "ctrlPointX":F
    .local v21, "ctrlPointY":F
    .local v22, "currentSegmentStartX":F
    .local v23, "currentSegmentStartY":F
    :goto_1
    array-length v0, v12

    if-ge v9, v0, :cond_20

    .line 419
    const/16 v0, 0x41

    const/4 v1, 0x0

    if-eq v11, v0, :cond_1d

    const/16 v0, 0x43

    if-eq v11, v0, :cond_1c

    const/16 v2, 0x48

    if-eq v11, v2, :cond_1b

    const/16 v2, 0x51

    if-eq v11, v2, :cond_1a

    const/16 v3, 0x56

    if-eq v11, v3, :cond_19

    const/16 v3, 0x61

    if-eq v11, v3, :cond_16

    const/16 v3, 0x63

    if-eq v11, v3, :cond_15

    const/16 v4, 0x68

    if-eq v11, v4, :cond_14

    const/16 v4, 0x71

    if-eq v11, v4, :cond_13

    const/16 v5, 0x76

    if-eq v11, v5, :cond_12

    const/16 v1, 0x4c

    if-eq v11, v1, :cond_11

    const/16 v1, 0x4d

    if-eq v11, v1, :cond_f

    const/16 v1, 0x53

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v11, v1, :cond_c

    const/16 v15, 0x54

    if-eq v11, v15, :cond_9

    const/16 v5, 0x6c

    if-eq v11, v5, :cond_8

    const/16 v5, 0x6d

    if-eq v11, v5, :cond_6

    const/16 v5, 0x73

    if-eq v11, v5, :cond_3

    const/16 v0, 0x74

    if-eq v11, v0, :cond_0

    move v14, v6

    move/from16 v24, v9

    goto/16 :goto_a

    .line 539
    :cond_0
    const/4 v0, 0x0

    .line 540
    .local v0, "reflectiveCtrlPointX":F
    const/4 v1, 0x0

    .line 541
    .local v1, "reflectiveCtrlPointY":F
    if-eq v6, v4, :cond_1

    const/16 v3, 0x74

    if-eq v6, v3, :cond_1

    if-eq v6, v2, :cond_1

    if-ne v6, v15, :cond_2

    .line 543
    :cond_1
    sub-float v0, v8, v20

    .line 544
    sub-float v1, v7, v21

    .line 546
    :cond_2
    add-int/lit8 v2, v9, 0x0

    aget v2, v12, v2

    add-int/lit8 v3, v9, 0x1

    aget v3, v12, v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 548
    add-float v2, v8, v0

    .line 549
    .end local v20    # "ctrlPointX":F
    .local v2, "ctrlPointX":F
    add-float v3, v7, v1

    .line 550
    .end local v21    # "ctrlPointY":F
    .local v3, "ctrlPointY":F
    add-int/lit8 v4, v9, 0x0

    aget v4, v12, v4

    add-float/2addr v8, v4

    .line 551
    add-int/lit8 v4, v9, 0x1

    aget v4, v12, v4

    add-float/2addr v7, v4

    .line 552
    move/from16 v20, v2

    move/from16 v21, v3

    move v14, v6

    move/from16 v24, v9

    goto/16 :goto_a

    .line 493
    .end local v0    # "reflectiveCtrlPointX":F
    .end local v1    # "reflectiveCtrlPointY":F
    .end local v2    # "ctrlPointX":F
    .end local v3    # "ctrlPointY":F
    .restart local v20    # "ctrlPointX":F
    .restart local v21    # "ctrlPointY":F
    :cond_3
    const/4 v2, 0x0

    .line 494
    .local v2, "reflectiveCtrlPointX":F
    const/4 v4, 0x0

    .line 495
    .local v4, "reflectiveCtrlPointY":F
    if-eq v6, v3, :cond_5

    const/16 v3, 0x73

    if-eq v6, v3, :cond_5

    if-eq v6, v0, :cond_5

    if-ne v6, v1, :cond_4

    goto :goto_2

    :cond_4
    move v15, v2

    move/from16 v24, v4

    goto :goto_3

    .line 497
    :cond_5
    :goto_2
    sub-float v0, v8, v20

    .line 498
    .end local v2    # "reflectiveCtrlPointX":F
    .restart local v0    # "reflectiveCtrlPointX":F
    sub-float v1, v7, v21

    move v15, v0

    move/from16 v24, v1

    .line 500
    .end local v0    # "reflectiveCtrlPointX":F
    .end local v4    # "reflectiveCtrlPointY":F
    .local v15, "reflectiveCtrlPointX":F
    .local v24, "reflectiveCtrlPointY":F
    :goto_3
    add-int/lit8 v0, v9, 0x0

    aget v3, v12, v0

    add-int/lit8 v0, v9, 0x1

    aget v4, v12, v0

    add-int/lit8 v0, v9, 0x2

    aget v5, v12, v0

    add-int/lit8 v0, v9, 0x3

    aget v25, v12, v0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v24

    move v14, v6

    .end local v6    # "previousCmd":C
    .local v14, "previousCmd":C
    move/from16 v6, v25

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 504
    add-int/lit8 v0, v9, 0x0

    aget v0, v12, v0

    add-float/2addr v0, v8

    .line 505
    .end local v20    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-int/lit8 v1, v9, 0x1

    aget v1, v12, v1

    add-float/2addr v1, v7

    .line 506
    .end local v21    # "ctrlPointY":F
    .local v1, "ctrlPointY":F
    add-int/lit8 v2, v9, 0x2

    aget v2, v12, v2

    add-float/2addr v8, v2

    .line 507
    add-int/lit8 v2, v9, 0x3

    aget v2, v12, v2

    add-float/2addr v7, v2

    .line 508
    move/from16 v20, v0

    move/from16 v21, v1

    move/from16 v24, v9

    goto/16 :goto_a

    .line 421
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v14    # "previousCmd":C
    .end local v15    # "reflectiveCtrlPointX":F
    .end local v24    # "reflectiveCtrlPointY":F
    .restart local v6    # "previousCmd":C
    .restart local v20    # "ctrlPointX":F
    .restart local v21    # "ctrlPointY":F
    :cond_6
    move v14, v6

    .end local v6    # "previousCmd":C
    .restart local v14    # "previousCmd":C
    add-int/lit8 v0, v9, 0x0

    aget v0, v12, v0

    add-float/2addr v8, v0

    .line 422
    add-int/lit8 v0, v9, 0x1

    aget v0, v12, v0

    add-float/2addr v7, v0

    .line 423
    if-lez v9, :cond_7

    .line 427
    add-int/lit8 v0, v9, 0x0

    aget v0, v12, v0

    add-int/lit8 v1, v9, 0x1

    aget v1, v12, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    move/from16 v24, v9

    goto/16 :goto_a

    .line 429
    :cond_7
    add-int/lit8 v0, v9, 0x0

    aget v0, v12, v0

    add-int/lit8 v1, v9, 0x1

    aget v1, v12, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 430
    move v0, v8

    .line 431
    .end local v22    # "currentSegmentStartX":F
    .local v0, "currentSegmentStartX":F
    move v1, v7

    .line 433
    .end local v23    # "currentSegmentStartY":F
    .local v1, "currentSegmentStartY":F
    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v9

    goto/16 :goto_a

    .line 449
    .end local v0    # "currentSegmentStartX":F
    .end local v1    # "currentSegmentStartY":F
    .end local v14    # "previousCmd":C
    .restart local v6    # "previousCmd":C
    .restart local v22    # "currentSegmentStartX":F
    .restart local v23    # "currentSegmentStartY":F
    :cond_8
    move v14, v6

    .end local v6    # "previousCmd":C
    .restart local v14    # "previousCmd":C
    add-int/lit8 v0, v9, 0x0

    aget v0, v12, v0

    add-int/lit8 v1, v9, 0x1

    aget v1, v12, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 450
    add-int/lit8 v0, v9, 0x0

    aget v0, v12, v0

    add-float/2addr v8, v0

    .line 451
    add-int/lit8 v0, v9, 0x1

    aget v0, v12, v0

    add-float/2addr v7, v0

    .line 452
    move/from16 v24, v9

    goto/16 :goto_a

    .line 554
    .end local v14    # "previousCmd":C
    .restart local v6    # "previousCmd":C
    :cond_9
    move v14, v6

    .end local v6    # "previousCmd":C
    .restart local v14    # "previousCmd":C
    move v0, v8

    .line 555
    .local v0, "reflectiveCtrlPointX":F
    move v1, v7

    .line 556
    .local v1, "reflectiveCtrlPointY":F
    if-eq v14, v4, :cond_a

    const/16 v3, 0x74

    if-eq v14, v3, :cond_a

    if-eq v14, v2, :cond_a

    if-ne v14, v15, :cond_b

    .line 558
    :cond_a
    mul-float v2, v8, v5

    sub-float v0, v2, v20

    .line 559
    mul-float v5, v5, v7

    sub-float v1, v5, v21

    .line 561
    :cond_b
    add-int/lit8 v2, v9, 0x0

    aget v2, v12, v2

    add-int/lit8 v3, v9, 0x1

    aget v3, v12, v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 563
    move v2, v0

    .line 564
    .end local v20    # "ctrlPointX":F
    .local v2, "ctrlPointX":F
    move v3, v1

    .line 565
    .end local v21    # "ctrlPointY":F
    .restart local v3    # "ctrlPointY":F
    add-int/lit8 v4, v9, 0x0

    aget v8, v12, v4

    .line 566
    add-int/lit8 v4, v9, 0x1

    aget v7, v12, v4

    .line 567
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v24, v9

    goto/16 :goto_a

    .line 510
    .end local v0    # "reflectiveCtrlPointX":F
    .end local v1    # "reflectiveCtrlPointY":F
    .end local v2    # "ctrlPointX":F
    .end local v3    # "ctrlPointY":F
    .end local v14    # "previousCmd":C
    .restart local v6    # "previousCmd":C
    .restart local v20    # "ctrlPointX":F
    .restart local v21    # "ctrlPointY":F
    :cond_c
    move v14, v6

    .end local v6    # "previousCmd":C
    .restart local v14    # "previousCmd":C
    move v2, v8

    .line 511
    .local v2, "reflectiveCtrlPointX":F
    move v4, v7

    .line 512
    .restart local v4    # "reflectiveCtrlPointY":F
    if-eq v14, v3, :cond_e

    const/16 v3, 0x73

    if-eq v14, v3, :cond_e

    if-eq v14, v0, :cond_e

    if-ne v14, v1, :cond_d

    goto :goto_4

    :cond_d
    move v15, v2

    move/from16 v24, v4

    goto :goto_5

    .line 514
    :cond_e
    :goto_4
    mul-float v0, v8, v5

    sub-float v0, v0, v20

    .line 515
    .end local v2    # "reflectiveCtrlPointX":F
    .restart local v0    # "reflectiveCtrlPointX":F
    mul-float v5, v5, v7

    sub-float v5, v5, v21

    move v15, v0

    move/from16 v24, v5

    .line 517
    .end local v0    # "reflectiveCtrlPointX":F
    .end local v4    # "reflectiveCtrlPointY":F
    .restart local v15    # "reflectiveCtrlPointX":F
    .restart local v24    # "reflectiveCtrlPointY":F
    :goto_5
    add-int/lit8 v0, v9, 0x0

    aget v3, v12, v0

    add-int/lit8 v0, v9, 0x1

    aget v4, v12, v0

    add-int/lit8 v0, v9, 0x2

    aget v5, v12, v0

    add-int/lit8 v0, v9, 0x3

    aget v6, v12, v0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v24

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 519
    add-int/lit8 v0, v9, 0x0

    aget v0, v12, v0

    .line 520
    .end local v20    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-int/lit8 v1, v9, 0x1

    aget v1, v12, v1

    .line 521
    .end local v21    # "ctrlPointY":F
    .local v1, "ctrlPointY":F
    add-int/lit8 v2, v9, 0x2

    aget v8, v12, v2

    .line 522
    add-int/lit8 v2, v9, 0x3

    aget v7, v12, v2

    .line 523
    move/from16 v20, v0

    move/from16 v21, v1

    move/from16 v24, v9

    goto/16 :goto_a

    .line 435
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v14    # "previousCmd":C
    .end local v15    # "reflectiveCtrlPointX":F
    .end local v24    # "reflectiveCtrlPointY":F
    .restart local v6    # "previousCmd":C
    .restart local v20    # "ctrlPointX":F
    .restart local v21    # "ctrlPointY":F
    :cond_f
    move v14, v6

    .end local v6    # "previousCmd":C
    .restart local v14    # "previousCmd":C
    add-int/lit8 v0, v9, 0x0

    aget v8, v12, v0

    .line 436
    add-int/lit8 v0, v9, 0x1

    aget v7, v12, v0

    .line 437
    if-lez v9, :cond_10

    .line 441
    add-int/lit8 v0, v9, 0x0

    aget v0, v12, v0

    add-int/lit8 v1, v9, 0x1

    aget v1, v12, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v24, v9

    goto/16 :goto_a

    .line 443
    :cond_10
    add-int/lit8 v0, v9, 0x0

    aget v0, v12, v0

    add-int/lit8 v1, v9, 0x1

    aget v1, v12, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 444
    move v0, v8

    .line 445
    .end local v22    # "currentSegmentStartX":F
    .local v0, "currentSegmentStartX":F
    move v1, v7

    .line 447
    .end local v23    # "currentSegmentStartY":F
    .local v1, "currentSegmentStartY":F
    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v9

    goto/16 :goto_a

    .line 454
    .end local v0    # "currentSegmentStartX":F
    .end local v1    # "currentSegmentStartY":F
    .end local v14    # "previousCmd":C
    .restart local v6    # "previousCmd":C
    .restart local v22    # "currentSegmentStartX":F
    .restart local v23    # "currentSegmentStartY":F
    :cond_11
    move v14, v6

    .end local v6    # "previousCmd":C
    .restart local v14    # "previousCmd":C
    add-int/lit8 v0, v9, 0x0

    aget v0, v12, v0

    add-int/lit8 v1, v9, 0x1

    aget v1, v12, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 455
    add-int/lit8 v0, v9, 0x0

    aget v8, v12, v0

    .line 456
    add-int/lit8 v0, v9, 0x1

    aget v7, v12, v0

    .line 457
    move/from16 v24, v9

    goto/16 :goto_a

    .line 467
    .end local v14    # "previousCmd":C
    .restart local v6    # "previousCmd":C
    :cond_12
    move v14, v6

    .end local v6    # "previousCmd":C
    .restart local v14    # "previousCmd":C
    add-int/lit8 v0, v9, 0x0

    aget v0, v12, v0

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 468
    add-int/lit8 v0, v9, 0x0

    aget v0, v12, v0

    add-float/2addr v7, v0

    .line 469
    move/from16 v24, v9

    goto/16 :goto_a

    .line 525
    .end local v14    # "previousCmd":C
    .restart local v6    # "previousCmd":C
    :cond_13
    move v14, v6

    .end local v6    # "previousCmd":C
    .restart local v14    # "previousCmd":C
    add-int/lit8 v0, v9, 0x0

    aget v0, v12, v0

    add-int/lit8 v1, v9, 0x1

    aget v1, v12, v1

    add-int/lit8 v2, v9, 0x2

    aget v2, v12, v2

    add-int/lit8 v3, v9, 0x3

    aget v3, v12, v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 526
    add-int/lit8 v0, v9, 0x0

    aget v0, v12, v0

    add-float/2addr v0, v8

    .line 527
    .end local v20    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-int/lit8 v1, v9, 0x1

    aget v1, v12, v1

    add-float/2addr v1, v7

    .line 528
    .end local v21    # "ctrlPointY":F
    .local v1, "ctrlPointY":F
    add-int/lit8 v2, v9, 0x2

    aget v2, v12, v2

    add-float/2addr v8, v2

    .line 529
    add-int/lit8 v2, v9, 0x3

    aget v2, v12, v2

    add-float/2addr v7, v2

    .line 530
    move/from16 v20, v0

    move/from16 v21, v1

    move/from16 v24, v9

    goto/16 :goto_a

    .line 459
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v14    # "previousCmd":C
    .restart local v6    # "previousCmd":C
    .restart local v20    # "ctrlPointX":F
    .restart local v21    # "ctrlPointY":F
    :cond_14
    move v14, v6

    .end local v6    # "previousCmd":C
    .restart local v14    # "previousCmd":C
    add-int/lit8 v0, v9, 0x0

    aget v0, v12, v0

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 460
    add-int/lit8 v0, v9, 0x0

    aget v0, v12, v0

    add-float/2addr v8, v0

    .line 461
    move/from16 v24, v9

    goto/16 :goto_a

    .line 475
    .end local v14    # "previousCmd":C
    .restart local v6    # "previousCmd":C
    :cond_15
    move v14, v6

    .end local v6    # "previousCmd":C
    .restart local v14    # "previousCmd":C
    add-int/lit8 v0, v9, 0x0

    aget v1, v12, v0

    add-int/lit8 v0, v9, 0x1

    aget v2, v12, v0

    add-int/lit8 v0, v9, 0x2

    aget v3, v12, v0

    add-int/lit8 v0, v9, 0x3

    aget v4, v12, v0

    add-int/lit8 v0, v9, 0x4

    aget v5, v12, v0

    add-int/lit8 v0, v9, 0x5

    aget v6, v12, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 478
    add-int/lit8 v0, v9, 0x2

    aget v0, v12, v0

    add-float/2addr v0, v8

    .line 479
    .end local v20    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    add-int/lit8 v1, v9, 0x3

    aget v1, v12, v1

    add-float/2addr v1, v7

    .line 480
    .end local v21    # "ctrlPointY":F
    .restart local v1    # "ctrlPointY":F
    add-int/lit8 v2, v9, 0x4

    aget v2, v12, v2

    add-float/2addr v8, v2

    .line 481
    add-int/lit8 v2, v9, 0x5

    aget v2, v12, v2

    add-float/2addr v7, v2

    .line 483
    move/from16 v20, v0

    move/from16 v21, v1

    move/from16 v24, v9

    goto/16 :goto_a

    .line 570
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v14    # "previousCmd":C
    .restart local v6    # "previousCmd":C
    .restart local v20    # "ctrlPointX":F
    .restart local v21    # "ctrlPointY":F
    :cond_16
    move v14, v6

    .end local v6    # "previousCmd":C
    .restart local v14    # "previousCmd":C
    add-int/lit8 v0, v9, 0x5

    aget v0, v12, v0

    add-float v3, v0, v8

    add-int/lit8 v0, v9, 0x6

    aget v0, v12, v0

    add-float v4, v0, v7

    add-int/lit8 v0, v9, 0x0

    aget v5, v12, v0

    add-int/lit8 v0, v9, 0x1

    aget v6, v12, v0

    add-int/lit8 v0, v9, 0x2

    aget v15, v12, v0

    add-int/lit8 v0, v9, 0x3

    aget v0, v12, v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17

    const/16 v24, 0x1

    goto :goto_6

    :cond_17
    const/16 v24, 0x0

    :goto_6
    add-int/lit8 v0, v9, 0x4

    aget v0, v12, v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_18

    const/16 v25, 0x1

    goto :goto_7

    :cond_18
    const/16 v25, 0x0

    :goto_7
    move-object/from16 v0, p0

    move v1, v8

    move v2, v7

    move v13, v7

    .end local v7    # "currentY":F
    .local v13, "currentY":F
    move v7, v15

    move v15, v8

    .end local v8    # "currentX":F
    .local v15, "currentX":F
    move/from16 v8, v24

    move/from16 v24, v9

    .end local v9    # "k":I
    .local v24, "k":I
    move/from16 v9, v25

    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 580
    add-int/lit8 v9, v24, 0x5

    aget v0, v12, v9

    add-float v8, v15, v0

    .line 581
    .end local v15    # "currentX":F
    .restart local v8    # "currentX":F
    add-int/lit8 v9, v24, 0x6

    aget v0, v12, v9

    add-float v7, v13, v0

    .line 582
    .end local v13    # "currentY":F
    .restart local v7    # "currentY":F
    move v0, v8

    .line 583
    .end local v20    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    move v1, v7

    .line 584
    .end local v21    # "ctrlPointY":F
    .restart local v1    # "ctrlPointY":F
    move/from16 v20, v0

    move/from16 v21, v1

    goto/16 :goto_a

    .line 471
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v14    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "previousCmd":C
    .restart local v9    # "k":I
    .restart local v20    # "ctrlPointX":F
    .restart local v21    # "ctrlPointY":F
    :cond_19
    move v14, v6

    move v13, v7

    move v15, v8

    move/from16 v24, v9

    .end local v6    # "previousCmd":C
    .end local v7    # "currentY":F
    .end local v8    # "currentX":F
    .end local v9    # "k":I
    .restart local v13    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v15    # "currentX":F
    .restart local v24    # "k":I
    add-int/lit8 v9, v24, 0x0

    aget v0, v12, v9

    invoke-virtual {v10, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 472
    add-int/lit8 v9, v24, 0x0

    aget v7, v12, v9

    .line 473
    .end local v13    # "currentY":F
    .restart local v7    # "currentY":F
    goto/16 :goto_a

    .line 532
    .end local v14    # "previousCmd":C
    .end local v15    # "currentX":F
    .end local v24    # "k":I
    .restart local v6    # "previousCmd":C
    .restart local v8    # "currentX":F
    .restart local v9    # "k":I
    :cond_1a
    move v14, v6

    move v13, v7

    move v15, v8

    move/from16 v24, v9

    .end local v6    # "previousCmd":C
    .end local v7    # "currentY":F
    .end local v8    # "currentX":F
    .end local v9    # "k":I
    .restart local v13    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v15    # "currentX":F
    .restart local v24    # "k":I
    add-int/lit8 v9, v24, 0x0

    aget v0, v12, v9

    add-int/lit8 v9, v24, 0x1

    aget v1, v12, v9

    add-int/lit8 v9, v24, 0x2

    aget v2, v12, v9

    add-int/lit8 v9, v24, 0x3

    aget v3, v12, v9

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 533
    add-int/lit8 v9, v24, 0x0

    aget v0, v12, v9

    .line 534
    .end local v20    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    add-int/lit8 v9, v24, 0x1

    aget v1, v12, v9

    .line 535
    .end local v21    # "ctrlPointY":F
    .restart local v1    # "ctrlPointY":F
    add-int/lit8 v9, v24, 0x2

    aget v8, v12, v9

    .line 536
    .end local v15    # "currentX":F
    .restart local v8    # "currentX":F
    add-int/lit8 v9, v24, 0x3

    aget v7, v12, v9

    .line 537
    .end local v13    # "currentY":F
    .restart local v7    # "currentY":F
    move/from16 v20, v0

    move/from16 v21, v1

    goto/16 :goto_a

    .line 463
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v14    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "previousCmd":C
    .restart local v9    # "k":I
    .restart local v20    # "ctrlPointX":F
    .restart local v21    # "ctrlPointY":F
    :cond_1b
    move v14, v6

    move v13, v7

    move v15, v8

    move/from16 v24, v9

    .end local v6    # "previousCmd":C
    .end local v7    # "currentY":F
    .end local v8    # "currentX":F
    .end local v9    # "k":I
    .restart local v13    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v15    # "currentX":F
    .restart local v24    # "k":I
    add-int/lit8 v9, v24, 0x0

    aget v0, v12, v9

    invoke-virtual {v10, v0, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 464
    add-int/lit8 v9, v24, 0x0

    aget v8, v12, v9

    .line 465
    .end local v15    # "currentX":F
    .restart local v8    # "currentX":F
    goto/16 :goto_a

    .line 485
    .end local v13    # "currentY":F
    .end local v14    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "previousCmd":C
    .restart local v7    # "currentY":F
    .restart local v9    # "k":I
    :cond_1c
    move v14, v6

    move v13, v7

    move v15, v8

    move/from16 v24, v9

    .end local v6    # "previousCmd":C
    .end local v7    # "currentY":F
    .end local v8    # "currentX":F
    .end local v9    # "k":I
    .restart local v13    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v15    # "currentX":F
    .restart local v24    # "k":I
    add-int/lit8 v9, v24, 0x0

    aget v1, v12, v9

    add-int/lit8 v9, v24, 0x1

    aget v2, v12, v9

    add-int/lit8 v9, v24, 0x2

    aget v3, v12, v9

    add-int/lit8 v9, v24, 0x3

    aget v4, v12, v9

    add-int/lit8 v9, v24, 0x4

    aget v5, v12, v9

    add-int/lit8 v9, v24, 0x5

    aget v6, v12, v9

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 487
    add-int/lit8 v9, v24, 0x4

    aget v8, v12, v9

    .line 488
    .end local v15    # "currentX":F
    .restart local v8    # "currentX":F
    add-int/lit8 v9, v24, 0x5

    aget v7, v12, v9

    .line 489
    .end local v13    # "currentY":F
    .restart local v7    # "currentY":F
    add-int/lit8 v9, v24, 0x2

    aget v0, v12, v9

    .line 490
    .end local v20    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    add-int/lit8 v9, v24, 0x3

    aget v1, v12, v9

    .line 491
    .end local v21    # "ctrlPointY":F
    .restart local v1    # "ctrlPointY":F
    move/from16 v20, v0

    move/from16 v21, v1

    goto :goto_a

    .line 586
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v14    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "previousCmd":C
    .restart local v9    # "k":I
    .restart local v20    # "ctrlPointX":F
    .restart local v21    # "ctrlPointY":F
    :cond_1d
    move v14, v6

    move v13, v7

    move v15, v8

    move/from16 v24, v9

    .end local v6    # "previousCmd":C
    .end local v7    # "currentY":F
    .end local v8    # "currentX":F
    .end local v9    # "k":I
    .restart local v13    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v15    # "currentX":F
    .restart local v24    # "k":I
    add-int/lit8 v9, v24, 0x5

    aget v3, v12, v9

    add-int/lit8 v9, v24, 0x6

    aget v4, v12, v9

    add-int/lit8 v9, v24, 0x0

    aget v5, v12, v9

    add-int/lit8 v9, v24, 0x1

    aget v6, v12, v9

    add-int/lit8 v9, v24, 0x2

    aget v7, v12, v9

    add-int/lit8 v9, v24, 0x3

    aget v0, v12, v9

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1e

    const/4 v8, 0x1

    goto :goto_8

    :cond_1e
    const/4 v8, 0x0

    :goto_8
    add-int/lit8 v9, v24, 0x4

    aget v0, v12, v9

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1f

    const/4 v9, 0x1

    goto :goto_9

    :cond_1f
    const/4 v9, 0x0

    :goto_9
    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 596
    add-int/lit8 v9, v24, 0x5

    aget v8, v12, v9

    .line 597
    .end local v15    # "currentX":F
    .restart local v8    # "currentX":F
    add-int/lit8 v9, v24, 0x6

    aget v7, v12, v9

    .line 598
    .end local v13    # "currentY":F
    .restart local v7    # "currentY":F
    move v0, v8

    .line 599
    .end local v20    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    move v1, v7

    move/from16 v20, v0

    move/from16 v21, v1

    .line 602
    .end local v0    # "ctrlPointX":F
    .restart local v20    # "ctrlPointX":F
    :goto_a
    move/from16 v6, p3

    .line 418
    .end local v14    # "previousCmd":C
    .restart local v6    # "previousCmd":C
    add-int v9, v24, v19

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x2

    .end local v24    # "k":I
    .restart local v9    # "k":I
    goto/16 :goto_1

    :cond_20
    move v13, v7

    move v15, v8

    .line 604
    .end local v7    # "currentY":F
    .end local v8    # "currentX":F
    .end local v9    # "k":I
    .restart local v13    # "currentY":F
    .restart local v15    # "currentX":F
    const/4 v0, 0x0

    aput v15, p1, v0

    .line 605
    const/4 v0, 0x1

    aput v13, p1, v0

    .line 606
    const/4 v0, 0x2

    aput v20, p1, v0

    .line 607
    aput v21, p1, v16

    .line 608
    aput v22, p1, v17

    .line 609
    aput v23, p1, v18

    .line 610
    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_2
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_2
        0x56 -> :sswitch_3
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_2
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_2
        0x76 -> :sswitch_3
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 66
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "cx"    # D
    .param p3, "cy"    # D
    .param p5, "a"    # D
    .param p7, "b"    # D
    .param p9, "e1x"    # D
    .param p11, "e1y"    # D
    .param p13, "theta"    # D
    .param p15, "start"    # D
    .param p17, "sweep"    # D

    .line 717
    move-wide/from16 v0, p5

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v4, p17, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 719
    .local v4, "numSegments":I
    move-wide/from16 v5, p15

    .line 720
    .local v5, "eta1":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 721
    .local v7, "cosTheta":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 722
    .local v9, "sinTheta":D
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 723
    .local v11, "cosEta1":D
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 724
    .local v13, "sinEta1":D
    neg-double v2, v0

    mul-double v2, v2, v7

    mul-double v2, v2, v13

    mul-double v17, p7, v9

    mul-double v17, v17, v11

    sub-double v2, v2, v17

    .line 725
    .local v2, "ep1x":D
    move-wide/from16 v17, v2

    .end local v2    # "ep1x":D
    .local v17, "ep1x":D
    neg-double v2, v0

    mul-double v2, v2, v9

    mul-double v2, v2, v13

    mul-double v19, p7, v7

    mul-double v19, v19, v11

    add-double v2, v2, v19

    .line 727
    .local v2, "ep1y":D
    move-wide/from16 v19, v2

    .end local v2    # "ep1y":D
    .local v19, "ep1y":D
    int-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, p17, v2

    .line 728
    .local v2, "anglePerSegment":D
    const/16 v21, 0x0

    move-wide/from16 v23, v17

    move-wide/from16 v25, v19

    move-wide/from16 v17, p9

    move-wide/from16 v19, p11

    move-wide/from16 v64, v5

    move/from16 v5, v21

    move-wide/from16 v21, v64

    .end local p9    # "e1x":D
    .end local p11    # "e1y":D
    .local v5, "i":I
    .local v17, "e1x":D
    .local v19, "e1y":D
    .local v21, "eta1":D
    .local v23, "ep1x":D
    .local v25, "ep1y":D
    :goto_0
    if-ge v5, v4, :cond_0

    .line 729
    add-double v27, v21, v2

    .line 730
    .local v27, "eta2":D
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    .line 731
    .local v29, "sinEta2":D
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    .line 732
    .local v31, "cosEta2":D
    mul-double v33, v0, v7

    mul-double v33, v33, v31

    add-double v33, p1, v33

    mul-double v35, p7, v9

    mul-double v35, v35, v29

    move-wide/from16 v37, v2

    .end local v2    # "anglePerSegment":D
    .local v37, "anglePerSegment":D
    sub-double v2, v33, v35

    .line 733
    .local v2, "e2x":D
    mul-double v33, v0, v9

    mul-double v33, v33, v31

    add-double v33, p3, v33

    mul-double v35, p7, v7

    mul-double v35, v35, v29

    move-wide/from16 v39, v11

    .end local v11    # "cosEta1":D
    .local v39, "cosEta1":D
    add-double v11, v33, v35

    .line 734
    .local v11, "e2y":D
    move-wide/from16 v33, v13

    .end local v13    # "sinEta1":D
    .local v33, "sinEta1":D
    neg-double v13, v0

    mul-double v13, v13, v7

    mul-double v13, v13, v29

    mul-double v35, p7, v9

    mul-double v35, v35, v31

    sub-double v13, v13, v35

    .line 735
    .local v13, "ep2x":D
    move v6, v4

    move/from16 v35, v5

    .end local v4    # "numSegments":I
    .end local v5    # "i":I
    .local v6, "numSegments":I
    .local v35, "i":I
    neg-double v4, v0

    mul-double v4, v4, v9

    mul-double v4, v4, v29

    mul-double v41, p7, v7

    mul-double v41, v41, v31

    add-double v4, v4, v41

    .line 736
    .local v4, "ep2y":D
    sub-double v41, v27, v21

    const-wide/high16 v43, 0x4000000000000000L    # 2.0

    div-double v41, v41, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->tan(D)D

    move-result-wide v41

    .line 737
    .local v41, "tanDiff2":D
    sub-double v43, v27, v21

    .line 738
    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->sin(D)D

    move-result-wide v43

    const-wide/high16 v45, 0x4008000000000000L    # 3.0

    mul-double v47, v41, v45

    mul-double v47, v47, v41

    const-wide/high16 v15, 0x4010000000000000L    # 4.0

    add-double v47, v47, v15

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v47

    const-wide/high16 v49, 0x3ff0000000000000L    # 1.0

    sub-double v47, v47, v49

    mul-double v43, v43, v47

    div-double v43, v43, v45

    .line 739
    .local v43, "alpha":D
    mul-double v45, v43, v23

    add-double v0, v17, v45

    .line 740
    .local v0, "q1x":D
    mul-double v45, v43, v25

    move/from16 p9, v6

    move-wide/from16 v47, v7

    .end local v6    # "numSegments":I
    .end local v7    # "cosTheta":D
    .local v47, "cosTheta":D
    .local p9, "numSegments":I
    add-double v6, v19, v45

    .line 741
    .local v6, "q1y":D
    mul-double v45, v43, v13

    move-wide/from16 v49, v9

    .end local v9    # "sinTheta":D
    .local v49, "sinTheta":D
    sub-double v8, v2, v45

    .line 742
    .local v8, "q2x":D
    mul-double v45, v43, v4

    move-wide/from16 p10, v4

    .end local v4    # "ep2y":D
    .local p10, "ep2y":D
    sub-double v4, v11, v45

    .line 745
    .local v4, "q2y":D
    const/4 v10, 0x0

    move-object/from16 v15, p0

    invoke-virtual {v15, v10, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 747
    double-to-float v10, v0

    move-wide/from16 v58, v0

    .end local v0    # "q1x":D
    .local v58, "q1x":D
    double-to-float v0, v6

    double-to-float v1, v8

    move-wide/from16 v60, v6

    .end local v6    # "q1y":D
    .local v60, "q1y":D
    double-to-float v6, v4

    double-to-float v7, v2

    move-wide/from16 v62, v4

    .end local v4    # "q2y":D
    .local v62, "q2y":D
    double-to-float v4, v11

    move-object/from16 v51, p0

    move/from16 v52, v10

    move/from16 v53, v0

    move/from16 v54, v1

    move/from16 v55, v6

    move/from16 v56, v7

    move/from16 v57, v4

    invoke-virtual/range {v51 .. v57}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 753
    move-wide/from16 v21, v27

    .line 754
    move-wide/from16 v17, v2

    .line 755
    move-wide/from16 v19, v11

    .line 756
    move-wide/from16 v23, v13

    .line 757
    move-wide/from16 v25, p10

    .line 728
    .end local v2    # "e2x":D
    .end local v8    # "q2x":D
    .end local v11    # "e2y":D
    .end local v13    # "ep2x":D
    .end local v27    # "eta2":D
    .end local v29    # "sinEta2":D
    .end local v31    # "cosEta2":D
    .end local v41    # "tanDiff2":D
    .end local v43    # "alpha":D
    .end local v58    # "q1x":D
    .end local v60    # "q1y":D
    .end local v62    # "q2y":D
    .end local p10    # "ep2y":D
    add-int/lit8 v5, v35, 0x1

    move-wide/from16 v0, p5

    move/from16 v4, p9

    move-wide/from16 v13, v33

    move-wide/from16 v2, v37

    move-wide/from16 v11, v39

    move-wide/from16 v7, v47

    move-wide/from16 v9, v49

    .end local v35    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_0

    .line 759
    .end local v5    # "i":I
    .end local v33    # "sinEta1":D
    .end local v37    # "anglePerSegment":D
    .end local v39    # "cosEta1":D
    .end local v47    # "cosTheta":D
    .end local v49    # "sinTheta":D
    .end local p9    # "numSegments":I
    .local v2, "anglePerSegment":D
    .local v4, "numSegments":I
    .restart local v7    # "cosTheta":D
    .restart local v9    # "sinTheta":D
    .local v11, "cosEta1":D
    .local v13, "sinEta1":D
    :cond_0
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 73
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "a"    # F
    .param p6, "b"    # F
    .param p7, "theta"    # F
    .param p8, "isMoreThanHalf"    # Z
    .param p9, "isPositiveArc"    # Z

    .line 624
    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v9, p9

    move/from16 v8, p7

    float-to-double v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v35

    .line 626
    .local v35, "thetaD":D
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->cos(D)D

    move-result-wide v37

    .line 627
    .local v37, "cosTheta":D
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sin(D)D

    move-result-wide v39

    .line 630
    .local v39, "sinTheta":D
    float-to-double v0, v10

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v37

    float-to-double v2, v11

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v39

    add-double/2addr v0, v2

    float-to-double v2, v14

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v41, v0, v2

    .line 631
    .local v41, "x0p":D
    neg-float v0, v10

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v39

    float-to-double v2, v11

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v37

    add-double/2addr v0, v2

    float-to-double v2, v15

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v43, v0, v2

    .line 632
    .local v43, "y0p":D
    float-to-double v0, v12

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v37

    float-to-double v2, v13

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v39

    add-double/2addr v0, v2

    float-to-double v2, v14

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v45, v0, v2

    .line 633
    .local v45, "x1p":D
    neg-float v0, v12

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v39

    float-to-double v2, v13

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v37

    add-double/2addr v0, v2

    float-to-double v2, v15

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v47, v0, v2

    .line 636
    .local v47, "y1p":D
    sub-double v49, v41, v45

    .line 637
    .local v49, "dx":D
    sub-double v51, v43, v47

    .line 638
    .local v51, "dy":D
    add-double v0, v41, v45

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v53, v0, v2

    .line 639
    .local v53, "xm":D
    add-double v0, v43, v47

    div-double v55, v0, v2

    .line 641
    .local v55, "ym":D
    mul-double v0, v49, v49

    mul-double v2, v51, v51

    add-double v6, v0, v2

    .line 642
    .local v6, "dsq":D
    const-string v0, "PathParser"

    const-wide/16 v1, 0x0

    cmpl-double v3, v6, v1

    if-nez v3, :cond_0

    .line 643
    const-string v1, " Points are coincident"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void

    .line 646
    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v6

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    sub-double v57, v3, v16

    .line 647
    .local v57, "disc":D
    cmpg-double v3, v57, v1

    if-gez v3, :cond_1

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Points are too far apart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v0, v2

    double-to-float v5, v0

    .line 650
    .local v5, "adjust":F
    mul-float v16, v14, v5

    mul-float v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v18, v5

    .end local v5    # "adjust":F
    .local v18, "adjust":F
    move/from16 v5, v16

    move-wide/from16 v59, v6

    .end local v6    # "dsq":D
    .local v59, "dsq":D
    move/from16 v6, v17

    move/from16 v7, p7

    move/from16 v8, p8

    move v12, v9

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 652
    return-void

    .line 654
    .end local v18    # "adjust":F
    .end local v59    # "dsq":D
    .restart local v6    # "dsq":D
    :cond_1
    move-wide/from16 v59, v6

    move v12, v9

    .end local v6    # "dsq":D
    .restart local v59    # "dsq":D
    invoke-static/range {v57 .. v58}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 655
    .local v3, "s":D
    mul-double v5, v3, v49

    .line 656
    .local v5, "sdx":D
    mul-double v7, v3, v51

    .line 659
    .local v7, "sdy":D
    move/from16 v0, p8

    if-ne v0, v12, :cond_2

    .line 660
    sub-double v16, v53, v7

    .line 661
    .local v16, "cx":D
    add-double v18, v55, v5

    .local v18, "cy":D
    goto :goto_0

    .line 663
    .end local v16    # "cx":D
    .end local v18    # "cy":D
    :cond_2
    add-double v16, v53, v7

    .line 664
    .restart local v16    # "cx":D
    sub-double v18, v55, v5

    .line 667
    .restart local v18    # "cy":D
    :goto_0
    sub-double v1, v43, v18

    move-wide/from16 v61, v3

    .end local v3    # "s":D
    .local v61, "s":D
    sub-double v3, v41, v16

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 669
    .local v1, "eta0":D
    sub-double v3, v47, v18

    move-wide/from16 v63, v5

    .end local v5    # "sdx":D
    .local v63, "sdx":D
    sub-double v5, v45, v16

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    .line 671
    .local v3, "eta1":D
    sub-double v5, v3, v1

    .line 672
    .local v5, "sweep":D
    const-wide/16 v20, 0x0

    cmpl-double v9, v5, v20

    if-ltz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eq v12, v9, :cond_5

    .line 673
    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/16 v20, 0x0

    cmpl-double v9, v5, v20

    if-lez v9, :cond_4

    .line 674
    sub-double v5, v5, v22

    goto :goto_2

    .line 676
    :cond_4
    add-double v5, v5, v22

    .line 680
    :cond_5
    :goto_2
    move-wide/from16 v65, v3

    .end local v3    # "eta1":D
    .local v65, "eta1":D
    float-to-double v3, v14

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v16, v3

    .line 681
    float-to-double v3, v15

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v18

    .line 682
    .end local v18    # "cy":D
    .local v3, "cy":D
    move-wide/from16 v67, v16

    .line 683
    .local v67, "tcx":D
    mul-double v18, v16, v37

    mul-double v20, v3, v39

    sub-double v69, v18, v20

    .end local v16    # "cx":D
    .local v69, "cx":D
    move-wide/from16 v17, v69

    .line 684
    mul-double v19, v67, v39

    mul-double v21, v3, v37

    add-double v3, v19, v21

    move-wide/from16 v19, v3

    .line 686
    move-wide/from16 v71, v3

    .end local v3    # "cy":D
    .local v71, "cy":D
    float-to-double v3, v14

    move-wide/from16 v21, v3

    float-to-double v3, v15

    move-wide/from16 v23, v3

    float-to-double v3, v10

    move-wide/from16 v25, v3

    float-to-double v3, v11

    move-wide/from16 v27, v3

    move-object/from16 v16, p0

    move-wide/from16 v29, v35

    move-wide/from16 v31, v1

    move-wide/from16 v33, v5

    invoke-static/range {v16 .. v34}, Landroidx/core/graphics/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    .line 687
    return-void
.end method

.method public static nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .locals 5
    .param p0, "node"    # [Landroidx/core/graphics/PathParser$PathDataNode;
    .param p1, "path"    # Landroid/graphics/Path;

    .line 337
    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 338
    .local v0, "current":[F
    const/16 v1, 0x6d

    .line 339
    .local v1, "previousCommand":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 340
    aget-object v3, p0, v2

    iget-char v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    aget-object v4, p0, v2

    iget-object v4, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    invoke-static {p1, v0, v1, v3, v4}, Landroidx/core/graphics/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    .line 341
    aget-object v3, p0, v2

    iget-char v1, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V
    .locals 4
    .param p1, "nodeFrom"    # Landroidx/core/graphics/PathParser$PathDataNode;
    .param p2, "nodeTo"    # Landroidx/core/graphics/PathParser$PathDataNode;
    .param p3, "fraction"    # F

    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 357
    iget-object v2, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v1, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float v1, v1, v3

    iget-object v3, p2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v0

    mul-float v3, v3, p3

    add-float/2addr v1, v3

    aput v1, v2, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
