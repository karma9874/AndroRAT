.class public final Landroidx/appcompat/view/menu/MenuWrapperFactory;
.super Ljava/lang/Object;
.source "MenuWrapperFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static wrapSupportMenu(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)Landroid/view/Menu;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "supportMenu"    # Landroidx/core/internal/view/SupportMenu;

    .line 41
    new-instance v0, Landroidx/appcompat/view/menu/MenuWrapperICS;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)V

    return-object v0
.end method

.method public static wrapSupportMenuItem(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)Landroid/view/MenuItem;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "supportMenuItem"    # Landroidx/core/internal/view/SupportMenuItem;

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 46
    new-instance v0, Landroidx/appcompat/view/menu/MenuItemWrapperJB;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/MenuItemWrapperJB;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    return-object v0
.end method

.method public static wrapSupportSubMenu(Landroid/content/Context;Landroidx/core/internal/view/SupportSubMenu;)Landroid/view/SubMenu;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "supportSubMenu"    # Landroidx/core/internal/view/SupportSubMenu;

    .line 53
    new-instance v0, Landroidx/appcompat/view/menu/SubMenuWrapperICS;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportSubMenu;)V

    return-object v0
.end method
