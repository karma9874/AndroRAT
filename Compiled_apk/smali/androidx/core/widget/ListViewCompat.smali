.class public final Landroidx/core/widget/ListViewCompat;
.super Ljava/lang/Object;
.source "ListViewCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canScrollList(Landroid/widget/ListView;I)Z
    .locals 8
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "direction"    # I

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result v0

    return v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 73
    .local v0, "childCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 74
    return v1

    .line 77
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 78
    .local v2, "firstPosition":I
    const/4 v3, 0x1

    if-lez p1, :cond_4

    .line 79
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 80
    .local v4, "lastBottom":I
    add-int v5, v2, v0

    .line 81
    .local v5, "lastPosition":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 82
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    if-le v4, v6, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    .line 84
    .end local v4    # "lastBottom":I
    .end local v5    # "lastPosition":I
    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 85
    .local v4, "firstTop":I
    if-gtz v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v5

    if-ge v4, v5, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public static scrollListBy(Landroid/widget/ListView;I)V
    .locals 3
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "y"    # I

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->scrollListBy(I)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 43
    .local v0, "firstPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 44
    return-void

    .line 47
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "firstView":Landroid/view/View;
    if-nez v1, :cond_2

    .line 49
    return-void

    .line 52
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, p1

    .line 53
    .local v2, "newTop":I
    invoke-virtual {p0, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 55
    .end local v0    # "firstPosition":I
    .end local v1    # "firstView":Landroid/view/View;
    .end local v2    # "newTop":I
    :goto_0
    return-void
.end method
