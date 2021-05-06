.class public Lorg/apache/commons/io/comparator/LastModifiedFileComparator;
.super Lorg/apache/commons/io/comparator/AbstractFileComparator;
.source "LastModifiedFileComparator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final LASTMODIFIED_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;

    invoke-direct {v0}, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;

    .line 54
    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .param p1, "file1"    # Ljava/io/File;
    .param p2, "file2"    # Ljava/io/File;

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 69
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 70
    const/4 v2, -0x1

    return v2

    .line 71
    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 72
    const/4 v2, 0x1

    return v2

    .line 74
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 48
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    move-object v1, p2

    check-cast v1, Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
