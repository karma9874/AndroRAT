.class final Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final WEIGHT_DECAY_COEFFICIENT:F = 0.95f


# instance fields
.field private final mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 922
    return-void
.end method


# virtual methods
.method public sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    .line 927
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .local p3, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;>;"
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 929
    .local v0, "componentNameToActivityMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 931
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 932
    .local v1, "activityCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 933
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 934
    .local v3, "activity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    const/4 v4, 0x0

    iput v4, v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 935
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    .local v4, "componentName":Landroid/content/ComponentName;
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    .end local v3    # "activity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v4    # "componentName":Landroid/content/ComponentName;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 941
    .end local v2    # "i":I
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 942
    .local v2, "lastShareIndex":I
    const/high16 v3, 0x3f800000    # 1.0f

    .line 943
    .local v3, "nextRecordWeight":F
    move v4, v2

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_2

    .line 944
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    .line 945
    .local v5, "historicalRecord":Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;
    iget-object v6, v5, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 946
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 947
    .local v7, "activity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v7, :cond_1

    .line 948
    iget v8, v7, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v9, v5, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    mul-float v9, v9, v3

    add-float/2addr v8, v9

    iput v8, v7, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 949
    const v8, 0x3f733333    # 0.95f

    mul-float v3, v3, v8

    .line 943
    .end local v5    # "historicalRecord":Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "activity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 953
    .end local v4    # "i":I
    :cond_2
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 960
    return-void
.end method
