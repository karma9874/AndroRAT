.class Landroidx/appcompat/view/menu/BaseWrapper;
.super Ljava/lang/Object;
.source "BaseWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mWrappedObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 23
    .local p0, "this":Landroidx/appcompat/view/menu/BaseWrapper;, "Landroidx/appcompat/view/menu/BaseWrapper<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-eqz p1, :cond_0

    .line 27
    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    .line 28
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrapped Object can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getWrappedObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 31
    .local p0, "this":Landroidx/appcompat/view/menu/BaseWrapper;, "Landroidx/appcompat/view/menu/BaseWrapper<TT;>;"
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    return-object v0
.end method
