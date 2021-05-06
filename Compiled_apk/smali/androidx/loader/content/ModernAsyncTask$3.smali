.class Landroidx/loader/content/ModernAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/loader/content/ModernAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/loader/content/ModernAsyncTask;


# direct methods
.method constructor <init>(Landroidx/loader/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/loader/content/ModernAsyncTask;

    .line 153
    .local p0, "this":Landroidx/loader/content/ModernAsyncTask$3;, "Landroidx/loader/content/ModernAsyncTask$3;"
    .local p2, "x0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Landroidx/loader/content/ModernAsyncTask$3;->this$0:Landroidx/loader/content/ModernAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 4

    .line 157
    .local p0, "this":Landroidx/loader/content/ModernAsyncTask$3;, "Landroidx/loader/content/ModernAsyncTask$3;"
    const-string v0, "An error occurred while executing doInBackground()"

    :try_start_0
    invoke-virtual {p0}, Landroidx/loader/content/ModernAsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v1

    .line 159
    .local v1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v2, p0, Landroidx/loader/content/ModernAsyncTask$3;->this$0:Landroidx/loader/content/ModernAsyncTask;

    invoke-virtual {v2, v1}, Landroidx/loader/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "result":Ljava/lang/Object;, "TResult;"
    goto :goto_0

    .line 167
    :catchall_0
    move-exception v1

    .line 168
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 165
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Landroidx/loader/content/ModernAsyncTask$3;->this$0:Landroidx/loader/content/ModernAsyncTask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/loader/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    goto :goto_0

    .line 162
    :catch_1
    move-exception v1

    .line 163
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    .line 164
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 160
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 171
    return-void
.end method
