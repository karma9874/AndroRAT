.class Landroidx/customview/widget/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/customview/widget/ViewDragHelper;


# direct methods
.method constructor <init>(Landroidx/customview/widget/ViewDragHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/customview/widget/ViewDragHelper;

    .line 340
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper$2;->this$0:Landroidx/customview/widget/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 343
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper$2;->this$0:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 344
    return-void
.end method
