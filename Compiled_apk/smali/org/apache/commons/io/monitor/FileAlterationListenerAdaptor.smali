.class public Lorg/apache/commons/io/monitor/FileAlterationListenerAdaptor;
.super Ljava/lang/Object;
.source "FileAlterationListenerAdaptor.java"

# interfaces
.implements Lorg/apache/commons/io/monitor/FileAlterationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectoryChange(Ljava/io/File;)V
    .locals 0
    .param p1, "directory"    # Ljava/io/File;

    .line 52
    return-void
.end method

.method public onDirectoryCreate(Ljava/io/File;)V
    .locals 0
    .param p1, "directory"    # Ljava/io/File;

    .line 44
    return-void
.end method

.method public onDirectoryDelete(Ljava/io/File;)V
    .locals 0
    .param p1, "directory"    # Ljava/io/File;

    .line 60
    return-void
.end method

.method public onFileChange(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .line 76
    return-void
.end method

.method public onFileCreate(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .line 68
    return-void
.end method

.method public onFileDelete(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .line 84
    return-void
.end method

.method public onStart(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 0
    .param p1, "observer"    # Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 36
    return-void
.end method

.method public onStop(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 0
    .param p1, "observer"    # Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 92
    return-void
.end method
