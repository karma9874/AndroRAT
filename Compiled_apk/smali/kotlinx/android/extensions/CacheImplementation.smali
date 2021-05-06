.class public final enum Lkotlinx/android/extensions/CacheImplementation;
.super Ljava/lang/Enum;
.source "CacheImplementation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/android/extensions/CacheImplementation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/android/extensions/CacheImplementation;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u0000 \u00062\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlinx/android/extensions/CacheImplementation;",
        "",
        "(Ljava/lang/String;I)V",
        "SPARSE_ARRAY",
        "HASH_MAP",
        "NO_CACHE",
        "Companion",
        "kotlin-android-extensions-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlinx/android/extensions/CacheImplementation;

.field public static final Companion:Lkotlinx/android/extensions/CacheImplementation$Companion;

.field private static final DEFAULT:Lkotlinx/android/extensions/CacheImplementation;

.field public static final enum HASH_MAP:Lkotlinx/android/extensions/CacheImplementation;

.field public static final enum NO_CACHE:Lkotlinx/android/extensions/CacheImplementation;

.field public static final enum SPARSE_ARRAY:Lkotlinx/android/extensions/CacheImplementation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/android/extensions/CacheImplementation;

    new-instance v1, Lkotlinx/android/extensions/CacheImplementation;

    const/4 v2, 0x0

    const-string v3, "SPARSE_ARRAY"

    invoke-direct {v1, v3, v2}, Lkotlinx/android/extensions/CacheImplementation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/android/extensions/CacheImplementation;->SPARSE_ARRAY:Lkotlinx/android/extensions/CacheImplementation;

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/android/extensions/CacheImplementation;

    const/4 v2, 0x1

    const-string v3, "HASH_MAP"

    invoke-direct {v1, v3, v2}, Lkotlinx/android/extensions/CacheImplementation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/android/extensions/CacheImplementation;->HASH_MAP:Lkotlinx/android/extensions/CacheImplementation;

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/android/extensions/CacheImplementation;

    const/4 v2, 0x2

    const-string v3, "NO_CACHE"

    invoke-direct {v1, v3, v2}, Lkotlinx/android/extensions/CacheImplementation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/android/extensions/CacheImplementation;->NO_CACHE:Lkotlinx/android/extensions/CacheImplementation;

    aput-object v1, v0, v2

    sput-object v0, Lkotlinx/android/extensions/CacheImplementation;->$VALUES:[Lkotlinx/android/extensions/CacheImplementation;

    new-instance v0, Lkotlinx/android/extensions/CacheImplementation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/android/extensions/CacheImplementation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/android/extensions/CacheImplementation;->Companion:Lkotlinx/android/extensions/CacheImplementation$Companion;

    .line 33
    sget-object v0, Lkotlinx/android/extensions/CacheImplementation;->HASH_MAP:Lkotlinx/android/extensions/CacheImplementation;

    sput-object v0, Lkotlinx/android/extensions/CacheImplementation;->DEFAULT:Lkotlinx/android/extensions/CacheImplementation;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()Lkotlinx/android/extensions/CacheImplementation;
    .locals 1

    .line 23
    sget-object v0, Lkotlinx/android/extensions/CacheImplementation;->DEFAULT:Lkotlinx/android/extensions/CacheImplementation;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/android/extensions/CacheImplementation;
    .locals 1

    const-class v0, Lkotlinx/android/extensions/CacheImplementation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/android/extensions/CacheImplementation;

    return-object p0
.end method

.method public static values()[Lkotlinx/android/extensions/CacheImplementation;
    .locals 1

    sget-object v0, Lkotlinx/android/extensions/CacheImplementation;->$VALUES:[Lkotlinx/android/extensions/CacheImplementation;

    invoke-virtual {v0}, [Lkotlinx/android/extensions/CacheImplementation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/android/extensions/CacheImplementation;

    return-object v0
.end method
