.class public final Leu/bolt/screenshotty/ScreenshotManagerBuilder;
.super Ljava/lang/Object;
.source "ScreenshotManagerBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/bolt/screenshotty/ScreenshotManagerBuilder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenshotManagerBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenshotManagerBuilder.kt\neu/bolt/screenshotty/ScreenshotManagerBuilder\n*L\n1#1,28:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Leu/bolt/screenshotty/ScreenshotManagerBuilder;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "fallbackStrategies",
        "Ljava/util/ArrayList;",
        "Leu/bolt/screenshotty/FallbackStrategy;",
        "Lkotlin/collections/ArrayList;",
        "permissionRequestCode",
        "",
        "addFallbackStrategy",
        "strategy",
        "build",
        "Leu/bolt/screenshotty/ScreenshotManager;",
        "withPermissionRequestCode",
        "code",
        "Companion",
        "screenshotty-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Leu/bolt/screenshotty/ScreenshotManagerBuilder$Companion;

.field private static final DEFAULT_REQUEST_CODE:I = 0x378


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final fallbackStrategies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Leu/bolt/screenshotty/FallbackStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private permissionRequestCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Leu/bolt/screenshotty/ScreenshotManagerBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leu/bolt/screenshotty/ScreenshotManagerBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Leu/bolt/screenshotty/ScreenshotManagerBuilder;->Companion:Leu/bolt/screenshotty/ScreenshotManagerBuilder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu/bolt/screenshotty/ScreenshotManagerBuilder;->activity:Landroid/app/Activity;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/bolt/screenshotty/ScreenshotManagerBuilder;->fallbackStrategies:Ljava/util/ArrayList;

    .line 9
    const/16 v0, 0x378

    iput v0, p0, Leu/bolt/screenshotty/ScreenshotManagerBuilder;->permissionRequestCode:I

    return-void
.end method


# virtual methods
.method public final addFallbackStrategy(Leu/bolt/screenshotty/FallbackStrategy;)Leu/bolt/screenshotty/ScreenshotManagerBuilder;
    .locals 3
    .param p1, "strategy"    # Leu/bolt/screenshotty/FallbackStrategy;

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    move-object v0, p0

    check-cast v0, Leu/bolt/screenshotty/ScreenshotManagerBuilder;

    .local v0, "$this$apply":Leu/bolt/screenshotty/ScreenshotManagerBuilder;
    const/4 v1, 0x0

    .line 12
    .local v1, "$i$a$-apply-ScreenshotManagerBuilder$addFallbackStrategy$1":I
    iget-object v2, v0, Leu/bolt/screenshotty/ScreenshotManagerBuilder;->fallbackStrategies:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .end local v0    # "$this$apply":Leu/bolt/screenshotty/ScreenshotManagerBuilder;
    .end local v1    # "$i$a$-apply-ScreenshotManagerBuilder$addFallbackStrategy$1":I
    nop

    .line 11
    move-object v0, p0

    check-cast v0, Leu/bolt/screenshotty/ScreenshotManagerBuilder;

    .line 13
    return-object v0
.end method

.method public final build()Leu/bolt/screenshotty/ScreenshotManager;
    .locals 4

    .line 19
    new-instance v0, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;

    .line 20
    iget-object v1, p0, Leu/bolt/screenshotty/ScreenshotManagerBuilder;->activity:Landroid/app/Activity;

    .line 21
    iget-object v2, p0, Leu/bolt/screenshotty/ScreenshotManagerBuilder;->fallbackStrategies:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    .line 22
    iget v3, p0, Leu/bolt/screenshotty/ScreenshotManagerBuilder;->permissionRequestCode:I

    .line 19
    invoke-direct {v0, v1, v2, v3}, Leu/bolt/screenshotty/internal/ScreenshotManagerImpl;-><init>(Landroid/app/Activity;Ljava/util/List;I)V

    check-cast v0, Leu/bolt/screenshotty/ScreenshotManager;

    .line 23
    return-object v0
.end method

.method public final withPermissionRequestCode(I)Leu/bolt/screenshotty/ScreenshotManagerBuilder;
    .locals 2
    .param p1, "code"    # I

    .line 15
    move-object v0, p0

    check-cast v0, Leu/bolt/screenshotty/ScreenshotManagerBuilder;

    .local v0, "$this$apply":Leu/bolt/screenshotty/ScreenshotManagerBuilder;
    const/4 v1, 0x0

    .line 16
    .local v1, "$i$a$-apply-ScreenshotManagerBuilder$withPermissionRequestCode$1":I
    iput p1, v0, Leu/bolt/screenshotty/ScreenshotManagerBuilder;->permissionRequestCode:I

    .line 17
    .end local v0    # "$this$apply":Leu/bolt/screenshotty/ScreenshotManagerBuilder;
    .end local v1    # "$i$a$-apply-ScreenshotManagerBuilder$withPermissionRequestCode$1":I
    nop

    .line 15
    move-object v0, p0

    check-cast v0, Leu/bolt/screenshotty/ScreenshotManagerBuilder;

    .line 17
    return-object v0
.end method
