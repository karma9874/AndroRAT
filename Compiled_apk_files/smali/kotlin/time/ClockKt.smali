.class public final Lkotlin/time/ClockKt;
.super Ljava/lang/Object;
.source "Clock.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\n\u001a\u001d\u0010\u0004\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007"
    }
    d2 = {
        "compareTo",
        "",
        "Lkotlin/time/ClockMark;",
        "other",
        "minus",
        "Lkotlin/time/Duration;",
        "(Lkotlin/time/ClockMark;Lkotlin/time/ClockMark;)D",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private static final compareTo(Lkotlin/time/ClockMark;Lkotlin/time/ClockMark;)I
    .locals 3
    .param p0, "$this$compareTo"    # Lkotlin/time/ClockMark;
    .param p1, "other"    # Lkotlin/time/ClockMark;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Comparing one ClockMark to another is not a well defined operation because these clock marks could have been obtained from the different clocks."
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$compareTo":I
    const-string v1, "$this$compareTo"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Operation is disallowed."

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private static final minus(Lkotlin/time/ClockMark;Lkotlin/time/ClockMark;)D
    .locals 3
    .param p0, "$this$minus"    # Lkotlin/time/ClockMark;
    .param p1, "other"    # Lkotlin/time/ClockMark;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Subtracting one ClockMark from another is not a well defined operation because these clock marks could have been obtained from the different clocks."
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$minus":I
    const-string v1, "$this$minus"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Operation is disallowed."

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
