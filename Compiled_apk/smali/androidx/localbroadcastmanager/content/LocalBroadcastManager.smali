.class public final Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;,
        Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 114
    iput-object p1, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 115
    new-instance v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;-><init>(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 128
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 105
    sget-object v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 109
    :cond_0
    sget-object v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    monitor-exit v0

    return-object v1

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method executePendingBroadcasts()V
    .locals 9

    const/4 v0, 0x0

    .line 298
    :goto_0
    iget-object v1, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v1

    .line 299
    :try_start_0
    iget-object v2, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 300
    .local v2, "N":I
    if-gtz v2, :cond_0

    .line 301
    monitor-exit v1

    return-void

    .line 303
    :cond_0
    new-array v0, v2, [Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .local v0, "brs":[Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    :try_start_1
    iget-object v3, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 305
    iget-object v3, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 306
    .end local v2    # "N":I
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 307
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 308
    aget-object v2, v0, v1

    .line 309
    .local v2, "br":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    iget-object v3, v2, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 310
    .local v3, "nbr":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v3, :cond_2

    .line 311
    iget-object v5, v2, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    .line 312
    .local v5, "rec":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    iget-boolean v6, v5, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    if-nez v6, :cond_1

    .line 313
    iget-object v6, v5, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v8, v2, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 310
    .end local v5    # "rec":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 307
    .end local v2    # "br":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    .end local v3    # "nbr":I
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 317
    .end local v0    # "brs":[Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    .end local v1    # "i":I
    :cond_3
    goto :goto_0

    .line 306
    :catchall_0
    move-exception v2

    .restart local v0    # "brs":[Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_3
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 8
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 140
    iget-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 141
    :try_start_0
    new-instance v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    invoke-direct {v1, p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 142
    .local v1, "entry":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    iget-object v2, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 143
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 144
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 145
    iget-object v4, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 149
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "action":Ljava/lang/String;
    iget-object v6, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 151
    .local v6, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v6, :cond_1

    .line 152
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v7

    .line 153
    iget-object v7, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    nop

    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "entry":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    .end local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v4    # "i":I
    :cond_2
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;

    .line 213
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v3

    .line 214
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "action":Ljava/lang/String;
    iget-object v0, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 216
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 215
    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 218
    .local v8, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 219
    .local v11, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    .line 221
    .local v9, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    const/4 v12, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v14, v4

    .line 223
    .local v14, "debug":Z
    if-eqz v14, :cond_1

    const-string v4, "LocalBroadcastManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resolving type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " scheme "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " of intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    iget-object v4, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v15, v4

    .line 228
    .local v15, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v15, :cond_11

    .line 229
    if-eqz v14, :cond_2

    const-string v4, "LocalBroadcastManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_2
    const/4 v4, 0x0

    .line 232
    .local v4, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    move v6, v12

    move-object v7, v4

    move v10, v6

    .end local v4    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v7, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v10, "i":I
    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_e

    .line 233
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    move-object v6, v4

    .line 234
    .local v6, "receiver":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    if-eqz v14, :cond_3

    const-string v4, "LocalBroadcastManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Matching against filter "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_3
    iget-boolean v4, v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-eqz v4, :cond_5

    .line 237
    if-eqz v14, :cond_4

    .line 238
    const-string v4, "LocalBroadcastManager"

    const-string v12, "  Filter\'s target already added"

    invoke-static {v4, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v0

    move-object v0, v7

    move/from16 v17, v10

    goto/16 :goto_3

    .line 237
    :cond_4
    move-object/from16 v16, v0

    move-object v0, v7

    move/from16 v17, v10

    goto/16 :goto_3

    .line 243
    :cond_5
    iget-object v4, v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    const-string v12, "LocalBroadcastManager"

    move-object v13, v6

    .end local v6    # "receiver":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    .local v13, "receiver":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    move-object v6, v0

    move-object/from16 v16, v0

    move-object v0, v7

    .end local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v16, "type":Ljava/lang/String;
    move-object v7, v11

    move/from16 v17, v10

    .end local v10    # "i":I
    .local v17, "i":I
    move-object v10, v12

    invoke-virtual/range {v4 .. v10}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v4

    .line 245
    .local v4, "match":I
    if-ltz v4, :cond_8

    .line 246
    if-eqz v14, :cond_6

    const-string v6, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Filter matched!  match=0x"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 246
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_6
    if-nez v0, :cond_7

    .line 249
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v6

    move-object v0, v7

    .line 251
    :cond_7
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    const/4 v6, 0x1

    iput-boolean v6, v13, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    move-object v7, v0

    goto :goto_4

    .line 254
    :cond_8
    if-eqz v14, :cond_d

    .line 256
    const/4 v6, -0x4

    if-eq v4, v6, :cond_c

    const/4 v6, -0x3

    if-eq v4, v6, :cond_b

    const/4 v6, -0x2

    if-eq v4, v6, :cond_a

    const/4 v6, -0x1

    if-eq v4, v6, :cond_9

    .line 261
    const-string v6, "unknown reason"

    .local v6, "reason":Ljava/lang/String;
    goto :goto_2

    .line 260
    .end local v6    # "reason":Ljava/lang/String;
    :cond_9
    const-string v6, "type"

    .restart local v6    # "reason":Ljava/lang/String;
    goto :goto_2

    .line 259
    .end local v6    # "reason":Ljava/lang/String;
    :cond_a
    const-string v6, "data"

    .restart local v6    # "reason":Ljava/lang/String;
    goto :goto_2

    .line 257
    .end local v6    # "reason":Ljava/lang/String;
    :cond_b
    const-string v6, "action"

    .restart local v6    # "reason":Ljava/lang/String;
    goto :goto_2

    .line 258
    .end local v6    # "reason":Ljava/lang/String;
    :cond_c
    const-string v6, "category"

    .line 263
    .restart local v6    # "reason":Ljava/lang/String;
    :goto_2
    const-string v7, "LocalBroadcastManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Filter did not match: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v4    # "match":I
    .end local v6    # "reason":Ljava/lang/String;
    .end local v13    # "receiver":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    .end local v16    # "type":Ljava/lang/String;
    .end local v17    # "i":I
    .local v0, "type":Ljava/lang/String;
    .restart local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "i":I
    :cond_d
    :goto_3
    move-object v7, v0

    .end local v0    # "type":Ljava/lang/String;
    .end local v10    # "i":I
    .restart local v16    # "type":Ljava/lang/String;
    .restart local v17    # "i":I
    :goto_4
    add-int/lit8 v10, v17, 0x1

    move-object/from16 v0, v16

    const/4 v12, 0x0

    .end local v17    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_1

    .end local v16    # "type":Ljava/lang/String;
    .restart local v0    # "type":Ljava/lang/String;
    :cond_e
    move-object/from16 v16, v0

    move-object v0, v7

    move/from16 v17, v10

    .line 268
    .end local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v10    # "i":I
    .local v0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v16    # "type":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 269
    const/4 v4, 0x0

    move v6, v4

    .local v6, "i":I
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v6, v4, :cond_f

    .line 270
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    const/4 v7, 0x0

    iput-boolean v7, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 269
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 272
    .end local v6    # "i":I
    :cond_f
    iget-object v4, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    new-instance v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;

    invoke-direct {v6, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v4, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_10

    .line 274
    iget-object v4, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    :cond_10
    monitor-exit v3

    const/4 v3, 0x1

    return v3

    .line 228
    .end local v16    # "type":Ljava/lang/String;
    .local v0, "type":Ljava/lang/String;
    :cond_11
    move-object/from16 v16, v0

    .line 279
    .end local v0    # "type":Ljava/lang/String;
    .end local v5    # "action":Ljava/lang/String;
    .end local v8    # "data":Landroid/net/Uri;
    .end local v9    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "scheme":Ljava/lang/String;
    .end local v14    # "debug":Z
    .end local v15    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_12
    monitor-exit v3

    .line 280
    const/4 v0, 0x0

    return v0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 292
    :cond_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 11
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 170
    iget-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 172
    .local v1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v1, :cond_0

    .line 173
    monitor-exit v0

    return-void

    .line 175
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 176
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    .line 177
    .local v4, "filter":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    iput-boolean v3, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    .line 178
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v6, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 179
    iget-object v6, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "action":Ljava/lang/String;
    iget-object v7, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 181
    .local v7, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v7, :cond_3

    .line 182
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .local v8, "k":I
    :goto_2
    if-ltz v8, :cond_2

    .line 183
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    .line 184
    .local v9, "rec":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    iget-object v10, v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v10, p1, :cond_1

    .line 185
    iput-boolean v3, v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    .line 186
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 182
    .end local v9    # "rec":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 189
    .end local v8    # "k":I
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_3

    .line 190
    iget-object v8, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 175
    .end local v4    # "filter":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    .end local v5    # "j":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 195
    .end local v1    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v2    # "i":I
    :cond_5
    monitor-exit v0

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
