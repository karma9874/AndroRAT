.class Lkotlin/collections/GroupingKt__GroupingJVMKt;
.super Ljava/lang/Object;
.source "GroupingJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGroupingJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupingJVM.kt\nkotlin/collections/GroupingKt__GroupingJVMKt\n+ 2 Grouping.kt\nkotlin/collections/GroupingKt__GroupingKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n142#2,2:53\n80#2,6:55\n1587#3,2:61\n*E\n*S KotlinDebug\n*F\n+ 1 GroupingJVM.kt\nkotlin/collections/GroupingKt__GroupingJVMKt\n*L\n22#1,2:53\n22#1,6:55\n48#1,2:61\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0000\u001a0\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u0004\u0008\u0000\u0010\u0004\"\u0004\u0008\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u0005H\u0007\u001aW\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00080\u0007\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\t\"\u0004\u0008\u0002\u0010\u0008*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\t0\u00072\u001e\u0010\n\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\t0\u000c\u0012\u0004\u0012\u0002H\u00080\u000bH\u0081\u0008\u00a8\u0006\r"
    }
    d2 = {
        "eachCount",
        "",
        "K",
        "",
        "T",
        "Lkotlin/collections/Grouping;",
        "mapValuesInPlace",
        "",
        "R",
        "V",
        "f",
        "Lkotlin/Function1;",
        "",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xf
    }
    xi = 0x1
    xs = "kotlin/collections/GroupingKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final eachCount(Lkotlin/collections/Grouping;)Ljava/util/Map;
    .locals 22
    .param p0, "$this$eachCount"    # Lkotlin/collections/Grouping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/collections/Grouping<",
            "TT;+TK;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$eachCount"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    nop

    .line 25
    nop

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .local v0, "destination$iv":Ljava/util/Map;
    move-object/from16 v2, p0

    .local v2, "$this$foldTo$iv":Lkotlin/collections/Grouping;
    const/4 v3, 0x0

    .line 53
    .local v3, "$i$f$foldTo":I
    nop

    .line 54
    move-object v4, v2

    .local v4, "$this$aggregateTo$iv$iv":Lkotlin/collections/Grouping;
    const/4 v5, 0x0

    .line 55
    .local v5, "$i$f$aggregateTo":I
    invoke-interface {v4}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 56
    .local v7, "e$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v7}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 57
    .local v8, "key$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 58
    .local v9, "accumulator$iv$iv":Ljava/lang/Object;
    if-nez v9, :cond_0

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    move-object v12, v8

    .local v12, "key$iv":Ljava/lang/Object;
    move-object v13, v9

    .local v13, "acc$iv":Ljava/lang/Object;
    move-object v14, v7

    .local v11, "first$iv":Z
    .local v14, "e$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 54
    .local v15, "$i$a$-aggregateTo-GroupingKt__GroupingKt$foldTo$1$iv":I
    if-eqz v11, :cond_1

    move-object/from16 v16, v12

    .local v16, "$noName_0":Ljava/lang/Object;
    move-object/from16 v17, v14

    .local v17, "$noName_1":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 23
    .local v18, "$i$a$-foldTo-GroupingKt__GroupingJVMKt$eachCount$1":I
    new-instance v19, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct/range {v19 .. v19}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .end local v16    # "$noName_0":Ljava/lang/Object;
    .end local v17    # "$noName_1":Ljava/lang/Object;
    .end local v18    # "$i$a$-foldTo-GroupingKt__GroupingJVMKt$eachCount$1":I
    goto :goto_2

    :cond_1
    move-object/from16 v19, v13

    :goto_2
    move-object/from16 v10, v19

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    .local v10, "acc":Lkotlin/jvm/internal/Ref$IntRef;
    move-object/from16 v17, v12

    .local v17, "$noName_0":Ljava/lang/Object;
    move-object/from16 v18, v14

    .local v18, "$noName_2":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 24
    .local v19, "$i$a$-foldTo-GroupingKt__GroupingJVMKt$eachCount$2":I
    move-object/from16 v20, v10

    .local v20, "$this$apply":Lkotlin/jvm/internal/Ref$IntRef;
    const/16 v21, 0x0

    move-object/from16 v1, v20

    move-object/from16 v20, v2

    .end local v2    # "$this$foldTo$iv":Lkotlin/collections/Grouping;
    .local v1, "$this$apply":Lkotlin/jvm/internal/Ref$IntRef;
    .local v20, "$this$foldTo$iv":Lkotlin/collections/Grouping;
    .local v21, "$i$a$-apply-GroupingKt__GroupingJVMKt$eachCount$2$1":I
    iget v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .end local v1    # "$this$apply":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v10    # "acc":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v17    # "$noName_0":Ljava/lang/Object;
    .end local v18    # "$noName_2":Ljava/lang/Object;
    .end local v19    # "$i$a$-foldTo-GroupingKt__GroupingJVMKt$eachCount$2":I
    .end local v21    # "$i$a$-apply-GroupingKt__GroupingJVMKt$eachCount$2$1":I
    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v7    # "e$iv$iv":Ljava/lang/Object;
    .end local v8    # "key$iv$iv":Ljava/lang/Object;
    .end local v9    # "accumulator$iv$iv":Ljava/lang/Object;
    .end local v11    # "first$iv":Z
    .end local v12    # "key$iv":Ljava/lang/Object;
    .end local v13    # "acc$iv":Ljava/lang/Object;
    .end local v14    # "e$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-aggregateTo-GroupingKt__GroupingKt$foldTo$1$iv":I
    move-object/from16 v1, p0

    move-object/from16 v2, v20

    goto :goto_0

    .line 60
    .end local v20    # "$this$foldTo$iv":Lkotlin/collections/Grouping;
    .restart local v2    # "$this$foldTo$iv":Lkotlin/collections/Grouping;
    :cond_2
    move-object/from16 v20, v2

    .line 54
    .end local v2    # "$this$foldTo$iv":Lkotlin/collections/Grouping;
    .end local v4    # "$this$aggregateTo$iv$iv":Lkotlin/collections/Grouping;
    .end local v5    # "$i$f$aggregateTo":I
    .restart local v20    # "$this$foldTo$iv":Lkotlin/collections/Grouping;
    nop

    .line 25
    .end local v0    # "destination$iv":Ljava/util/Map;
    .end local v3    # "$i$f$foldTo":I
    .end local v20    # "$this$foldTo$iv":Lkotlin/collections/Grouping;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMapEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    .local v2, "it":Ljava/util/Map$Entry;
    const/4 v4, 0x0

    .local v4, "$i$a$-mapValuesInPlace-GroupingKt__GroupingJVMKt$eachCount$3":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .end local v2    # "it":Ljava/util/Map$Entry;
    .end local v4    # "$i$a$-mapValuesInPlace-GroupingKt__GroupingJVMKt$eachCount$3":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableMap.MutableEntry<K, R>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static final mapValuesInPlace(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
    .locals 9
    .param p0, "$this$mapValuesInPlace"    # Ljava/util/Map;
    .param p1, "f"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;+TR;>;)",
            "Ljava/util/Map<",
            "TK;TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    .local v0, "$i$f$mapValuesInPlace":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "it":Ljava/util/Map$Entry;
    const/4 v6, 0x0

    .line 49
    .local v6, "$i$a$-forEach-GroupingKt__GroupingJVMKt$mapValuesInPlace$1":I
    if-eqz v5, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMapEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .end local v5    # "it":Ljava/util/Map$Entry;
    .end local v6    # "$i$a$-forEach-GroupingKt__GroupingJVMKt$mapValuesInPlace$1":I
    goto :goto_0

    .line 49
    .restart local v5    # "it":Ljava/util/Map$Entry;
    .restart local v6    # "$i$a$-forEach-GroupingKt__GroupingJVMKt$mapValuesInPlace$1":I
    :cond_0
    new-instance v3, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type kotlin.collections.MutableMap.MutableEntry<K, R>"

    invoke-direct {v3, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Ljava/util/Map$Entry;
    .end local v6    # "$i$a$-forEach-GroupingKt__GroupingJVMKt$mapValuesInPlace$1":I
    :cond_1
    nop

    .line 51
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    if-eqz p0, :cond_2

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, R>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
