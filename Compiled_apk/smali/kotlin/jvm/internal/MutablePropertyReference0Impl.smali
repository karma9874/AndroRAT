.class public Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "MutablePropertyReference0Impl.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final owner:Lkotlin/reflect/KDeclarationContainer;

.field private final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lkotlin/reflect/KDeclarationContainer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>()V

    .line 16
    iput-object p1, p0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;->owner:Lkotlin/reflect/KDeclarationContainer;

    .line 17
    iput-object p2, p0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;->name:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;->signature:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 38
    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;->getGetter()Lkotlin/reflect/KProperty0$Getter;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lkotlin/reflect/KProperty0$Getter;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    .line 23
    iget-object v0, p0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;->owner:Lkotlin/reflect/KDeclarationContainer;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;->getSetter()Lkotlin/reflect/KMutableProperty0$Setter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lkotlin/reflect/KMutableProperty0$Setter;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method
