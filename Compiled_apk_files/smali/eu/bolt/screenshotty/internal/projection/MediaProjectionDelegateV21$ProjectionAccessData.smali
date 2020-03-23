.class final Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;
.super Ljava/lang/Object;
.source "MediaProjectionDelegateV21.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProjectionAccessData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;",
        "",
        "resultCode",
        "",
        "data",
        "Landroid/content/Intent;",
        "(ILandroid/content/Intent;)V",
        "getData",
        "()Landroid/content/Intent;",
        "getResultCode",
        "()I",
        "screenshotty-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final data:Landroid/content/Intent;

.field private final resultCode:I


# direct methods
.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;->resultCode:I

    iput-object p2, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;->data:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final getData()Landroid/content/Intent;
    .locals 1

    .line 222
    iget-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;->data:Landroid/content/Intent;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    .line 221
    iget v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ProjectionAccessData;->resultCode:I

    return v0
.end method
