.class Landroidx/appcompat/view/menu/SubMenuWrapperICS;
.super Landroidx/appcompat/view/menu/MenuWrapperICS;
.source "SubMenuWrapperICS.java"

# interfaces
.implements Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/internal/view/SupportSubMenu;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subMenu"    # Landroidx/core/internal/view/SupportSubMenu;

    .line 38
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)V

    .line 39
    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroidx/core/internal/view/SupportSubMenu;->clearHeader()V

    .line 79
    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .line 95
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroidx/core/internal/view/SupportSubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroidx/core/internal/view/SupportSubMenu;

    return-object v0
.end method

.method public bridge synthetic getWrappedObject()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .line 60
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportSubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    .line 61
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 66
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportSubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 67
    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "titleRes"    # I

    .line 48
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportSubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    .line 49
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportSubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 55
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 72
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportSubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    .line 73
    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .line 83
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportSubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 84
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 89
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroidx/core/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportSubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 90
    return-object p0
.end method
