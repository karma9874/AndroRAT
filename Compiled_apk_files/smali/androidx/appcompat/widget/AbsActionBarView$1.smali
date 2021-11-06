.class Landroidx/appcompat/widget/AbsActionBarView$1;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AbsActionBarView;->postShowOverflowMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/AbsActionBarView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AbsActionBarView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/appcompat/widget/AbsActionBarView;

    .line 201
    iput-object p1, p0, Landroidx/appcompat/widget/AbsActionBarView$1;->this$0:Landroidx/appcompat/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 204
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView$1;->this$0:Landroidx/appcompat/widget/AbsActionBarView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AbsActionBarView;->showOverflowMenu()Z

    .line 205
    return-void
.end method
