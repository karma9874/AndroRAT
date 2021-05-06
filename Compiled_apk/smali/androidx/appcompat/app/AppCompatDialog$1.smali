.class Landroidx/appcompat/app/AppCompatDialog$1;
.super Ljava/lang/Object;
.source "AppCompatDialog.java"

# interfaces
.implements Landroidx/core/view/KeyEventDispatcher$Component;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDialog;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDialog;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/appcompat/app/AppCompatDialog;

    .line 45
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDialog$1;->this$0:Landroidx/appcompat/app/AppCompatDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 48
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDialog$1;->this$0:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDialog;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
