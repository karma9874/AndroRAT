.class public final enum Lkotlin/contracts/InvocationKind;
.super Ljava/lang/Enum;
.source "ContractBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/contracts/InvocationKind;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/contracts/InvocationKind;",
        "",
        "(Ljava/lang/String;I)V",
        "AT_MOST_ONCE",
        "AT_LEAST_ONCE",
        "EXACTLY_ONCE",
        "UNKNOWN",
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
.field private static final synthetic $VALUES:[Lkotlin/contracts/InvocationKind;

.field public static final enum AT_LEAST_ONCE:Lkotlin/contracts/InvocationKind;

.field public static final enum AT_MOST_ONCE:Lkotlin/contracts/InvocationKind;

.field public static final enum EXACTLY_ONCE:Lkotlin/contracts/InvocationKind;

.field public static final enum UNKNOWN:Lkotlin/contracts/InvocationKind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/contracts/InvocationKind;

    new-instance v1, Lkotlin/contracts/InvocationKind;

    const/4 v2, 0x0

    const-string v3, "AT_MOST_ONCE"

    invoke-direct {v1, v3, v2}, Lkotlin/contracts/InvocationKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/contracts/InvocationKind;->AT_MOST_ONCE:Lkotlin/contracts/InvocationKind;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/contracts/InvocationKind;

    const/4 v2, 0x1

    const-string v3, "AT_LEAST_ONCE"

    invoke-direct {v1, v3, v2}, Lkotlin/contracts/InvocationKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/contracts/InvocationKind;->AT_LEAST_ONCE:Lkotlin/contracts/InvocationKind;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/contracts/InvocationKind;

    const/4 v2, 0x2

    const-string v3, "EXACTLY_ONCE"

    invoke-direct {v1, v3, v2}, Lkotlin/contracts/InvocationKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/contracts/InvocationKind;->EXACTLY_ONCE:Lkotlin/contracts/InvocationKind;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/contracts/InvocationKind;

    const/4 v2, 0x3

    const-string v3, "UNKNOWN"

    invoke-direct {v1, v3, v2}, Lkotlin/contracts/InvocationKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/contracts/InvocationKind;->UNKNOWN:Lkotlin/contracts/InvocationKind;

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/contracts/InvocationKind;->$VALUES:[Lkotlin/contracts/InvocationKind;

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

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/contracts/InvocationKind;
    .locals 1

    const-class v0, Lkotlin/contracts/InvocationKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/contracts/InvocationKind;

    return-object p0
.end method

.method public static values()[Lkotlin/contracts/InvocationKind;
    .locals 1

    sget-object v0, Lkotlin/contracts/InvocationKind;->$VALUES:[Lkotlin/contracts/InvocationKind;

    invoke-virtual {v0}, [Lkotlin/contracts/InvocationKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/contracts/InvocationKind;

    return-object v0
.end method
