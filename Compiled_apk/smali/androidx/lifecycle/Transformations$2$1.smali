.class Landroidx/lifecycle/Transformations$2$1;
.super Ljava/lang/Object;
.source "Transformations.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/Transformations$2;->onChanged(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "TY;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/Transformations$2;


# direct methods
.method constructor <init>(Landroidx/lifecycle/Transformations$2;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/lifecycle/Transformations$2;

    .line 150
    iput-object p1, p0, Landroidx/lifecycle/Transformations$2$1;->this$0:Landroidx/lifecycle/Transformations$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)V"
        }
    .end annotation

    .line 153
    .local p1, "y":Ljava/lang/Object;, "TY;"
    iget-object v0, p0, Landroidx/lifecycle/Transformations$2$1;->this$0:Landroidx/lifecycle/Transformations$2;

    iget-object v0, v0, Landroidx/lifecycle/Transformations$2;->val$result:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 154
    return-void
.end method
