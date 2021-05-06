.class public Landroidx/lifecycle/Transformations;
.super Ljava/lang/Object;
.source "Transformations.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TX;>;",
            "Landroidx/arch/core/util/Function<",
            "TX;TY;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 71
    .local p0, "source":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TX;>;"
    .local p1, "mapFunction":Landroidx/arch/core/util/Function;, "Landroidx/arch/core/util/Function<TX;TY;>;"
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 72
    .local v0, "result":Landroidx/lifecycle/MediatorLiveData;, "Landroidx/lifecycle/MediatorLiveData<TY;>;"
    new-instance v1, Landroidx/lifecycle/Transformations$1;

    invoke-direct {v1, v0, p1}, Landroidx/lifecycle/Transformations$1;-><init>(Landroidx/lifecycle/MediatorLiveData;Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 78
    return-object v0
.end method

.method public static switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TX;>;",
            "Landroidx/arch/core/util/Function<",
            "TX;",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 135
    .local p0, "source":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TX;>;"
    .local p1, "switchMapFunction":Landroidx/arch/core/util/Function;, "Landroidx/arch/core/util/Function<TX;Landroidx/lifecycle/LiveData<TY;>;>;"
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 136
    .local v0, "result":Landroidx/lifecycle/MediatorLiveData;, "Landroidx/lifecycle/MediatorLiveData<TY;>;"
    new-instance v1, Landroidx/lifecycle/Transformations$2;

    invoke-direct {v1, p1, v0}, Landroidx/lifecycle/Transformations$2;-><init>(Landroidx/arch/core/util/Function;Landroidx/lifecycle/MediatorLiveData;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 159
    return-object v0
.end method
