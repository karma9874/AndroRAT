.class final Lkotlin/time/AdjustedClockMark;
.super Lkotlin/time/ClockMark;
.source "Clock.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0003\u0018\u00002\u00020\u0001B\u0018\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000b\u001a\u00020\u0004H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007J\u001b\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0004H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlin/time/AdjustedClockMark;",
        "Lkotlin/time/ClockMark;",
        "mark",
        "adjustment",
        "Lkotlin/time/Duration;",
        "(Lkotlin/time/ClockMark;DLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getAdjustment",
        "()D",
        "D",
        "getMark",
        "()Lkotlin/time/ClockMark;",
        "elapsedNow",
        "plus",
        "duration",
        "plus-LRDsOJo",
        "(D)Lkotlin/time/ClockMark;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final adjustment:D

.field private final mark:Lkotlin/time/ClockMark;


# direct methods
.method private constructor <init>(Lkotlin/time/ClockMark;D)V
    .locals 0
    .param p1, "mark"    # Lkotlin/time/ClockMark;
    .param p2, "adjustment"    # D

    .line 89
    invoke-direct {p0}, Lkotlin/time/ClockMark;-><init>()V

    iput-object p1, p0, Lkotlin/time/AdjustedClockMark;->mark:Lkotlin/time/ClockMark;

    iput-wide p2, p0, Lkotlin/time/AdjustedClockMark;->adjustment:D

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/time/ClockMark;DLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "mark"    # Lkotlin/time/ClockMark;
    .param p2, "adjustment"    # D
    .param p4, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lkotlin/time/AdjustedClockMark;-><init>(Lkotlin/time/ClockMark;D)V

    return-void
.end method


# virtual methods
.method public elapsedNow()D
    .locals 4

    .line 90
    iget-object v0, p0, Lkotlin/time/AdjustedClockMark;->mark:Lkotlin/time/ClockMark;

    invoke-virtual {v0}, Lkotlin/time/ClockMark;->elapsedNow()D

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/AdjustedClockMark;->adjustment:D

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getAdjustment()D
    .locals 2

    .line 89
    iget-wide v0, p0, Lkotlin/time/AdjustedClockMark;->adjustment:D

    return-wide v0
.end method

.method public final getMark()Lkotlin/time/ClockMark;
    .locals 1

    .line 89
    iget-object v0, p0, Lkotlin/time/AdjustedClockMark;->mark:Lkotlin/time/ClockMark;

    return-object v0
.end method

.method public plus-LRDsOJo(D)Lkotlin/time/ClockMark;
    .locals 5
    .param p1, "duration"    # D

    .line 92
    new-instance v0, Lkotlin/time/AdjustedClockMark;

    iget-object v1, p0, Lkotlin/time/AdjustedClockMark;->mark:Lkotlin/time/ClockMark;

    iget-wide v2, p0, Lkotlin/time/AdjustedClockMark;->adjustment:D

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/Duration;->plus-LRDsOJo(DD)D

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/time/AdjustedClockMark;-><init>(Lkotlin/time/ClockMark;DLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lkotlin/time/ClockMark;

    return-object v0
.end method
