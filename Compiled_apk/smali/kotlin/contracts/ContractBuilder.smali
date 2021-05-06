.class public interface abstract Lkotlin/contracts/ContractBuilder;
.super Ljava/lang/Object;
.source "ContractBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/contracts/ContractBuilder$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\'J\u0008\u0010\t\u001a\u00020\nH\'J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\'J\u0008\u0010\u000c\u001a\u00020\rH\'\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/contracts/ContractBuilder;",
        "",
        "callsInPlace",
        "Lkotlin/contracts/CallsInPlace;",
        "R",
        "lambda",
        "Lkotlin/Function;",
        "kind",
        "Lkotlin/contracts/InvocationKind;",
        "returns",
        "Lkotlin/contracts/Returns;",
        "value",
        "returnsNotNull",
        "Lkotlin/contracts/ReturnsNotNull;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# virtual methods
.method public abstract callsInPlace(Lkotlin/Function;Lkotlin/contracts/InvocationKind;)Lkotlin/contracts/CallsInPlace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/Function<",
            "+TR;>;",
            "Lkotlin/contracts/InvocationKind;",
            ")",
            "Lkotlin/contracts/CallsInPlace;"
        }
    .end annotation
.end method

.method public abstract returns()Lkotlin/contracts/Returns;
.end method

.method public abstract returns(Ljava/lang/Object;)Lkotlin/contracts/Returns;
.end method

.method public abstract returnsNotNull()Lkotlin/contracts/ReturnsNotNull;
.end method
