.class public final Lkotlin/time/TestClock;
.super Lkotlin/time/AbstractLongClock;
.source "Clocks.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001b\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u0008\u0010\r\u001a\u00020\u0004H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/time/TestClock;",
        "Lkotlin/time/AbstractLongClock;",
        "()V",
        "reading",
        "",
        "overflow",
        "",
        "duration",
        "Lkotlin/time/Duration;",
        "overflow-LRDsOJo",
        "(D)V",
        "plusAssign",
        "plusAssign-LRDsOJo",
        "read",
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
.field private reading:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0}, Lkotlin/time/AbstractLongClock;-><init>(Ljava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private final overflow-LRDsOJo(D)V
    .locals 4
    .param p1, "duration"    # D

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TestClock will overflow if its reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lkotlin/time/TestClock;->reading:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ns is advanced by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lkotlin/time/Duration;->toString-impl(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public final plusAssign-LRDsOJo(D)V
    .locals 13
    .param p1, "duration"    # D

    .line 93
    invoke-virtual {p0}, Lkotlin/time/TestClock;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    .line 94
    .local v0, "delta":D
    double-to-long v2, v0

    .line 95
    .local v2, "longDelta":J
    const-wide v4, 0x7fffffffffffffffL

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v2, v6

    if-eqz v8, :cond_1

    cmp-long v8, v2, v4

    if-eqz v8, :cond_1

    .line 97
    iget-wide v4, p0, Lkotlin/time/TestClock;->reading:J

    add-long v6, v4, v2

    .line 98
    .local v6, "newReading":J
    xor-long v8, v4, v2

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-ltz v12, :cond_0

    xor-long/2addr v4, v6

    cmp-long v8, v4, v10

    if-gez v8, :cond_0

    invoke-direct {p0, p1, p2}, Lkotlin/time/TestClock;->overflow-LRDsOJo(D)V

    .line 99
    :cond_0
    goto :goto_0

    .line 102
    .end local v6    # "newReading":J
    :cond_1
    iget-wide v8, p0, Lkotlin/time/TestClock;->reading:J

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v0

    .line 103
    .local v8, "newReading":D
    long-to-double v4, v4

    cmpl-double v10, v8, v4

    if-gtz v10, :cond_2

    long-to-double v4, v6

    cmpg-double v6, v8, v4

    if-gez v6, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2}, Lkotlin/time/TestClock;->overflow-LRDsOJo(D)V

    .line 104
    :cond_3
    double-to-long v6, v8

    .line 95
    .end local v8    # "newReading":D
    :goto_0
    iput-wide v6, p0, Lkotlin/time/TestClock;->reading:J

    .line 106
    return-void
.end method

.method protected read()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lkotlin/time/TestClock;->reading:J

    return-wide v0
.end method
