.class public Landroidx/fragment/app/FragmentManagerNonConfig;
.super Ljava/lang/Object;
.source "FragmentManagerNonConfig.java"


# instance fields
.field private final mChildNonConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/FragmentManagerNonConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewModelStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/lifecycle/ViewModelStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/FragmentManagerNonConfig;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/lifecycle/ViewModelStore;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    .local p2, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/FragmentManagerNonConfig;>;"
    .local p3, "viewModelStores":Ljava/util/List;, "Ljava/util/List<Landroidx/lifecycle/ViewModelStore;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;

    .line 44
    iput-object p2, p0, Landroidx/fragment/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    .line 45
    iput-object p3, p0, Landroidx/fragment/app/FragmentManagerNonConfig;->mViewModelStores:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method getChildNonConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/FragmentManagerNonConfig;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    return-object v0
.end method

.method getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;

    return-object v0
.end method

.method getViewModelStores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/lifecycle/ViewModelStore;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerNonConfig;->mViewModelStores:Ljava/util/List;

    return-object v0
.end method
