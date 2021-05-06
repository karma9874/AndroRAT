.class public Landroidx/appcompat/widget/ShareActionProvider;
.super Landroidx/core/view/ActionProvider;
.source "ShareActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;,
        Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;,
        Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_ACTIVITY_COUNT:I = 0x4

.field public static final DEFAULT_SHARE_HISTORY_FILE_NAME:Ljava/lang/String; = "share_history.xml"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mMaxShownActivityCount:I

.field private mOnChooseActivityListener:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

.field private final mOnMenuItemClickListener:Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

.field mOnShareTargetSelectedListener:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

.field mShareHistoryFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 197
    invoke-direct {p0, p1}, Landroidx/core/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 164
    const/4 v0, 0x4

    iput v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mMaxShownActivityCount:I

    .line 169
    new-instance v0, Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Landroidx/appcompat/widget/ShareActionProvider;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 185
    const-string v0, "share_history.xml"

    iput-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 198
    iput-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    .line 199
    return-void
.end method

.method private setActivityChooserPolicyIfNeeded()V
    .locals 2

    .line 383
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-nez v0, :cond_0

    .line 384
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mOnChooseActivityListener:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    if-nez v0, :cond_1

    .line 387
    new-instance v0, Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;-><init>(Landroidx/appcompat/widget/ShareActionProvider;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mOnChooseActivityListener:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 389
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v0

    .line 390
    .local v0, "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mOnChooseActivityListener:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActivityChooserModel;->setOnChooseActivityListener(Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;)V

    .line 391
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 5

    .line 222
    new-instance v0, Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActivityChooserView;-><init>(Landroid/content/Context;)V

    .line 223
    .local v0, "activityChooserView":Landroidx/appcompat/widget/ActivityChooserView;
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/appcompat/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v1

    .line 225
    .local v1, "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActivityChooserView;->setActivityChooserModel(Landroidx/appcompat/widget/ActivityChooserModel;)V

    .line 229
    .end local v1    # "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 230
    .local v1, "outTypedValue":Landroid/util/TypedValue;
    iget-object v2, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroidx/appcompat/R$attr;->actionModeShareDrawable:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 231
    iget-object v2, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 232
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActivityChooserView;->setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActivityChooserView;->setProvider(Landroidx/core/view/ActionProvider;)V

    .line 236
    sget v3, Landroidx/appcompat/R$string;->abc_shareactionprovider_share_with_application:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActivityChooserView;->setDefaultActionButtonContentDescription(I)V

    .line 238
    sget v3, Landroidx/appcompat/R$string;->abc_shareactionprovider_share_with:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActivityChooserView;->setExpandActivityOverflowButtonContentDescription(I)V

    .line 241
    return-object v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 10
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .line 258
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 260
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v0

    .line 261
    .local v0, "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 263
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivityCount()I

    move-result v2

    .line 264
    .local v2, "expandedActivityCount":I
    iget v3, p0, Landroidx/appcompat/widget/ShareActionProvider;->mMaxShownActivityCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 267
    .local v3, "collapsedActivityCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_0

    .line 268
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 269
    .local v6, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p1, v5, v4, v4, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 270
    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v7, p0, Landroidx/appcompat/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 271
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 267
    .end local v6    # "activity":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 274
    .end local v4    # "i":I
    :cond_0
    if-ge v3, v2, :cond_1

    .line 276
    iget-object v4, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    sget v6, Landroidx/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    .line 278
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-interface {p1, v5, v3, v3, v4}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v4

    .line 279
    .local v4, "expandedSubMenu":Landroid/view/SubMenu;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_1

    .line 280
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 281
    .local v7, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v7, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v4, v5, v6, v6, v8}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    .line 282
    invoke-virtual {v7, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v8

    iget-object v9, p0, Landroidx/appcompat/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 283
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 279
    .end local v7    # "activity":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 286
    .end local v4    # "expandedSubMenu":Landroid/view/SubMenu;
    .end local v6    # "i":I
    :cond_1
    return-void
.end method

.method public setOnShareTargetSelectedListener(Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 212
    iput-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 213
    invoke-direct {p0}, Landroidx/appcompat/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    .line 214
    return-void
.end method

.method public setShareHistoryFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareHistoryFile"    # Ljava/lang/String;

    .line 321
    iput-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 322
    invoke-direct {p0}, Landroidx/appcompat/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    .line 323
    return-void
.end method

.method public setShareIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "shareIntent"    # Landroid/content/Intent;

    .line 342
    if-eqz p1, :cond_1

    .line 343
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ShareActionProvider;->updateIntent(Landroid/content/Intent;)V

    .line 348
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v0

    .line 350
    .local v0, "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    .line 351
    return-void
.end method

.method updateIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 413
    const/high16 v0, 0x8080000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 417
    :cond_0
    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 419
    :goto_0
    return-void
.end method
