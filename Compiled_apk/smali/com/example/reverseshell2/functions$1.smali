.class Lcom/example/reverseshell2/functions$1;
.super Ljava/lang/Object;
.source "functions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverseshell2/functions;->readFromClipboard()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/reverseshell2/functions;

.field final synthetic val$clipboard:[Landroid/content/ClipboardManager;


# direct methods
.method constructor <init>(Lcom/example/reverseshell2/functions;[Landroid/content/ClipboardManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/reverseshell2/functions;

    .line 58
    iput-object p1, p0, Lcom/example/reverseshell2/functions$1;->this$0:Lcom/example/reverseshell2/functions;

    iput-object p2, p0, Lcom/example/reverseshell2/functions$1;->val$clipboard:[Landroid/content/ClipboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/example/reverseshell2/functions$1;->val$clipboard:[Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/example/reverseshell2/functions$1;->this$0:Lcom/example/reverseshell2/functions;

    iget-object v1, v1, Lcom/example/reverseshell2/functions;->activity:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 62
    return-void
.end method
