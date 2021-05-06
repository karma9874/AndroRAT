.class Lcom/example/reverseshell2/controlPanel$1;
.super Ljava/lang/Object;
.source "controlPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverseshell2/controlPanel;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/reverseshell2/controlPanel;


# direct methods
.method constructor <init>(Lcom/example/reverseshell2/controlPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/reverseshell2/controlPanel;

    .line 27
    iput-object p1, p0, Lcom/example/reverseshell2/controlPanel$1;->this$0:Lcom/example/reverseshell2/controlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/example/reverseshell2/controlPanel$1;->this$0:Lcom/example/reverseshell2/controlPanel;

    invoke-virtual {v0}, Lcom/example/reverseshell2/controlPanel;->finish()V

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "package:com.example.reverseshell2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 33
    const/4 v1, 0x1

    const-string v2, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    iget-object v2, p0, Lcom/example/reverseshell2/controlPanel$1;->this$0:Lcom/example/reverseshell2/controlPanel;

    invoke-virtual {v2, v0, v1}, Lcom/example/reverseshell2/controlPanel;->startActivityForResult(Landroid/content/Intent;I)V

    .line 35
    return-void
.end method
