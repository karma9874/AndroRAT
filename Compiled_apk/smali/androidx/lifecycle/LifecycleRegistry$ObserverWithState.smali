.class Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LifecycleRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObserverWithState"
.end annotation


# instance fields
.field mLifecycleObserver:Landroidx/lifecycle/GenericLifecycleObserver;

.field mState:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1
    .param p1, "observer"    # Landroidx/lifecycle/LifecycleObserver;
    .param p2, "initialState"    # Landroidx/lifecycle/Lifecycle$State;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    invoke-static {p1}, Landroidx/lifecycle/Lifecycling;->getCallback(Ljava/lang/Object;)Landroidx/lifecycle/GenericLifecycleObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mLifecycleObserver:Landroidx/lifecycle/GenericLifecycleObserver;

    .line 349
    iput-object p2, p0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 350
    return-void
.end method


# virtual methods
.method dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "owner"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 353
    invoke-static {p2}, Landroidx/lifecycle/LifecycleRegistry;->getStateAfter(Landroidx/lifecycle/Lifecycle$Event;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 354
    .local v0, "newState":Landroidx/lifecycle/Lifecycle$State;
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v1, v0}, Landroidx/lifecycle/LifecycleRegistry;->min(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    iput-object v1, p0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 355
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mLifecycleObserver:Landroidx/lifecycle/GenericLifecycleObserver;

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/GenericLifecycleObserver;->onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 356
    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 357
    return-void
.end method
