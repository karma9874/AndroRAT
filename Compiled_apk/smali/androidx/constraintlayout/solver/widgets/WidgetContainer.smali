.class public Landroidx/constraintlayout/solver/widgets/WidgetContainer;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.source "WidgetContainer.java"


# instance fields
.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>(II)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>(IIII)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public static getBounds(Ljava/util/ArrayList;)Landroidx/constraintlayout/solver/widgets/Rectangle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)",
            "Landroidx/constraintlayout/solver/widgets/Rectangle;"
        }
    .end annotation

    .line 205
    .local p0, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Rectangle;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/Rectangle;-><init>()V

    .line 206
    .local v0, "bounds":Landroidx/constraintlayout/solver/widgets/Rectangle;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 207
    return-object v0

    .line 209
    :cond_0
    const v1, 0x7fffffff

    .line 210
    .local v1, "minX":I
    const/4 v2, 0x0

    .line 211
    .local v2, "maxX":I
    const v3, 0x7fffffff

    .line 212
    .local v3, "minY":I
    const/4 v4, 0x0

    .line 213
    .local v4, "maxY":I
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "widgetsSize":I
    :goto_0
    if-ge v5, v6, :cond_5

    .line 214
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 215
    .local v7, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v8

    if-ge v8, v1, :cond_1

    .line 216
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v1

    .line 218
    :cond_1
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v8

    if-ge v8, v3, :cond_2

    .line 219
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v3

    .line 221
    :cond_2
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v8

    if-le v8, v2, :cond_3

    .line 222
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v2

    .line 224
    :cond_3
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v8

    if-le v8, v4, :cond_4

    .line 225
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v4

    .line 213
    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 228
    .end local v5    # "i":I
    .end local v6    # "widgetsSize":I
    :cond_5
    sub-int v5, v2, v1

    sub-int v6, v4, v3

    invoke-virtual {v0, v1, v3, v5, v6}, Landroidx/constraintlayout/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 229
    return-object v0
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 1
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 72
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    .line 75
    .local v0, "container":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->remove(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 77
    .end local v0    # "container":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 78
    return-void
.end method

.method public varargs add([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 3
    .param p1, "widgets"    # [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 86
    array-length v0, p1

    .line 87
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 88
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public findWidget(FF)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getDrawX()I

    move-result v1

    .line 147
    .local v1, "l":I
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getDrawY()I

    move-result v2

    .line 148
    .local v2, "t":I
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 149
    .local v3, "r":I
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 150
    .local v4, "b":I
    int-to-float v5, v1

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    int-to-float v5, v2

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    int-to-float v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 151
    move-object v0, p0

    .line 153
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "mChildrenSize":I
    :goto_0
    if-ge v5, v6, :cond_4

    .line 154
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 155
    .local v7, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v8, v7, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    if-eqz v8, :cond_2

    .line 156
    move-object v8, v7

    check-cast v8, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    invoke-virtual {v8, p1, p2}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->findWidget(FF)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    .line 157
    .local v8, "f":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v8, :cond_1

    .line 158
    move-object v0, v8

    .line 160
    .end local v8    # "f":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    goto :goto_1

    .line 161
    :cond_2
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v1

    .line 162
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v2

    .line 163
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    add-int/2addr v8, v1

    .line 164
    .end local v3    # "r":I
    .local v8, "r":I
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 165
    .end local v4    # "b":I
    .local v3, "b":I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_3

    int-to-float v4, v8

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_3

    int-to-float v4, v2

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_3

    int-to-float v4, v3

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_3

    .line 166
    move-object v0, v7

    move v4, v3

    move v3, v8

    goto :goto_1

    .line 153
    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_3
    move v4, v3

    move v3, v8

    .end local v8    # "r":I
    .local v3, "r":I
    .restart local v4    # "b":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 170
    .end local v5    # "i":I
    .end local v6    # "mChildrenSize":I
    :cond_4
    return-object v0
.end method

.method public findWidgets(IIII)Ljava/util/ArrayList;
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    new-instance v1, Landroidx/constraintlayout/solver/widgets/Rectangle;

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/Rectangle;-><init>()V

    .line 185
    .local v1, "area":Landroidx/constraintlayout/solver/widgets/Rectangle;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/constraintlayout/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 186
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "mChildrenSize":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 187
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 188
    .local v4, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    new-instance v5, Landroidx/constraintlayout/solver/widgets/Rectangle;

    invoke-direct {v5}, Landroidx/constraintlayout/solver/widgets/Rectangle;-><init>()V

    .line 189
    .local v5, "bounds":Landroidx/constraintlayout/solver/widgets/Rectangle;
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v6

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v7

    .line 190
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    .line 189
    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 191
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/widgets/Rectangle;->intersects(Landroidx/constraintlayout/solver/widgets/Rectangle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 192
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v4    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v5    # "bounds":Landroidx/constraintlayout/solver/widgets/Rectangle;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v2    # "i":I
    .end local v3    # "mChildrenSize":I
    :cond_1
    return-object v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRootConstraintContainer()Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .locals 4

    .line 117
    move-object v0, p0

    .line 118
    .local v0, "item":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 119
    .local v1, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    .line 120
    .local v2, "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    instance-of v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v3, :cond_0

    .line 121
    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 123
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 124
    move-object v0, v1

    .line 125
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 126
    instance-of v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v3, :cond_0

    .line 127
    move-object v2, v0

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    goto :goto_0

    .line 130
    :cond_1
    return-object v2
.end method

.method public layout()V
    .locals 4

    .line 277
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->updateDrawPosition()V

    .line 278
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 279
    return-void

    .line 281
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 282
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 283
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 284
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v3, v2, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    if-eqz v3, :cond_1

    .line 285
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->layout()V

    .line 282
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public remove(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 1
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 98
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 100
    return-void
.end method

.method public removeAllChildren()V
    .locals 1

    .line 301
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 302
    return-void
.end method

.method public reset()V
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    invoke-super {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->reset()V

    .line 64
    return-void
.end method

.method public resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V
    .locals 3
    .param p1, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .line 292
    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V

    .line 293
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 294
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 295
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 296
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V

    .line 294
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setOffset(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 245
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 246
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 247
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 248
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 249
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getRootX()I

    move-result v3

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getRootY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 247
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public updateDrawPosition()V
    .locals 5

    .line 259
    invoke-super {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateDrawPosition()V

    .line 260
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 261
    return-void

    .line 263
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 264
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 265
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 266
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getDrawX()I

    move-result v3

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getDrawY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 267
    instance-of v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-nez v3, :cond_1

    .line 268
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateDrawPosition()V

    .line 264
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
