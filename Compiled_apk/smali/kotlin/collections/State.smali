.class final enum Lkotlin/collections/State;
.super Ljava/lang/Enum;
.source "AbstractIterator.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/collections/State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/collections/State;",
        "",
        "(Ljava/lang/String;I)V",
        "Ready",
        "NotReady",
        "Done",
        "Failed",
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
.field private static final synthetic $VALUES:[Lkotlin/collections/State;

.field public static final enum Done:Lkotlin/collections/State;

.field public static final enum Failed:Lkotlin/collections/State;

.field public static final enum NotReady:Lkotlin/collections/State;

.field public static final enum Ready:Lkotlin/collections/State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/collections/State;

    new-instance v1, Lkotlin/collections/State;

    const/4 v2, 0x0

    const-string v3, "Ready"

    invoke-direct {v1, v3, v2}, Lkotlin/collections/State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/collections/State;->Ready:Lkotlin/collections/State;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/collections/State;

    const/4 v2, 0x1

    const-string v3, "NotReady"

    invoke-direct {v1, v3, v2}, Lkotlin/collections/State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/collections/State;->NotReady:Lkotlin/collections/State;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/collections/State;

    const/4 v2, 0x2

    const-string v3, "Done"

    invoke-direct {v1, v3, v2}, Lkotlin/collections/State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/collections/State;->Done:Lkotlin/collections/State;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/collections/State;

    const/4 v2, 0x3

    const-string v3, "Failed"

    invoke-direct {v1, v3, v2}, Lkotlin/collections/State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/collections/State;->Failed:Lkotlin/collections/State;

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/collections/State;->$VALUES:[Lkotlin/collections/State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/collections/State;
    .locals 1

    const-class v0, Lkotlin/collections/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/collections/State;

    return-object p0
.end method

.method public static values()[Lkotlin/collections/State;
    .locals 1

    sget-object v0, Lkotlin/collections/State;->$VALUES:[Lkotlin/collections/State;

    invoke-virtual {v0}, [Lkotlin/collections/State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/collections/State;

    return-object v0
.end method
