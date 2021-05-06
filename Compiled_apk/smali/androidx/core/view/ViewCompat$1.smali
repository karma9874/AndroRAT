.class final Landroidx/core/view/ViewCompat$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroidx/core/view/OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Landroidx/core/view/OnApplyWindowInsetsListener;)V
    .locals 0

    .line 2209
    iput-object p1, p0, Landroidx/core/view/ViewCompat$1;->val$listener:Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 2212
    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 2213
    .local v0, "compatInsets":Landroidx/core/view/WindowInsetsCompat;
    iget-object v1, p0, Landroidx/core/view/ViewCompat$1;->val$listener:Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-interface {v1, p1, v0}, Landroidx/core/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 2214
    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->unwrap(Landroidx/core/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    return-object v1
.end method
