.class public final enum Landroidx/constraintlayout/solver/SolverVariable$Type;
.super Ljava/lang/Enum;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/SolverVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/SolverVariable$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum CONSTANT:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum UNKNOWN:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 69
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v1, 0x0

    const-string v2, "UNRESTRICTED"

    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 73
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v2, 0x1

    const-string v3, "CONSTANT"

    invoke-direct {v0, v3, v2}, Landroidx/constraintlayout/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->CONSTANT:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 77
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v3, 0x2

    const-string v4, "SLACK"

    invoke-direct {v0, v4, v3}, Landroidx/constraintlayout/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 81
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Landroidx/constraintlayout/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 85
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5}, Landroidx/constraintlayout/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v6, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    aput-object v6, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->CONSTANT:Landroidx/constraintlayout/solver/SolverVariable$Type;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/solver/SolverVariable$Type;

    aput-object v1, v0, v5

    sput-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->$VALUES:[Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 65
    const-class v0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/solver/SolverVariable$Type;
    .locals 1

    .line 65
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->$VALUES:[Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/SolverVariable$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-object v0
.end method
