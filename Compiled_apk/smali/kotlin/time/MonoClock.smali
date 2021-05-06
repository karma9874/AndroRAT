.class public final Lkotlin/time/MonoClock;
.super Lkotlin/time/AbstractLongClock;
.source "MonoClock.kt"

# interfaces
.implements Lkotlin/time/Clock;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0014J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/time/MonoClock;",
        "Lkotlin/time/AbstractLongClock;",
        "Lkotlin/time/Clock;",
        "()V",
        "read",
        "",
        "toString",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/time/MonoClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lkotlin/time/MonoClock;

    invoke-direct {v0}, Lkotlin/time/MonoClock;-><init>()V

    sput-object v0, Lkotlin/time/MonoClock;->INSTANCE:Lkotlin/time/MonoClock;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0}, Lkotlin/time/AbstractLongClock;-><init>(Ljava/util/concurrent/TimeUnit;)V

    return-void
.end method


# virtual methods
.method protected read()J
    .locals 2

    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 12
    const-string v0, "Clock(System.nanoTime())"

    return-object v0
.end method
