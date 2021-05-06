.class Landroidx/core/text/util/FindAddress$ZipRange;
.super Ljava/lang/Object;
.source "FindAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/FindAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZipRange"
.end annotation


# instance fields
.field mException1:I

.field mException2:I

.field mHigh:I

.field mLow:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .param p1, "low"    # I
    .param p2, "high"    # I
    .param p3, "exception1"    # I
    .param p4, "exception2"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mLow:I

    .line 45
    iput p2, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mHigh:I

    .line 46
    iput p3, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException1:I

    .line 47
    iput p3, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException2:I

    .line 48
    return-void
.end method


# virtual methods
.method matches(Ljava/lang/String;)Z
    .locals 3
    .param p1, "zipCode"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 52
    .local v1, "prefix":I
    iget v2, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mLow:I

    if-gt v2, v1, :cond_0

    iget v2, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mHigh:I

    if-le v1, v2, :cond_1

    :cond_0
    iget v2, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException1:I

    if-eq v1, v2, :cond_1

    iget v2, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException2:I

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
