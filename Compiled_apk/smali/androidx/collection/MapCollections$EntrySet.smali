.class final Landroidx/collection/MapCollections$EntrySet;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/MapCollections;


# direct methods
.method constructor <init>(Landroidx/collection/MapCollections;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/collection/MapCollections;

    .line 167
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    iput-object p1, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 167
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Landroidx/collection/MapCollections$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 170
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "object":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 175
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v0, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v0

    .line 176
    .local v0, "oldSize":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 177
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v3, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroidx/collection/MapCollections;->colPut(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 179
    :cond_0
    iget-object v1, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public clear()V
    .locals 1

    .line 184
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v0}, Landroidx/collection/MapCollections;->colClear()V

    .line 185
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 189
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 190
    return v1

    .line 191
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 192
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/collection/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 193
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 194
    return v1

    .line 196
    :cond_1
    iget-object v1, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    .line 197
    .local v1, "foundVal":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/collection/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 202
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 203
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/collection/MapCollections$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    const/4 v1, 0x0

    return v1

    .line 208
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 253
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    invoke-static {p0, p1}, Landroidx/collection/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 258
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    const/4 v0, 0x0

    .line 259
    .local v0, "result":I
    iget-object v1, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 260
    iget-object v3, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    .line 261
    .local v3, "key":Ljava/lang/Object;
    iget-object v5, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v5, v1, v2}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v5

    .line 262
    .local v5, "value":Ljava/lang/Object;
    if-nez v3, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_1
    if-nez v5, :cond_1

    goto :goto_2

    .line 263
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2
    xor-int/2addr v4, v6

    add-int/2addr v0, v4

    .line 259
    .end local v3    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 265
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 213
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 218
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Landroidx/collection/MapCollections$MapIterator;

    iget-object v1, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-direct {v0, v1}, Landroidx/collection/MapCollections$MapIterator;-><init>(Landroidx/collection/MapCollections;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 223
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 228
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 233
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 238
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Landroidx/collection/MapCollections$EntrySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 243
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 248
    .local p0, "this":Landroidx/collection/MapCollections$EntrySet;, "Landroidx/collection/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
