.class Landroidx/print/PrintHelper$PrintUriAdapter$1;
.super Landroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/print/PrintHelper$PrintUriAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

.field final synthetic val$newPrintAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$oldPrintAttributes:Landroid/print/PrintAttributes;


# direct methods
.method constructor <init>(Landroidx/print/PrintHelper$PrintUriAdapter;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/print/PrintHelper$PrintUriAdapter;

    .line 424
    iput-object p1, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iput-object p2, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    iput-object p5, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 441
    :try_start_0
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v0, v0, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintUriAdapter;->mImageFile:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/print/PrintHelper;->loadConstrainedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 442
    :catch_0
    move-exception v0

    .line 445
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 424
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$PrintUriAdapter$1;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .line 494
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 495
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 496
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 424
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$PrintUriAdapter$1;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 450
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 454
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-boolean v1, Landroidx/print/PrintHelper;->PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    iget v1, v1, Landroidx/print/PrintHelper;->mOrientation:I

    if-nez v1, :cond_1

    .line 458
    :cond_0
    monitor-enter p0

    .line 459
    :try_start_0
    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintUriAdapter;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v1}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 460
    .local v1, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    if-eqz v1, :cond_1

    .line 463
    invoke-virtual {v1}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v2

    invoke-static {p1}, Landroidx/print/PrintHelper;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 464
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 466
    .local v2, "rotation":Landroid/graphics/Matrix;
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 467
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 468
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    .line 467
    move-object v3, p1

    move-object v8, v2

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 460
    .end local v2    # "rotation":Landroid/graphics/Matrix;
    :catchall_0
    move-exception v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_0

    .end local v1    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :catchall_1
    move-exception v1

    .local v0, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    goto :goto_0

    .line 474
    .end local v0    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iput-object p1, v1, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 475
    if-eqz p1, :cond_2

    .line 476
    new-instance v2, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintUriAdapter;->mJobName:Ljava/lang/String;

    invoke-direct {v2, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 477
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v2

    .line 478
    invoke-virtual {v2, v1}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v2

    .line 479
    invoke-virtual {v2}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v2

    .line 481
    .local v2, "info":Landroid/print/PrintDocumentInfo;
    iget-object v3, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    iget-object v4, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v1, v3

    .line 483
    .local v1, "changed":Z
    iget-object v3, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v3, v2, v1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 485
    .end local v1    # "changed":Z
    .end local v2    # "info":Landroid/print/PrintDocumentInfo;
    goto :goto_2

    .line 486
    :cond_2
    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    .line 488
    :goto_2
    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iput-object v0, v1, Landroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 489
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 424
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$PrintUriAdapter$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 428
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    new-instance v1, Landroidx/print/PrintHelper$PrintUriAdapter$1$1;

    invoke-direct {v1, p0}, Landroidx/print/PrintHelper$PrintUriAdapter$1$1;-><init>(Landroidx/print/PrintHelper$PrintUriAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 436
    return-void
.end method
