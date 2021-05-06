.class Landroidx/cursoradapter/widget/CursorFilter;
.super Landroid/widget/Filter;
.source "CursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;
    }
.end annotation


# instance fields
.field mClient:Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;


# direct methods
.method constructor <init>(Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;)V
    .locals 0
    .param p1, "client"    # Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    .line 39
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 40
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    .line 41
    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "resultValue"    # Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .line 50
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    invoke-interface {v0, p1}, Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 52
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 53
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 55
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 58
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 60
    :goto_0
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .line 65
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    invoke-interface {v0}, Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 67
    .local v0, "oldCursor":Landroid/database/Cursor;
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eq v1, v0, :cond_0

    .line 68
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Landroid/database/Cursor;

    invoke-interface {v1, v2}, Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;->changeCursor(Landroid/database/Cursor;)V

    .line 70
    :cond_0
    return-void
.end method
