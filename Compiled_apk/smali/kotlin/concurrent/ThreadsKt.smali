.class public final Lkotlin/concurrent/ThreadsKt;
.super Ljava/lang/Object;
.source "Thread.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThread.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Thread.kt\nkotlin/concurrent/ThreadsKt\n*L\n1#1,61:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aJ\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u001a0\u0010\u000e\u001a\u0002H\u000f\"\u0008\u0008\u0000\u0010\u000f*\u00020\u0010*\u0008\u0012\u0004\u0012\u0002H\u000f0\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u000cH\u0087\u0008\u00a2\u0006\u0002\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "thread",
        "Ljava/lang/Thread;",
        "start",
        "",
        "isDaemon",
        "contextClassLoader",
        "Ljava/lang/ClassLoader;",
        "name",
        "",
        "priority",
        "",
        "block",
        "Lkotlin/Function0;",
        "",
        "getOrSet",
        "T",
        "",
        "Ljava/lang/ThreadLocal;",
        "default",
        "(Ljava/lang/ThreadLocal;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
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
.method private static final getOrSet(Ljava/lang/ThreadLocal;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this$getOrSet"    # Ljava/lang/ThreadLocal;
    .param p1, "default"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ThreadLocal<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    .local v0, "$i$f$getOrSet":I
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "p1":Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "$i$a$-unknown-ThreadsKt$getOrSet$1":I
    invoke-virtual {p0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .end local v2    # "p1":Ljava/lang/Object;
    .end local v3    # "$i$a$-unknown-ThreadsKt$getOrSet$1":I
    :goto_0
    return-object v1
.end method

.method public static final thread(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Thread;
    .locals 2
    .param p0, "start"    # Z
    .param p1, "isDaemon"    # Z
    .param p2, "contextClassLoader"    # Ljava/lang/ClassLoader;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "priority"    # I
    .param p5, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Thread;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lkotlin/concurrent/ThreadsKt$thread$thread$1;

    invoke-direct {v0, p5}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 33
    .local v0, "thread":Lkotlin/concurrent/ThreadsKt$thread$thread$1;
    if-eqz p1, :cond_0

    .line 34
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->setDaemon(Z)V

    .line 35
    :cond_0
    if-lez p4, :cond_1

    .line 36
    invoke-virtual {v0, p4}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->setPriority(I)V

    .line 37
    :cond_1
    if-eqz p3, :cond_2

    .line 38
    invoke-virtual {v0, p3}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->setName(Ljava/lang/String;)V

    .line 39
    :cond_2
    if-eqz p2, :cond_3

    .line 40
    invoke-virtual {v0, p2}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 41
    :cond_3
    if-eqz p0, :cond_4

    .line 42
    invoke-virtual {v0}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->start()V

    .line 43
    :cond_4
    move-object v1, v0

    check-cast v1, Ljava/lang/Thread;

    return-object v1
.end method

.method public static synthetic thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 21
    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_0

    .line 0
    :cond_0
    move v0, p0

    .line 21
    :goto_0
    and-int/lit8 p0, p6, 0x2

    if-eqz p0, :cond_1

    .line 22
    const/4 p1, 0x0

    const/4 v1, 0x0

    goto :goto_1

    .line 21
    :cond_1
    move v1, p1

    .line 22
    :goto_1
    and-int/lit8 p0, p6, 0x4

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 23
    move-object p2, p1

    check-cast p2, Ljava/lang/ClassLoader;

    move-object v2, p2

    goto :goto_2

    .line 22
    :cond_2
    move-object v2, p2

    .line 23
    :goto_2
    and-int/lit8 p0, p6, 0x8

    if-eqz p0, :cond_3

    .line 24
    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    move-object v3, p3

    goto :goto_3

    .line 23
    :cond_3
    move-object v3, p3

    .line 24
    :goto_3
    and-int/lit8 p0, p6, 0x10

    if-eqz p0, :cond_4

    .line 25
    const/4 p4, -0x1

    const/4 v4, -0x1

    goto :goto_4

    .line 24
    :cond_4
    move v4, p4

    .line 25
    :goto_4
    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lkotlin/concurrent/ThreadsKt;->thread(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
