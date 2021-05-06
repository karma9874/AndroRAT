.class public Landroidx/fragment/app/FragmentActivity;
.super Landroidx/core/app/ComponentActivity;
.source "FragmentActivity.java"

# interfaces
.implements Landroidx/lifecycle/ViewModelStoreOwner;
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentActivity$HostCallbacks;,
        Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# static fields
.field static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field static final MSG_RESUME_PENDING:I = 0x2

.field static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragments:Landroidx/fragment/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field mNextCandidateRequestIndex:I

.field mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mStartedActivityFromFragment:Z

.field mStartedIntentSenderFromFragment:Z

.field mStopped:Z

.field private mViewModelStore:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroidx/core/app/ComponentActivity;-><init>()V

    .line 82
    new-instance v0, Landroidx/fragment/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$1;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-static {v0}, Landroidx/fragment/app/FragmentController;->createController(Landroidx/fragment/app/FragmentHostCallback;)Landroidx/fragment/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 957
    return-void
.end method

.method private allocateRequestIndex(Landroidx/fragment/app/Fragment;)I
    .locals 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 919
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    const v1, 0xfffe

    if-ge v0, v1, :cond_1

    .line 924
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    iget v2, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {v0, v2}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 925
    iget v0, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    goto :goto_0

    .line 929
    :cond_0
    iget v0, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 930
    .local v0, "requestIndex":I
    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 931
    iget v2, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v1

    iput v2, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 934
    return v0

    .line 920
    .end local v0    # "requestIndex":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many pending Fragment activity results."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method static checkForValidRequestCode(I)V
    .locals 2
    .param p0, "requestCode"    # I

    .line 805
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 808
    return-void

    .line 806
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private markFragmentsCreated()V
    .locals 2

    .line 1051
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v0, v1}, Landroidx/fragment/app/FragmentActivity;->markState(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    .line 1052
    .local v0, "reiterate":Z
    if-nez v0, :cond_0

    .line 1053
    return-void

    .line 1052
    :cond_0
    goto :goto_0
.end method

.method private static markState(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle$State;)Z
    .locals 6
    .param p0, "manager"    # Landroidx/fragment/app/FragmentManager;
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 1056
    const/4 v0, 0x0

    .line 1057
    .local v0, "hadNotMarked":Z
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 1058
    .local v1, "fragments":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/fragment/app/Fragment;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 1059
    .local v3, "fragment":Landroidx/fragment/app/Fragment;
    if-nez v3, :cond_0

    .line 1060
    goto :goto_0

    .line 1062
    :cond_0
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1063
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v4, p1}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 1064
    const/4 v0, 0x1

    .line 1067
    :cond_1
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->peekChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    .line 1068
    .local v4, "childFragmentManager":Landroidx/fragment/app/FragmentManager;
    if-eqz v4, :cond_2

    .line 1069
    invoke-static {v4, p1}, Landroidx/fragment/app/FragmentActivity;->markState(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1071
    .end local v3    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v4    # "childFragmentManager":Landroidx/fragment/app/FragmentManager;
    :cond_2
    goto :goto_0

    .line 1072
    :cond_3
    return v0
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 405
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 693
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/app/ComponentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 694
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 695
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 696
    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 699
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 700
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 701
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 703
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 704
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroidx/loader/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 706
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .line 662
    nop

    .line 663
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;

    .line 664
    .local v0, "nc":Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 324
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 729
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Landroidx/loader/app/LoaderManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 738
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 2

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v0, :cond_1

    .line 304
    nop

    .line 305
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;

    .line 306
    .local v0, "nc":Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_0

    .line 308
    iget-object v1, v0, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    iput-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 310
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v1, :cond_1

    .line 311
    new-instance v1, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v1}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 314
    .end local v0    # "nc":Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-object v0

    .line 300
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 146
    shr-int/lit8 v0, p1, 0x10

    .line 147
    .local v0, "requestIndex":I
    if-eqz v0, :cond_2

    .line 148
    add-int/lit8 v0, v0, -0x1

    .line 150
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, "who":Ljava/lang/String;
    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 152
    const-string v2, "FragmentActivity"

    if-nez v1, :cond_0

    .line 153
    const-string v3, "Activity result delivered for unknown Fragment."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 156
    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 157
    .local v3, "targetFragment":Landroidx/fragment/app/Fragment;
    if-nez v3, :cond_1

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity result no fragment exists for who: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_1
    const v2, 0xffff

    and-int/2addr v2, p1

    invoke-virtual {v3, v2, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    :goto_0
    return-void

    .line 166
    .end local v1    # "who":Ljava/lang/String;
    .end local v3    # "targetFragment":Landroidx/fragment/app/Fragment;
    :cond_2
    invoke-static {}, Landroidx/core/app/ActivityCompat;->getPermissionCompatDelegate()Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    move-result-object v1

    .line 167
    .local v1, "delegate":Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;
    if-eqz v1, :cond_3

    invoke-interface {v1, p0, p1, p2, p3}, Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    return-void

    .line 172
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 173
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 722
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 181
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 182
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v1

    .line 183
    .local v1, "isStateSaved":Z
    if-eqz v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-nez v2, :cond_2

    .line 191
    :cond_1
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onBackPressed()V

    .line 193
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 284
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 285
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 286
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 287
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 333
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentController;->attachHost(Landroidx/fragment/app/Fragment;)V

    .line 335
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 337
    nop

    .line 338
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;

    .line 339
    .local v0, "nc":Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v2, :cond_0

    .line 340
    iget-object v2, v0, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    iput-object v2, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 342
    :cond_0
    if-eqz p1, :cond_4

    .line 343
    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 344
    .local v2, "p":Landroid/os/Parcelable;
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->fragments:Landroidx/fragment/app/FragmentManagerNonConfig;

    :cond_1
    invoke-virtual {v3, v2, v1}, Landroidx/fragment/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 347
    const-string v1, "android:support:next_request_index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 348
    nop

    .line 349
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 350
    const-string v1, "android:support:request_indicies"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 351
    .local v1, "requestCodes":[I
    const-string v3, "android:support:request_fragment_who"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "fragmentWhos":[Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    array-length v4, v1

    array-length v5, v3

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 356
    :cond_2
    new-instance v4, Landroidx/collection/SparseArrayCompat;

    array-length v5, v1

    invoke-direct {v4, v5}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    iput-object v4, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    .line 357
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 358
    iget-object v5, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    aget v6, v1, v4

    aget-object v7, v3, v4

    invoke-virtual {v5, v6, v7}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 357
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 354
    .end local v4    # "i":I
    :cond_3
    :goto_1
    const-string v4, "FragmentActivity"

    const-string v5, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v1    # "requestCodes":[I
    .end local v2    # "p":Landroid/os/Parcelable;
    .end local v3    # "fragmentWhos":[Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    if-nez v1, :cond_5

    .line 365
    new-instance v1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    .line 366
    const/4 v1, 0x0

    iput v1, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 369
    :cond_5
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->dispatchCreate()V

    .line 370
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 377
    if-nez p1, :cond_0

    .line 378
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 379
    .local v0, "show":Z
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroidx/fragment/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 380
    return v0

    .line 382
    .end local v0    # "show":Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 387
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 388
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 389
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/app/ComponentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 391
    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 397
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 398
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/ComponentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 400
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 413
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onDestroy()V

    .line 415
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelStore;->clear()V

    .line 419
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchDestroy()V

    .line 420
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 427
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onLowMemory()V

    .line 428
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchLowMemory()V

    .line 429
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 436
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const/4 v0, 0x1

    return v0

    .line 440
    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    .line 448
    const/4 v0, 0x0

    return v0

    .line 445
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 442
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    .line 261
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentController;->dispatchMultiWindowModeChanged(Z)V

    .line 262
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 491
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 492
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 493
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 457
    if-eqz p1, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 462
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 463
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 470
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onPause()V

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    .line 472
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 476
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchPause()V

    .line 477
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z

    .line 276
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentController;->dispatchPictureInPictureModeChanged(Z)V

    .line 277
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .line 525
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onPostResume()V

    .line 526
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 528
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->execPendingActions()Z

    .line 529
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 559
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroidx/core/app/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 546
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 547
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 548
    .local v0, "goforit":Z
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1, p3}, Landroidx/fragment/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 549
    return v0

    .line 551
    .end local v0    # "goforit":Z
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 845
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 846
    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 847
    .local v0, "index":I
    if-eqz v0, :cond_2

    .line 848
    add-int/lit8 v0, v0, -0x1

    .line 850
    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 851
    .local v2, "who":Ljava/lang/String;
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, v0}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 852
    const-string v3, "FragmentActivity"

    if-nez v2, :cond_0

    .line 853
    const-string v1, "Activity result delivered for unknown Fragment."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void

    .line 856
    :cond_0
    iget-object v4, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v4, v2}, Landroidx/fragment/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 857
    .local v4, "frag":Landroidx/fragment/app/Fragment;
    if-nez v4, :cond_1

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity result no fragment exists for who: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 860
    :cond_1
    and-int/2addr v1, p1

    invoke-virtual {v4, v1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 863
    .end local v2    # "who":Ljava/lang/String;
    .end local v4    # "frag":Landroidx/fragment/app/Fragment;
    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 514
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onResume()V

    .line 515
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    .line 517
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->execPendingActions()Z

    .line 518
    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    .line 538
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchResume()V

    .line 539
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 653
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 4

    .line 569
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 571
    .local v0, "custom":Ljava/lang/Object;
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->retainNestedNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v1

    .line 573
    .local v1, "fragments":Landroidx/fragment/app/FragmentManagerNonConfig;
    if-nez v1, :cond_0

    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 574
    const/4 v2, 0x0

    return-object v2

    .line 577
    :cond_0
    new-instance v2, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;

    invoke-direct {v2}, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    .line 578
    .local v2, "nci":Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;
    iput-object v0, v2, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    .line 579
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    iput-object v3, v2, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 580
    iput-object v1, v2, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->fragments:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 581
    return-object v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 589
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 590
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;->markFragmentsCreated()V

    .line 591
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 592
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 593
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 595
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 596
    iget v1, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    const-string v2, "android:support:next_request_index"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 598
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 599
    .local v1, "requestCodes":[I
    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 600
    .local v2, "fragmentWhos":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 601
    iget-object v4, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4, v3}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 602
    iget-object v4, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4, v3}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 600
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 604
    .end local v3    # "i":I
    :cond_1
    const-string v3, "android:support:request_indicies"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 605
    const-string v3, "android:support:request_fragment_who"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 607
    .end local v1    # "requestCodes":[I
    .end local v2    # "fragmentWhos":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 614
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onStart()V

    .line 616
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 618
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    if-nez v0, :cond_0

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    .line 620
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchActivityCreated()V

    .line 623
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 624
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->execPendingActions()Z

    .line 628
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchStart()V

    .line 629
    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 500
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 501
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 636
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onStop()V

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 639
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;->markFragmentsCreated()V

    .line 641
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchStop()V

    .line 642
    return-void
