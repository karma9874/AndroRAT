.class public Lorg/apache/commons/io/input/Tailer;
.super Ljava/lang/Object;
.source "Tailer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final delay:J

.field private final end:Z

.field private final file:Ljava/io/File;

.field private final listener:Lorg/apache/commons/io/input/TailerListener;

.field private volatile run:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;

    .line 140
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delay"    # J

    .line 150
    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delay"    # J
    .param p5, "end"    # Z

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 162
    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    .line 163
    iput-wide p3, p0, Lorg/apache/commons/io/input/Tailer;->delay:J

    .line 164
    iput-boolean p5, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    .line 167
    iput-object p2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 168
    invoke-interface {p2, p0}, Lorg/apache/commons/io/input/TailerListener;->init(Lorg/apache/commons/io/input/Tailer;)V

    .line 169
    return-void
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;

    .line 209
    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)Lorg/apache/commons/io/input/Tailer;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delay"    # J

    .line 197
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delay"    # J
    .param p4, "end"    # Z

    .line 181
    new-instance v6, Lorg/apache/commons/io/input/Tailer;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V

    .line 182
    .local v0, "tailer":Lorg/apache/commons/io/input/Tailer;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 183
    .local v1, "thread":Ljava/lang/Thread;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 184
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 185
    return-object v0
.end method

.method private readLines(Ljava/io/RandomAccessFile;)J
    .locals 3
    .param p1, "reader"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v1, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method public getDelay()J
    .locals 2

    .line 227
    iget-wide v0, p0, Lorg/apache/commons/io/input/Tailer;->delay:J

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    return-object v0
.end method

.method public run()V
    .locals 11

    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "reader":Ljava/io/RandomAccessFile;
    const-wide/16 v1, 0x0

    .line 237
    .local v1, "last":J
    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 239
    .local v5, "position":J
    :goto_0
    :try_start_0
    iget-boolean v7, p0, Lorg/apache/commons/io/input/Tailer;->run:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "r"

    if-eqz v7, :cond_2

    if-nez v0, :cond_2

    .line 241
    :try_start_1
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-direct {v7, v9, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v7

    .line 244
    goto :goto_1

    .line 242
    :catch_0
    move-exception v7

    .line 243
    .local v7, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v8}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    if-nez v0, :cond_0

    .line 248
    :try_start_3
    iget-wide v7, p0, Lorg/apache/commons/io/input/Tailer;->delay:J

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 249
    :catch_1
    move-exception v7

    .line 250
    :goto_2
    goto :goto_0

    .line 253
    :cond_0
    :try_start_4
    iget-boolean v7, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    goto :goto_3

    :cond_1
    move-wide v7, v3

    :goto_3
    move-wide v5, v7

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-wide v1, v7

    .line 255
    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 260
    :cond_2
    :goto_4
    iget-boolean v3, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v3, :cond_6

    .line 263
    iget-object v3, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 265
    .local v3, "length":J
    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    .line 268
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v7}, Lorg/apache/commons/io/input/TailerListener;->fileRotated()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 273
    move-object v7, v0

    .line 274
    .local v7, "save":Ljava/io/RandomAccessFile;
    :try_start_5
    new-instance v9, Ljava/io/RandomAccessFile;

    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-direct {v9, v10, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v9

    .line 275
    const-wide/16 v5, 0x0

    .line 277
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 281
    .end local v7    # "save":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 278
    :catch_2
    move-exception v7

    .line 280
    .local v7, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v9}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V

    .line 282
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    goto :goto_4

    .line 288
    :cond_3
    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-wide v1, v9

    .line 292
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v9

    move-wide v5, v9

    goto :goto_5

    .line 294
    :cond_4
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-static {v7, v1, v2}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 300
    const-wide/16 v5, 0x0

    .line 301
    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-wide v1, v9

    .line 305
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-wide v5, v9

    .line 309
    :cond_5
    :goto_5
    :try_start_7
    iget-wide v9, p0, Lorg/apache/commons/io/input/Tailer;->delay:J

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 311
    goto :goto_6

    .line 310
    :catch_3
    move-exception v7

    .line 312
    .end local v3    # "length":J
    :goto_6
    goto :goto_4

    .line 260
    .end local v1    # "last":J
    .end local v5    # "position":J
    :cond_6
    goto :goto_7

    .line 319
    :catchall_0
    move-exception v1

    goto :goto_8

    .line 314
    :catch_4
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v2, v1}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 319
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 320
    nop

    .line 321
    return-void

    .line 319
    :goto_8
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_a

    :goto_9
    throw v1

    :goto_a
    goto :goto_9
.end method

.method public stop()V
    .locals 1

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 328
    return-void
.end method
