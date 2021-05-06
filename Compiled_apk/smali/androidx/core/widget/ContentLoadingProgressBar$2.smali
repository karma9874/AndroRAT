.class Landroidx/core/widget/ContentLoadingProgressBar$2;
.super Ljava/lang/Object;
.source "ContentLoadingProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/ContentLoadingProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/widget/ContentLoadingProgressBar;


# direct methods
.method constructor <init>(Landroidx/core/widget/ContentLoadingProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/core/widget/ContentLoadingProgressBar;

    .line 55
    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar$2;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 59
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$2;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 60
    iget-boolean v0, v0, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$2;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 62
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$2;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {v0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    .line 64
    :cond_0
    return-void
.end method
