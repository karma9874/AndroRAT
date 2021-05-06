.class public Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedCustomViewStyle"
.end annotation


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2935
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 2936
    return-void
.end method

.method private createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "innerView"    # Landroid/widget/RemoteViews;
    .param p2, "showActions"    # Z

    .line 3007
    sget v0, Landroidx/core/R$layout;->notification_template_custom_big:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 3009
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    sget v2, Landroidx/core/R$id;->actions:I

    invoke-virtual {v0, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 3010
    const/4 v2, 0x0

    .line 3011
    .local v2, "actionsVisible":Z
    if-eqz p2, :cond_0

    iget-object v3, p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 3012
    iget-object v3, p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3013
    .local v3, "numActions":I
    if-lez v3, :cond_0

    .line 3014
    const/4 v2, 0x1

    .line 3015
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 3016
    iget-object v5, p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/app/NotificationCompat$Action;

    invoke-direct {p0, v5}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->generateActionButton(Landroidx/core/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 3017
    .local v5, "button":Landroid/widget/RemoteViews;
    sget v6, Landroidx/core/R$id;->actions:I

    invoke-virtual {v0, v6, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 3015
    .end local v5    # "button":Landroid/widget/RemoteViews;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3021
    .end local v3    # "numActions":I
    .end local v4    # "i":I
    :cond_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 3022
    .local v1, "actionVisibility":I
    :goto_1
    sget v3, Landroidx/core/R$id;->actions:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3023
    sget v3, Landroidx/core/R$id;->action_divider:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3024
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 3025
    return-object v0
.end method

.method private generateActionButton(Landroidx/core/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .locals 6
    .param p1, "action"    # Landroidx/core/app/NotificationCompat$Action;

    .line 3029
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3030
    .local v0, "tombstone":Z
    :goto_0
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    sget v3, Landroidx/core/R$layout;->notification_action_tombstone:I

    goto :goto_1

    :cond_1
    sget v3, Landroidx/core/R$layout;->notification_action:I

    :goto_1
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3033
    .local v1, "button":Landroid/widget/RemoteViews;
    sget v2, Landroidx/core/R$id;->action_image:I

    .line 3034
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getIcon()I

    move-result v3

    iget-object v4, p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/core/R$color;->notification_action_color_filter:I

    .line 3035
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 3034
    invoke-virtual {p0, v3, v4}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3033
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 3036
    sget v2, Landroidx/core/R$id;->action_text:I

    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3037
    if-nez v0, :cond_2

    .line 3038
    sget v2, Landroidx/core/R$id;->action_container:I

    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3040
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_3

    .line 3041
    sget v2, Landroidx/core/R$id;->action_container:I

    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 3043
    :cond_3
    return-object v1
.end method


# virtual methods
.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 2
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 2944
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2945
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-direct {v1}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 2947
    :cond_0
    return-void
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 2972
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 2974
    return-object v1

    .line 2976
    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2977
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 2979
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    :goto_0
    nop

    .line 2980
    .local v2, "innerView":Landroid/widget/RemoteViews;
    if-nez v2, :cond_2

    .line 2982
    return-object v1

    .line 2984
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 2955
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 2957
    return-object v1

    .line 2959
    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2961
    return-object v1

    .line 2963
    :cond_1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 2993
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 2995
    return-object v1

    .line 2997
    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2998
    .local v0, "headsUp":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 2999
    .local v2, "innerView":Landroid/widget/RemoteViews;
    :goto_0
    if-nez v0, :cond_2

    .line 3001
    return-object v1

    .line 3003
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method
