.class Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;
.super Ljava/lang/Object;
.source "Snapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/Snapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Connection"
.end annotation


# instance fields
.field private mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mCreator:I

.field private mMargin:I

.field private mStrengh:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

.field private mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .locals 1
    .param p1, "anchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 49
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 50
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mMargin:I

    .line 51
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getStrength()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mStrengh:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 52
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mCreator:I

    .line 53
    return-void
.end method


# virtual methods
.method public applyTo(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 5
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 81
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 82
    .local v0, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mMargin:I

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mStrengh:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mCreator:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)Z

    .line 83
    return-void
.end method

.method public updateFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 2
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 61
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 64
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mMargin:I

    .line 65
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getStrength()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mStrengh:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 66
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mCreator:I

    goto :goto_0

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mMargin:I

    .line 70
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mStrengh:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 71
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mCreator:I

    .line 73
    :goto_0
    return-void
.end method
