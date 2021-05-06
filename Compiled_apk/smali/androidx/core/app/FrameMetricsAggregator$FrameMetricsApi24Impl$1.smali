.class Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;


# direct methods
.method constructor <init>(Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 352
    iput-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 10
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "frameMetrics"    # Landroid/view/FrameMetrics;
    .param p3, "dropCountSinceLastInvocation"    # I

    .line 356
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v4, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v4, v4, v2

    .line 358
    invoke-virtual {p2, v3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v5

    .line 357
    invoke-virtual {v0, v4, v5, v6}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 360
    :cond_0
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 v4, 0x2

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v5, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v5, v5, v1

    .line 362
    invoke-virtual {p2, v1}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 361
    invoke-virtual {v0, v5, v6, v7}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 365
    :cond_1
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v5, 0x3

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v6, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v6, v6, v4

    .line 367
    invoke-virtual {p2, v5}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v7

    .line 366
    invoke-virtual {v0, v6, v7, v8}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 370
    :cond_2
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 371
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v6, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v5, v6, v5

    .line 372
    invoke-virtual {p2, v1}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 371
    invoke-virtual {v0, v5, v6, v7}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 374
    :cond_3
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit8 v0, v0, 0x10

    const/4 v5, 0x5

    if-eqz v0, :cond_4

    .line 375
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v6, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v1, v6, v1

    .line 376
    invoke-virtual {p2, v5}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 375
    invoke-virtual {v0, v1, v6, v7}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 378
    :cond_4
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x7

    const/4 v6, 0x6

    if-eqz v0, :cond_5

    .line 379
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v7, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v7, v7, v6

    .line 380
    invoke-virtual {p2, v1}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v8

    .line 379
    invoke-virtual {v0, v7, v8, v9}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 383
    :cond_5
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 384
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v7, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v5, v7, v5

    .line 385
    invoke-virtual {p2, v6}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 384
    invoke-virtual {v0, v5, v6, v7}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 388
    :cond_6
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 389
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v5, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v1, v5, v1

    .line 390
    invoke-virtual {p2, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v5

    .line 389
    invoke-virtual {v0, v1, v5, v6}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 393
    :cond_7
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 394
    iget-object v0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    .line 395
    invoke-virtual {p2, v4}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    .line 394
    invoke-virtual {v0, v1, v2, v3}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 398
    :cond_8
    return-void
.end method
