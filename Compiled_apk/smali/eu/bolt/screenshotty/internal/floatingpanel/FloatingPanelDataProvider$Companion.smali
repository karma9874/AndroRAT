.class public final Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$Companion;
.super Ljava/lang/Object;
.source "FloatingPanelDataProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$Companion;",
        "",
        "()V",
        "INSTANCE",
        "Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider;",
        "getInstance",
        "screenshotty-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 156
    invoke-direct {p0}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 160
    invoke-static {}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider;->access$getINSTANCE$cp()Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider;

    move-result-object v0

    return-object v0
.end method
