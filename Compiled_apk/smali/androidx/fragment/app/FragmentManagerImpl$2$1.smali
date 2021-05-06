.class Landroidx/fragment/app/FragmentManagerImpl$2$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentManagerImpl$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/fragment/app/FragmentManagerImpl$2;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManagerImpl$2;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/fragment/app/FragmentManagerImpl$2;

    .line 1647
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$2$1;->this$1:Landroidx/fragment/app/FragmentManagerImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1650
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$2$1;->this$1:Landroidx/fragment/app/FragmentManagerImpl$2;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl$2;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$2$1;->this$1:Landroidx/fragment/app/FragmentManagerImpl$2;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl$2;->val$fragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1652
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$2$1;->this$1:Landroidx/fragment/app/FragmentManagerImpl$2;

    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerImpl$2;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$2$1;->this$1:Landroidx/fragment/app/FragmentManagerImpl$2;

    iget-object v2, v0, Landroidx/fragment/app/FragmentManagerImpl$2;->val$fragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$2$1;->this$1:Landroidx/fragment/app/FragmentManagerImpl$2;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl$2;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1655
    :cond_0
    return-void
.end method
