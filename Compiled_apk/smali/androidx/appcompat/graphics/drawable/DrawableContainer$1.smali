.class Landroidx/appcompat/graphics/drawable/DrawableContainer$1;
.super Ljava/lang/Object;
.source "DrawableContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/graphics/drawable/DrawableContainer;->selectDrawable(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/graphics/drawable/DrawableContainer;


# direct methods
.method constructor <init>(Landroidx/appcompat/graphics/drawable/DrawableContainer;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/appcompat/graphics/drawable/DrawableContainer;

    .line 471
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$1;->this$0:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 474
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$1;->this$0:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->animate(Z)V

    .line 475
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$1;->this$0:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->invalidateSelf()V

    .line 476
    return-void
.end method
