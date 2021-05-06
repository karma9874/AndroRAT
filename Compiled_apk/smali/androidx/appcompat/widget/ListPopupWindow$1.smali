.class Landroidx/appcompat/widget/ListPopupWindow$1;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ListPopupWindow;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/appcompat/widget/ListPopupWindow;
    .param p2, "src"    # Landroid/view/View;

    .line 1120
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow$1;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .locals 1

    .line 1120
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow$1;->getPopup()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public getPopup()Landroidx/appcompat/widget/ListPopupWindow;
    .locals 1

    .line 1123
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow$1;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    return-object v0
.end method
