.class public final Leu/bolt/screenshotty/Subscriptions;
.super Ljava/lang/Object;
.source "Subscriptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "Leu/bolt/screenshotty/Subscriptions;",
        "",
        "()V",
        "DISPOSED_INSTANCE",
        "eu/bolt/screenshotty/Subscriptions$DISPOSED_INSTANCE$1",
        "Leu/bolt/screenshotty/Subscriptions$DISPOSED_INSTANCE$1;",
        "disposed",
        "Leu/bolt/screenshotty/ScreenshotResult$Subscription;",
        "screenshotty-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final DISPOSED_INSTANCE:Leu/bolt/screenshotty/Subscriptions$DISPOSED_INSTANCE$1;

.field public static final INSTANCE:Leu/bolt/screenshotty/Subscriptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Leu/bolt/screenshotty/Subscriptions;

    invoke-direct {v0}, Leu/bolt/screenshotty/Subscriptions;-><init>()V

    sput-object v0, Leu/bolt/screenshotty/Subscriptions;->INSTANCE:Leu/bolt/screenshotty/Subscriptions;

    .line 5
    new-instance v0, Leu/bolt/screenshotty/Subscriptions$DISPOSED_INSTANCE$1;

    invoke-direct {v0}, Leu/bolt/screenshotty/Subscriptions$DISPOSED_INSTANCE$1;-><init>()V

    sput-object v0, Leu/bolt/screenshotty/Subscriptions;->DISPOSED_INSTANCE:Leu/bolt/screenshotty/Subscriptions$DISPOSED_INSTANCE$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final disposed()Leu/bolt/screenshotty/ScreenshotResult$Subscription;
    .locals 1

    .line 11
    sget-object v0, Leu/bolt/screenshotty/Subscriptions;->DISPOSED_INSTANCE:Leu/bolt/screenshotty/Subscriptions$DISPOSED_INSTANCE$1;

    check-cast v0, Leu/bolt/screenshotty/ScreenshotResult$Subscription;

    return-object v0
.end method
