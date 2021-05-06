.class final Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;
.super Ljava/lang/Object;
.source "FloatingPanelDataProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FieldCacheKey"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\r\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J!\u0010\r\u001a\u00020\u00002\u000c\u0008\u0002\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0005H\u00d6\u0001R\u0015\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;",
        "",
        "clazz",
        "Ljava/lang/Class;",
        "fieldName",
        "",
        "(Ljava/lang/Class;Ljava/lang/String;)V",
        "getClazz",
        "()Ljava/lang/Class;",
        "getFieldName",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "screenshotty-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final fieldName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->clazz:Ljava/lang/Class;

    iput-object p2, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->fieldName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Object;)Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->clazz:Ljava/lang/Class;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->fieldName:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->copy(Ljava/lang/Class;Ljava/lang/String;)Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/Class;Ljava/lang/String;)Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;

    invoke-direct {v0, p1, p2}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;

    if-eqz v0, :cond_0

    check-cast p1, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;

    iget-object v0, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->clazz:Ljava/lang/Class;

    iget-object v1, p1, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->clazz:Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->fieldName:Ljava/lang/String;

    iget-object p1, p1, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->fieldName:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public final getFieldName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->clazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->fieldName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldCacheKey(clazz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fieldName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$FieldCacheKey;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
