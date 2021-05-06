.class public Lkotlin/jvm/internal/MagicApiIntrinsics;
.super Ljava/lang/Object;
.source "MagicApiIntrinsics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static anyMagicApiCall(I)Ljava/lang/Object;
    .locals 1
    .param p0, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public static anyMagicApiCall(IJJLjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "id"    # I
    .param p1, "longData1"    # J
    .param p3, "longData2"    # J
    .param p5, "anyData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public static anyMagicApiCall(IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "id"    # I
    .param p1, "longData"    # J
    .param p3, "anyData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJ",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public static anyMagicApiCall(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "id"    # I
    .param p1, "anyData1"    # Ljava/lang/Object;
    .param p2, "anyData2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public static anyMagicApiCall(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "id"    # I
    .param p1, "anyData1"    # Ljava/lang/Object;
    .param p2, "anyData2"    # Ljava/lang/Object;
    .param p3, "anyData3"    # Ljava/lang/Object;
    .param p4, "anyData4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public static anyMagicApiCall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public static intMagicApiCall(I)I
    .locals 1
    .param p0, "id"    # I

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public static intMagicApiCall(IJJLjava/lang/Object;)I
    .locals 1
    .param p0, "id"    # I
    .param p1, "longData1"    # J
    .param p3, "longData2"    # J
    .param p5, "anyData"    # Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public static intMagicApiCall(IJLjava/lang/Object;)I
    .locals 1
    .param p0, "id"    # I
    .param p1, "longData"    # J
    .param p3, "anyData"    # Ljava/lang/Object;

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public static intMagicApiCall(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "id"    # I
    .param p1, "anyData1"    # Ljava/lang/Object;
    .param p2, "anyData2"    # Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public static intMagicApiCall(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "id"    # I
    .param p1, "anyData1"    # Ljava/lang/Object;
    .param p2, "anyData2"    # Ljava/lang/Object;
    .param p3, "anyData3"    # Ljava/lang/Object;
    .param p4, "anyData4"    # Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public static intMagicApiCall(Ljava/lang/Object;)I
    .locals 1
    .param p0, "data"    # Ljava/lang/Object;

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public static voidMagicApiCall(I)V
    .locals 0
    .param p0, "id"    # I

    .line 17
    return-void
.end method

.method public static voidMagicApiCall(Ljava/lang/Object;)V
    .locals 0
    .param p0, "data"    # Ljava/lang/Object;

    .line 28
    return-void
.end method
