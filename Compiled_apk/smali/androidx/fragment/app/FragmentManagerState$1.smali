.class final Landroidx/fragment/app/FragmentManagerState$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManagerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/fragment/app/FragmentManagerState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/fragment/app/FragmentManagerState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 650
    new-instance v0, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {v0, p1}, Landroidx/fragment/app/FragmentManagerState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 647
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerState$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/fragment/app/FragmentManagerState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/fragment/app/FragmentManagerState;
    .locals 1
    .param p1, "size"    # I

    .line 655
    new-array v0, p1, [Landroidx/fragment/app/FragmentManagerState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 647
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerState$1;->newArray(I)[Landroidx/fragment/app/FragmentManagerState;

    move-result-object p1

    return-object p1
.end method
