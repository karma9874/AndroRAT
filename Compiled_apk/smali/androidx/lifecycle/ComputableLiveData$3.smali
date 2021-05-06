.class Landroidx/lifecycle/ComputableLiveData$3;
.super Ljava/lang/Object;
.source "ComputableLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ComputableLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/ComputableLiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/ComputableLiveData;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/lifecycle/ComputableLiveData;

    .line 124
    .local p0, "this":Landroidx/lifecycle/ComputableLiveData$3;, "Landroidx/lifecycle/ComputableLiveData$3;"
    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData$3;->this$0:Landroidx/lifecycle/ComputableLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 128
    .local p0, "this":Landroidx/lifecycle/ComputableLiveData$3;, "Landroidx/lifecycle/ComputableLiveData$3;"
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData$3;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v0, v0, Landroidx/lifecycle/ComputableLiveData;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->hasActiveObservers()Z

    move-result v0

    .line 129
    .local v0, "isActive":Z
    iget-object v1, p0, Landroidx/lifecycle/ComputableLiveData$3;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v1, v1, Landroidx/lifecycle/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Landroidx/lifecycle/ComputableLiveData$3;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v1, v1, Landroidx/lifecycle/ComputableLiveData;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/lifecycle/ComputableLiveData$3;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v2, v2, Landroidx/lifecycle/ComputableLiveData;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 134
    :cond_0
    return-void
.end method
