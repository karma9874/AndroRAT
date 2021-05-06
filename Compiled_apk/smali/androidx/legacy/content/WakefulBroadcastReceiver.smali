.class public abstract Landroidx/legacy/content/WakefulBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WakefulBroadcastReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "androidx.contentpager.content.wakelockid"

.field private static mNextId:I

.field private static final sActiveWakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    .line 77
    const/4 v0, 0x1

    sput v0, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)Z
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .line 126
    const/4 v0, 0x0

    const-string v1, "androidx.contentpager.content.wakelockid"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 127
    .local v1, "id":I
    if-nez v1, :cond_0

    .line 128
    return v0

    .line 130
    :cond_0
    sget-object v0, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 131
    :try_start_0
    sget-object v2, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager$WakeLock;

    .line 132
    .local v2, "wl":Landroid/os/PowerManager$WakeLock;
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 134
    sget-object v4, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 135
    monitor-exit v0

    return v3

    .line 143
    :cond_1
    const-string v4, "WakefulBroadcastReceiv."

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No active wake lock id #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    monitor-exit v0

    return v3

    .line 145
    .end local v2    # "wl":Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 94
    sget-object v0, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 95
    :try_start_0
    sget v1, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    .line 96
    .local v1, "id":I
    sget v2, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    .line 97
    sget v2, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    if-gtz v2, :cond_0

    .line 98
    sput v3, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    .line 101
    :cond_0
    const-string v2, "androidx.contentpager.content.wakelockid"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    .line 103
    .local v2, "comp":Landroid/content/ComponentName;
    if-nez v2, :cond_1

    .line 104
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 107
    :cond_1
    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 108
    .local v4, "pm":Landroid/os/PowerManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "androidx.core:wake:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {v4, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 110
    .local v3, "wl":Landroid/os/PowerManager$WakeLock;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 111
    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 112
    sget-object v5, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    monitor-exit v0

    return-object v2

    .line 114
    .end local v1    # "id":I
    .end local v2    # "comp":Landroid/content/ComponentName;
    .end local v3    # "wl":Landroid/os/PowerManager$WakeLock;
    .end local v4    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
