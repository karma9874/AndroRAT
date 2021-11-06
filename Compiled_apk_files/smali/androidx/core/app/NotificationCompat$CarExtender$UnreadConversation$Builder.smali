.class public Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mLatestTimestamp:J

.field private final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mParticipant:Ljava/lang/String;

.field private mReadPendingIntent:Landroid/app/PendingIntent;

.field private mRemoteInput:Landroidx/core/app/RemoteInput;

.field private mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 4936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mMessages:Ljava/util/List;

    .line 4937
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mParticipant:Ljava/lang/String;

    .line 4938
    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 4949
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4950
    return-object p0
.end method

.method public build()Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    .locals 10

    .line 5006
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 5007
    .local v0, "messages":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mParticipant:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v6, v2

    .line 5008
    .local v6, "participants":[Ljava/lang/String;
    new-instance v9, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    iget-object v3, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mRemoteInput:Landroidx/core/app/RemoteInput;

    iget-object v4, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mReplyPendingIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mReadPendingIntent:Landroid/app/PendingIntent;

    iget-wide v7, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mLatestTimestamp:J

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroidx/core/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    return-object v9
.end method

.method public setLatestTimestamp(J)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .locals 0
    .param p1, "timestamp"    # J

    .line 4996
    iput-wide p1, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mLatestTimestamp:J

    .line 4997
    return-object p0
.end method

.method public setReadPendingIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 4980
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mReadPendingIntent:Landroid/app/PendingIntent;

    .line 4981
    return-object p0
.end method

.method public setReplyAction(Landroid/app/PendingIntent;Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "remoteInput"    # Landroidx/core/app/RemoteInput;

    .line 4966
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mRemoteInput:Landroidx/core/app/RemoteInput;

    .line 4967
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mReplyPendingIntent:Landroid/app/PendingIntent;

    .line 4969
    return-object p0
.end method
