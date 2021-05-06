.class final Landroidx/core/view/MenuItemCompat$1;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroidx/core/view/MenuItemCompat$OnActionExpandListener;


# direct methods
.method constructor <init>(Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)V
    .locals 0

    .line 302
    iput-object p1, p0, Landroidx/core/view/MenuItemCompat$1;->val$listener:Landroidx/core/view/MenuItemCompat$OnActionExpandListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 310
    iget-object v0, p0, Landroidx/core/view/MenuItemCompat$1;->val$listener:Landroidx/core/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {v0, p1}, Landroidx/core/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 305
    iget-object v0, p0, Landroidx/core/view/MenuItemCompat$1;->val$listener:Landroidx/core/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {v0, p1}, Landroidx/core/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
