.class public final Lkotlin/system/ProcessKt;
.super Ljava/lang/Object;
.source "Process.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u0008\u00a8\u0006\u0004"
    }
    d2 = {
        "exitProcess",
        "",
        "status",
        "",
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
.method private static final exitProcess(I)Ljava/lang/Void;
    .locals 3
    .param p0, "status"    # I

    const/4 v0, 0x0

    .line 19
    .local v0, "$i$f$exitProcess":I
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    .line 20
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
