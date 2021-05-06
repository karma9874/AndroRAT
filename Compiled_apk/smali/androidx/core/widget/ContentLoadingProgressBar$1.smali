.class Landroidx/core/widget/ContentLoadingProgressBar$1;
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

    .line 45
    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar$1;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 49
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$1;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    .line 50
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 51
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    .line 52
    return-void
.end method
