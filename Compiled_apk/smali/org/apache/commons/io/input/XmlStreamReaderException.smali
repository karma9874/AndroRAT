.class public Lorg/apache/commons/io/input/XmlStreamReaderException;
.super Ljava/io/IOException;
.source "XmlStreamReaderException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bomEncoding:Ljava/lang/String;

.field private final contentTypeEncoding:Ljava/lang/String;

.field private final contentTypeMime:Ljava/lang/String;

.field private final xmlEncoding:Ljava/lang/String;

.field private final xmlGuessEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "bomEnc"    # Ljava/lang/String;
    .param p3, "xmlGuessEnc"    # Ljava/lang/String;
    .param p4, "xmlEnc"    # Ljava/lang/String;

    .line 62
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ctMime"    # Ljava/lang/String;
    .param p3, "ctEnc"    # Ljava/lang/String;
    .param p4, "bomEnc"    # Ljava/lang/String;
    .param p5, "xmlGuessEnc"    # Ljava/lang/String;
    .param p6, "xmlEnc"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 81
    iput-object p2, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->contentTypeMime:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->contentTypeEncoding:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->bomEncoding:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->xmlGuessEncoding:Ljava/lang/String;

    .line 85
    iput-object p6, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->xmlEncoding:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public getBomEncoding()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->bomEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeEncoding()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->contentTypeEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeMime()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->contentTypeMime:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->xmlEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlGuessEncoding()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->xmlGuessEncoding:Ljava/lang/String;

    return-object v0
.end method