.end method

.method requestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 942
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 943
    invoke-static {p0, p2, p3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 944
    return-void

    .line 946
    :cond_0
    invoke-static {p3}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 948
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 949
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentActivity;->allocateRequestIndex(Landroidx/fragment/app/Fragment;)I

    move-result v1

    .line 950
    .local v1, "requestIndex":I
    add-int/lit8 v2, v1, 0x1

    shl-int/lit8 v2, v2, 0x10

    const v3, 0xffff

    and-int/2addr v3, p3

    add-int/2addr v2, v3

    invoke-static {p0, p2, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    .end local v1    # "requestIndex":I
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 954
    nop

    .line 955
    return-void

    .line 953
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    throw v1
.end method

.method public setEnterSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroidx/core/app/SharedElementCallback;

    .line 217
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V

    .line 218
    return-void
.end method

.method public setExitSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .locals 0
    .param p1, "listener"    # Landroidx/core/app/SharedElementCallback;

    .line 230
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->setExitSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V

    .line 231
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 749
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    .line 750
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 751
    invoke-static {p2}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 754
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 755
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 762
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    .line 763
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 764
    invoke-static {p2}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 767
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 768
    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .line 870
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 871
    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 878
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 880
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 881
    :try_start_0
    invoke-static {p0, p2, v0, p4}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 882
    return-void

    .line 884
    :cond_0
    :try_start_1
    invoke-static {p3}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 885
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentActivity;->allocateRequestIndex(Landroidx/fragment/app/Fragment;)I

    move-result v0

    .line 886
    .local v0, "requestIndex":I
    add-int/lit8 v2, v0, 0x1

    shl-int/lit8 v2, v2, 0x10

    const v3, 0xffff

    and-int/2addr v3, p3

    add-int/2addr v2, v3

    invoke-static {p0, p2, v2, p4}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 889
    .end local v0    # "requestIndex":I
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 890
    nop

    .line 891
    return-void

    .line 889
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    throw v0
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 776
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    .line 777
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 778
    invoke-static {p2}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 781
    :cond_0
    invoke-super/range {p0 .. p6}, Landroidx/core/app/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 783
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 791
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    .line 792
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 793
    invoke-static {p2}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 796
    :cond_0
    invoke-super/range {p0 .. p7}, Landroidx/core/app/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 798
    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 12
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 899
    move-object v9, p0

    move v10, p3

    const/4 v0, 0x1

    iput-boolean v0, v9, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 901
    const/4 v0, -0x1

    const/4 v11, 0x0

    if-ne v10, v0, :cond_0

    .line 902
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    :try_start_0
    invoke-static/range {v1 .. v8}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    iput-boolean v11, v9, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 904
    return-void

    .line 906
    :cond_0
    :try_start_1
    invoke-static {p3}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 907
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentActivity;->allocateRequestIndex(Landroidx/fragment/app/Fragment;)I

    move-result v0

    .line 908
    .local v0, "requestIndex":I
    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, v10

    add-int v3, v1, v2

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 912
    .end local v0    # "requestIndex":I
    iput-boolean v11, v9, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 913
    nop

    .line 914
    return-void

    .line 912
    :catchall_0
    move-exception v0

    iput-boolean v11, v9, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    throw v0
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    .line 205
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    .line 206
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 678
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 679
    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    .line 238
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 239
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    .line 246
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 247
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .line 819
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 821
    invoke-static {p1}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 823
    :cond_0
    return-void
.end method
