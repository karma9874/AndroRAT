.class public abstract Landroidx/fragment/app/FragmentTransaction;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# static fields
.field public static final TRANSIT_ENTER_MASK:I = 0x1000

.field public static final TRANSIT_EXIT_MASK:I = 0x2000

.field public static final TRANSIT_FRAGMENT_CLOSE:I = 0x2002

.field public static final TRANSIT_FRAGMENT_FADE:I = 0x1003

.field public static final TRANSIT_FRAGMENT_OPEN:I = 0x1001

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_UNSET:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method


# virtual methods
.method public abstract add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract commit()I
.end method

.method public abstract commitAllowingStateLoss()I
.end method

.method public abstract commitNow()V
.end method

.method public abstract commitNowAllowingStateLoss()V
.end method

.method public abstract detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract isAddToBackStackAllowed()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract setAllowOptimization(Z)Landroidx/fragment/app/FragmentTransaction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setBreadCrumbShortTitle(I)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbTitle(I)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract setTransition(I)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract setTransitionStyle(I)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
.end method
