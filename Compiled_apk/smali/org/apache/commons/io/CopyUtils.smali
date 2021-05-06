.class public Lorg/apache/commons/io/CopyUtils;
.super Ljava/lang/Object;
.source "CopyUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 198
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 199
    .local v1, "count":I
    const/4 v2, 0x0

    .line 200
    .local v2, "n":I
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v2, v4

    if-eq v3, v4, :cond_0

    .line 201
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 202
    add-int/2addr v1, v2

    goto :goto_0

    .line 204
    :cond_0
    return v1
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 5
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const/16 v0, 0x1000

    new-array v0, v0, [C

    .line 223
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .line 224
    .local v1, "count":I
    const/4 v2, 0x0

    .line 225
    .local v2, "n":I
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v4

    move v2, v4

    if-eq v3, v4, :cond_0

    .line 226
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 227
    add-int/2addr v1, v2

    goto :goto_0

    .line 229
    :cond_0
    return v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 249
    .local v0, "in":Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 250
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 268
    .local v0, "in":Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 269
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 288
    .local v0, "out":Ljava/io/OutputStreamWriter;
    invoke-static {p0, v0}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 291
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 292
    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "in":Ljava/io/StringReader;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 312
    .local v1, "out":Ljava/io/OutputStreamWriter;
    invoke-static {v0, v1}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 315
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 316
    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public static copy([BLjava/io/OutputStream;)V
    .locals 0
    .param p0, "input"    # [B
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 140
    return-void
.end method

.method public static copy([BLjava/io/Writer;)V
    .locals 1
    .param p0, "input"    # [B
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 157
    .local v0, "in":Ljava/io/ByteArrayInputStream;
    invoke-static {v0, p1}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 158
    return-void
.end method

.method public static copy([BLjava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p0, "input"    # [B
    .param p1, "output"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 177
    .local v0, "in":Ljava/io/ByteArrayInputStream;
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 178
    return-void
.end method
