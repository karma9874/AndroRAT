.class public final Lorg/apache/commons/io/monitor/FileAlterationMonitor;
.super Ljava/lang/Object;
.source "FileAlterationMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final interval:J

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/io/monitor/FileAlterationObserver;",
            ">;"
        }
    .end annotation
.end field

.field private volatile running:Z

.field private thread:Ljava/lang/Thread;

.field private threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    const-wide/16 v0, 0x2710

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;-><init>(J)V

    .line 44
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "interval"    # J

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    .line 53
    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->interval:J

    .line 54
    return-void
.end method

.method public varargs constructor <init>(J[Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 4
    .param p1, "interval"    # J
    .param p3, "observers"    # [Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;-><init>(J)V

    .line 65
    if-eqz p3, :cond_0

    .line 66
    move-object v0, p3

    .local v0, "arr$":[Lorg/apache/commons/io/monitor/FileAlterationObserver;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 67
    .local v3, "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    invoke-virtual {p0, v3}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->addObserver(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    .line 66
    .end local v3    # "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "arr$":[Lorg/apache/commons/io/monitor/FileAlterationObserver;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 96
    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    return-void
.end method

.method public getInterval()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->interval:J

    return-wide v0
.end method

.method public getObservers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/io/monitor/FileAlterationObserver;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    return-object v0
.end method

.method public removeObserver(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 107
    if-eqz p1, :cond_0

    .line 108
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 168
    :goto_0
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 170
    .local v1, "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    invoke-virtual {v1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->checkAndNotify()V

    .end local v1    # "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    goto :goto_1

    .line 172
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-nez v0, :cond_1

    .line 173
    goto :goto_3

    .line 176
    :cond_1
    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->interval:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 177
    :catch_0
    move-exception v0

    .line 178
    :goto_2
    goto :goto_0

    .line 180
    :cond_2
    :goto_3
    return-void
.end method

.method public declared-synchronized setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    monitor-enter p0

    .line 87
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->threadFactory:Ljava/util/concurrent/ThreadFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 86
    .end local p0    # "this":Lorg/apache/commons/io/monitor/FileAlterationMonitor;
    .end local p1    # "threadFactory":Ljava/util/concurrent/ThreadFactory;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 129
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-nez v0, :cond_2

    .line 132
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 133
    .local v1, "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    invoke-virtual {v1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->initialize()V

    .end local v1    # "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    goto :goto_0

    .line 135
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local p0    # "this":Lorg/apache/commons/io/monitor/FileAlterationMonitor;
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    .line 136
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    goto :goto_1

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    .line 141
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 130
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Monitor is already running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-eqz v0, :cond_1

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    iget-wide v1, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->interval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    goto :goto_0

    .line 156
    .end local p0    # "this":Lorg/apache/commons/io/monitor/FileAlterationMonitor;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 159
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 160
    .local v1, "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    invoke-virtual {v1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    goto :goto_1

    .line 162
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void

    .line 151
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Monitor is not running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
