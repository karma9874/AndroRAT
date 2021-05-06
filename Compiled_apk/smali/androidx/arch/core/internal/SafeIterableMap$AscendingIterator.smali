.class Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;
.super Landroidx/arch/core/internal/SafeIterableMap$ListIterator;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/arch/core/internal/SafeIterableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AscendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/arch/core/internal/SafeIterableMap$ListIterator<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/arch/core/internal/SafeIterableMap$Entry;Landroidx/arch/core/internal/SafeIterableMap$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 283
    .local p0, "this":Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;, "Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator<TK;TV;>;"
    .local p1, "start":Landroidx/arch/core/internal/SafeIterableMap$Entry;, "Landroidx/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    .local p2, "expectedEnd":Landroidx/arch/core/internal/SafeIterableMap$Entry;, "Landroidx/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;-><init>(Landroidx/arch/core/internal/SafeIterableMap$Entry;Landroidx/arch/core/internal/SafeIterableMap$Entry;)V

    .line 284
    return-void
.end method


# virtual methods
.method backward(Landroidx/arch/core/internal/SafeIterableMap$Entry;)Landroidx/arch/core/internal/SafeIterableMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;)",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 293
    .local p0, "this":Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;, "Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator<TK;TV;>;"
    .local p1, "entry":Landroidx/arch/core/internal/SafeIterableMap$Entry;, "Landroidx/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    iget-object v0, p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    return-object v0
.end method

.method forward(Landroidx/arch/core/internal/SafeIterableMap$Entry;)Landroidx/arch/core/internal/SafeIterableMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;)",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 288
    .local p0, "this":Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;, "Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator<TK;TV;>;"
    .local p1, "entry":Landroidx/arch/core/internal/SafeIterableMap$Entry;, "Landroidx/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    iget-object v0, p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    return-object v0
.end method
