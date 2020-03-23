.class public Lorg/apache/commons/io/input/TailerListenerAdapter;
.super Ljava/lang/Object;
.source "TailerListenerAdapter.java"

# interfaces
.implements Lorg/apache/commons/io/input/TailerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileNotFound()V
    .locals 0

    .line 39
    return-void
.end method

.method public fileRotated()V
    .locals 0

    .line 48
    return-void
.end method

.method public handle(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 62
    return-void
.end method

.method public handle(Ljava/lang/String;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/String;

    .line 55
    return-void
.end method

.method public init(Lorg/apache/commons/io/input/Tailer;)V
    .locals 0
    .param p1, "tailer"    # Lorg/apache/commons/io/input/Tailer;

    .line 33
    return-void
.end method
