.class public interface abstract Lorg/apache/commons/io/monitor/FileAlterationListener;
.super Ljava/lang/Object;
.source "FileAlterationListener.java"


# virtual methods
.method public abstract onDirectoryChange(Ljava/io/File;)V
.end method

.method public abstract onDirectoryCreate(Ljava/io/File;)V
.end method

.method public abstract onDirectoryDelete(Ljava/io/File;)V
.end method

.method public abstract onFileChange(Ljava/io/File;)V
.end method

.method public abstract onFileCreate(Ljava/io/File;)V
.end method

.method public abstract onFileDelete(Ljava/io/File;)V
.end method

.method public abstract onStart(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
.end method

.method public abstract onStop(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
.end method
