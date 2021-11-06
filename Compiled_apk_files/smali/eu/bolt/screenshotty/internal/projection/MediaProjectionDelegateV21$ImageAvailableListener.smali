.class final Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;
.super Ljava/lang/Object;
.source "MediaProjectionDelegateV21.kt"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImageAvailableListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u001f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;",
        "Landroid/media/ImageReader$OnImageAvailableListener;",
        "projection",
        "Landroid/media/projection/MediaProjection;",
        "width",
        "",
        "height",
        "(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Landroid/media/projection/MediaProjection;II)V",
        "processed",
        "",
        "onImageAvailable",
        "",
        "reader",
        "Landroid/media/ImageReader;",
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
.field private final height:I

.field private processed:Z

.field private final projection:Landroid/media/projection/MediaProjection;

.field final synthetic this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

.field private final width:I


# direct methods
.method public constructor <init>(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Landroid/media/projection/MediaProjection;II)V
    .locals 1
    .param p1, "$outer"    # Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;
    .param p2, "projection"    # Landroid/media/projection/MediaProjection;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/projection/MediaProjection;",
            "II)V"
        }
    .end annotation

    const-string v0, "projection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iput-object p1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;->this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;->projection:Landroid/media/projection/MediaProjection;

    iput p3, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;->width:I

    iput p4, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;->height:I

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 10
    .param p1, "reader"    # Landroid/media/ImageReader;

    const-string v0, "planes[0]"

    const-string v1, "reader"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-boolean v1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;->processed:Z

    if-eqz v1, :cond_0

    return-void

    .line 178
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;->processed:Z

    .line 179
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/media/Image;

    .line 180
    .local v2, "image":Landroid/media/Image;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 181
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 182
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v3

    move-object v2, v3

    .line 183
    if-eqz v2, :cond_2

    .line 184
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    .line 185
    .local v3, "planes":[Landroid/media/Image$Plane;
    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 186
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    aget-object v6, v3, v4

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    .line 187
    .local v6, "pixelStride":I
    aget-object v4, v3, v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    .line 188
    .local v0, "rowStride":I
    iget v4, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;->width:I

    mul-int v4, v4, v6

    sub-int v4, v0, v4

    .line 190
    .local v4, "rowPadding":I
    iget v7, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;->width:I

    div-int v8, v4, v6

    add-int/2addr v7, v8

    iget v8, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;->height:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v1, v7

    .line 191
    if-eqz v1, :cond_1

    move-object v7, v5

    check-cast v7, Ljava/nio/Buffer;

    invoke-virtual {v1, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 192
    :cond_1
    iget-object v7, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;->this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    const-string v8, "bitmap"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v1}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->access$onScreenshotCaptured(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Landroid/graphics/Bitmap;)V

    .end local v0    # "rowStride":I
    .end local v3    # "planes":[Landroid/media/Image$Plane;
    .end local v4    # "rowPadding":I
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "pixelStride":I
    goto :goto_0

    .line 194
    :cond_2
    sget-object v0, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;->Companion:Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;

    invoke-virtual {v0}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException$Companion;->failedToAcquireImage()Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    move-result-object v0

    .line 195
    .local v0, "exception":Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    iget-object v3, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;->this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    invoke-static {v3, v0}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->access$onScreenshotCaptureFailed(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Leu/bolt/screenshotty/util/MakeScreenshotFailedException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .end local v0    # "exception":Leu/bolt/screenshotty/util/MakeScreenshotFailedException;
    :goto_0
    nop

    .line 201
    :cond_3
    :goto_1
    sget-object v0, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    invoke-virtual {v0, v2}, Leu/bolt/screenshotty/internal/Utils;->closeSafely(Landroid/media/Image;)V

    .line 202
    sget-object v0, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    iget-object v3, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;->projection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0, v3}, Leu/bolt/screenshotty/internal/Utils;->stopSafely(Landroid/media/projection/MediaProjection;)V

    .line 203
    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;->this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    new-instance v4, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-direct {v4, v5}, Leu/bolt/screenshotty/util/MakeScreenshotFailedException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3, v4}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->access$onScreenshotCaptureFailed(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Leu/bolt/screenshotty/util/MakeScreenshotFailedException;)V

    .line 199
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 201
    :goto_3
    sget-object v3, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    invoke-virtual {v3, v2}, Leu/bolt/screenshotty/internal/Utils;->closeSafely(Landroid/media/Image;)V

    .line 202
    sget-object v3, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    iget-object v4, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$ImageAvailableListener;->projection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v3, v4}, Leu/bolt/screenshotty/internal/Utils;->stopSafely(Landroid/media/projection/MediaProjection;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
