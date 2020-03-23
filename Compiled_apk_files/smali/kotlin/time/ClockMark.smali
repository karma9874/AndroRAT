.class public abstract Lkotlin/time/ClockMark;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u0004H&\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0008\u001a\u00020\u0007J\u001b\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0004H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\r\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0004H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/time/ClockMark;",
        "",
        "()V",
        "elapsedNow",
        "Lkotlin/time/Duration;",
        "()D",
        "hasNotPassedNow",
        "",
        "hasPassedNow",
        "minus",
        "duration",
        "minus-LRDsOJo",
        "(D)Lkotlin/time/ClockMark;",
        "plus",
        "plus-LRDsOJo",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract elapsedNow()D
.end method

.method public final hasNotPassedNow()Z
    .locals 2

    .line 71
    invoke-virtual {p0}, Lkotlin/time/ClockMark;->elapsedNow()D

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->isNegative-impl(D)Z

    move-result v0

    return v0
.end method

.method public final hasPassedNow()Z
    .locals 2

    .line 63
    invoke-virtual {p0}, Lkotlin/time/ClockMark;->elapsedNow()D

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->isNegative-impl(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public minus-LRDsOJo(D)Lkotlin/time/ClockMark;
    .locals 2
    .param p1, "duration"    # D

    .line 54
    invoke-static {p1, p2}, Lkotlin/time/Duration;->unaryMinus-impl(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/time/ClockMark;->plus-LRDsOJo(D)Lkotlin/time/ClockMark;

    move-result-object v0

    return-object v0
.end method

.method public plus-LRDsOJo(D)Lkotlin/time/ClockMark;
    .locals 2
    .param p1, "duration"    # D

    .line 47
    new-instance v0, Lkotlin/time/AdjustedClockMark;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lkotlin/time/AdjustedClockMark;-><init>(Lkotlin/time/ClockMark;DLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lkotlin/time/ClockMark;

    return-object v0
.end method
