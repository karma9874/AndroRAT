.class Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
.super Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
.source "MenuItemWrapperJB.java"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/MenuItemWrapperJB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionProviderWrapperJB"
.end annotation


# instance fields
.field mListener:Landroidx/core/view/ActionProvider$VisibilityListener;

.field final synthetic this$0:Landroidx/appcompat/view/menu/MenuItemWrapperJB;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/MenuItemWrapperJB;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/appcompat/view/menu/MenuItemWrapperJB;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "inner"    # Landroid/view/ActionProvider;

    .line 51
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->this$0:Landroidx/appcompat/view/menu/MenuItemWrapperJB;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;-><init>(Landroidx/appcompat/view/menu/MenuItemWrapperICS;Landroid/content/Context;Landroid/view/ActionProvider;)V

    .line 53
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 83
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p1}, Landroidx/core/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p1, "forItem"    # Landroid/view/MenuItem;

    .line 57
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public overridesItemVisibility()Z
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public refreshVisibility()V
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->refreshVisibility()V

    .line 73
    return-void
.end method

.method public setVisibilityListener(Landroidx/core/view/ActionProvider$VisibilityListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/core/view/ActionProvider$VisibilityListener;

    .line 77
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    .line 78
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;->mInner:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    .line 79
    return-void
.end method
