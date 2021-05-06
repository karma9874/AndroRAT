.class Landroidx/appcompat/view/menu/MenuItemWrapperJB;
.super Landroidx/appcompat/view/menu/MenuItemWrapperICS;
.source "MenuItemWrapperJB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Landroidx/core/internal/view/SupportMenuItem;

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    .line 40
    return-void
.end method


# virtual methods
.method createActionProviderWrapper(Landroid/view/ActionProvider;)Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    .locals 2
    .param p1, "provider"    # Landroid/view/ActionProvider;

    .line 44
    new-instance v0, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;

    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuItemWrapperJB;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;-><init>(Landroidx/appcompat/view/menu/MenuItemWrapperJB;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
