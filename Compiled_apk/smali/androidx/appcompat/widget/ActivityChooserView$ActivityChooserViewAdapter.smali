.class Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityChooserViewAdapter"
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_ACTIVITY:I = 0x0

.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x3

.field private static final ITEM_VIEW_TYPE_FOOTER:I = 0x1

.field public static final MAX_ACTIVITY_COUNT_DEFAULT:I = 0x4

.field public static final MAX_ACTIVITY_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

.field private mHighlightDefaultActivity:Z

.field private mMaxActivityCount:I

.field private mShowDefaultActivity:Z

.field private mShowFooterView:Z

.field final synthetic this$0:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0

    .line 685
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 677
    const/4 p1, 0x4

    iput p1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 686
    return-void
.end method


# virtual methods
.method public getActivityCount()I
    .locals 1

    .line 831
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 3

    .line 716
    const/4 v0, 0x0

    .line 717
    .local v0, "count":I
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivityCount()I

    move-result v1

    .line 718
    .local v1, "activityCount":I
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 719
    add-int/lit8 v1, v1, -0x1

    .line 721
    :cond_0
    iget v2, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 722
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v2, :cond_1

    .line 723
    add-int/lit8 v0, v0, 0x1

    .line 725
    :cond_1
    return v0
.end method

.method public getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;
    .locals 1

    .line 839
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    return-object v0
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 820
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getHistorySize()I
    .locals 1

    .line 835
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->getHistorySize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .line 730
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v0

    .line 731
    .local v0, "itemViewType":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 733
    const/4 v1, 0x0

    return-object v1

    .line 740
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 735
    :cond_1
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 736
    add-int/lit8 p1, p1, 0x1

    .line 738
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 746
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 702
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 703
    return v1

    .line 705
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getShowDefaultActivity()Z
    .locals 1

    .line 853
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 751
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v0

    .line 752
    .local v0, "itemViewType":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_2

    .line 754
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 755
    :cond_0
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v3, v4, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 757
    invoke-virtual {p2, v2}, Landroid/view/View;->setId(I)V

    .line 758
    sget v1, Landroidx/appcompat/R$id;->title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 759
    .local v1, "titleView":Landroid/widget/TextView;
    iget-object v2, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroidx/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_1
    return-object p2

    .line 784
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 764
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Landroidx/appcompat/R$id;->list_item:I

    if-eq v3, v4, :cond_5

    .line 765
    :cond_4
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v3, v4, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 768
    :cond_5
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 770
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    sget v4, Landroidx/appcompat/R$id;->icon:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 771
    .local v4, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 772
    .local v5, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 774
    sget v6, Landroidx/appcompat/R$id;->title:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 775
    .local v6, "titleView":Landroid/widget/TextView;
    invoke-virtual {v5, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget-boolean v7, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-eqz v7, :cond_6

    if-nez p1, :cond_6

    iget-boolean v7, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eqz v7, :cond_6

    .line 778
    invoke-virtual {p2, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 780
    :cond_6
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 782
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 711
    const/4 v0, 0x3

    return v0
.end method

.method public measureContentWidth()I
    .locals 8

    .line 791
    iget v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 792
    .local v0, "oldMaxActivityCount":I
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 794
    const/4 v1, 0x0

    .line 795
    .local v1, "contentWidth":I
    const/4 v2, 0x0

    .line 797
    .local v2, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 798
    .local v4, "widthMeasureSpec":I
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 799
    .local v3, "heightMeasureSpec":I
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v5

    .line 801
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_0

    .line 802
    const/4 v7, 0x0

    invoke-virtual {p0, v6, v2, v7}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 803
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    .line 804
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 801
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 807
    .end local v6    # "i":I
    :cond_0
    iput v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 809
    return v1
.end method

.method public setDataModel(Landroidx/appcompat/widget/ActivityChooserModel;)V
    .locals 2
    .param p1, "dataModel"    # Landroidx/appcompat/widget/ActivityChooserModel;

    .line 689
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v0

    .line 690
    .local v0, "oldDataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 693
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    .line 694
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 697
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 698
    return-void
.end method

.method public setMaxActivityCount(I)V
    .locals 1
    .param p1, "maxActivityCount"    # I

    .line 813
    iget v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    if-eq v0, p1, :cond_0

    .line 814
    iput p1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 815
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 817
    :cond_0
    return-void
.end method

.method public setShowDefaultActivity(ZZ)V
    .locals 1
    .param p1, "showDefaultActivity"    # Z
    .param p2, "highlightDefaultActivity"    # Z

    .line 844
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eq v0, p2, :cond_1

    .line 846
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    .line 847
    iput-boolean p2, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    .line 848
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 850
    :cond_1
    return-void
.end method

.method public setShowFooterView(Z)V
    .locals 1
    .param p1, "showFooterView"    # Z

    .line 824
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eq v0, p1, :cond_0

    .line 825
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    .line 826
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 828
    :cond_0
    return-void
.end method
