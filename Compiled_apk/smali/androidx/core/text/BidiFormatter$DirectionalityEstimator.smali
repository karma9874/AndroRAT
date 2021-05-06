.class Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 584
    const/16 v0, 0x700

    new-array v1, v0, [B

    sput-object v1, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 585
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 586
    sget-object v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    aput-byte v3, v2, v1

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isHtml"    # Z

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    .line 630
    iput-boolean p2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 631
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 632
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .locals 1
    .param p0, "c"    # C

    .line 803
    const/16 v0, 0x700

    if-ge p0, v0, :cond_0

    sget-object v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    :goto_0
    return v0
.end method

.method private skipEntityBackward()B
    .locals 4

    .line 944
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 945
    .local v0, "initialCharIndex":I
    :cond_0
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v2, 0x3b

    if-lez v1, :cond_2

    .line 946
    iget-object v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 947
    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v1, v3, :cond_1

    .line 948
    const/16 v1, 0xc

    return v1

    .line 950
    :cond_1
    if-ne v1, v2, :cond_0

    .line 954
    :cond_2
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 955
    iput-char v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 956
    const/16 v1, 0xd

    return v1
.end method

.method private skipEntityForward()B
    .locals 3

    .line 929
    :goto_0
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 930
    :cond_0
    const/16 v0, 0xc

    return v0
.end method

.method private skipTagBackward()B
    .locals 4

    .line 901
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 902
    .local v0, "initialCharIndex":I
    :cond_0
    :goto_0
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v2, 0x3e

    if-lez v1, :cond_5

    .line 903
    iget-object v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 904
    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_1

    .line 906
    const/16 v1, 0xc

    return v1

    .line 908
    :cond_1
    if-ne v1, v2, :cond_2

    .line 909
    goto :goto_2

    .line 911
    :cond_2
    const/16 v2, 0x22

    if-eq v1, v2, :cond_3

    const/16 v2, 0x27

    if-ne v1, v2, :cond_0

    .line 913
    :cond_3
    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 914
    .local v1, "quote":C
    :goto_1
    iget v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_4

    iget-object v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_4

    goto :goto_1

    .line 915
    .end local v1    # "quote":C
    :cond_4
    goto :goto_0

    .line 918
    :cond_5
    :goto_2
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 919
    iput-char v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 920
    const/16 v1, 0xd

    return v1
.end method

.method private skipTagForward()B
    .locals 5

    .line 872
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 873
    .local v0, "initialCharIndex":I
    :cond_0
    :goto_0
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v1, v2, :cond_4

    .line 874
    iget-object v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 875
    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    .line 877
    const/16 v1, 0xc

    return v1

    .line 879
    :cond_1
    const/16 v2, 0x22

    if-eq v1, v2, :cond_2

    const/16 v2, 0x27

    if-ne v1, v2, :cond_0

    .line 881
    :cond_2
    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 882
    .local v1, "quote":C
    :goto_1
    iget v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_3

    goto :goto_1

    .line 883
    .end local v1    # "quote":C
    :cond_3
    goto :goto_0

    .line 886
    :cond_4
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 887
    const/16 v1, 0x3c

    iput-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 888
    const/16 v1, 0xd

    return v1
.end method


# virtual methods
.method dirTypeBackward()B
    .locals 3

    .line 846
    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 847
    iget-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 849
    .local v0, "codePoint":I
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 850
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    return v1

    .line 852
    .end local v0    # "codePoint":I
    :cond_0
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 853
    iget-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    .line 854
    .local v0, "dirType":B
    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_2

    .line 856
    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    .line 857
    invoke-direct {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v0

    goto :goto_0

    .line 858
    :cond_1
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_2

    .line 859
    invoke-direct {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v0

    .line 862
    :cond_2
    :goto_0
    return v0
.end method

.method dirTypeForward()B
    .locals 3

    .line 816
    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 817
    iget-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 819
    .local v0, "codePoint":I
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 820
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    return v1

    .line 822
    .end local v0    # "codePoint":I
    :cond_0
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 823
    iget-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    .line 824
    .local v0, "dirType":B
    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_2

    .line 826
    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    .line 827
    invoke-direct {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v0

    goto :goto_0

    .line 828
    :cond_1
    const/16 v2, 0x26

    if-ne v1, v2, :cond_2

    .line 829
    invoke-direct {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v0

    .line 832
    :cond_2
    :goto_0
    return v0
.end method

.method getEntryDir()I
    .locals 8

    .line 646
    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 647
    const/4 v1, 0x0

    .line 648
    .local v1, "embeddingLevel":I
    const/4 v2, 0x0

    .line 649
    .local v2, "embeddingLevelDir":I
    const/4 v3, 0x0

    .line 650
    .local v3, "firstNonEmptyEmbeddingLevel":I
    :goto_0
    iget v4, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v5, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ge v4, v5, :cond_5

    if-nez v3, :cond_5

    .line 651
    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v4

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    .line 685
    move v3, v1

    .line 686
    goto :goto_0

    .line 663
    :pswitch_0
    add-int/lit8 v1, v1, -0x1

    .line 667
    const/4 v2, 0x0

    .line 668
    goto :goto_0

    .line 659
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    .line 660
    const/4 v2, 0x1

    .line 661
    goto :goto_0

    .line 654
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 655
    const/4 v2, -0x1

    .line 656
    goto :goto_0

    .line 670
    :cond_0
    goto :goto_0

    .line 679
    :cond_1
    if-nez v1, :cond_2

    .line 680
    return v7

    .line 682
    :cond_2
    move v3, v1

    .line 683
    goto :goto_0

    .line 672
    :cond_3
    if-nez v1, :cond_4

    .line 673
    return v6

    .line 675
    :cond_4
    move v3, v1

    .line 676
    goto :goto_0

    .line 692
    :cond_5
    if-nez v3, :cond_6

    .line 695
    return v0

    .line 699
    :cond_6
    if-eqz v2, :cond_7

    .line 701
    return v2

    .line 706
    :cond_7
    :goto_1
    iget v4, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v4, :cond_a

    .line 707
    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_2

    .line 723
    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 717
    :pswitch_4
    if-ne v3, v1, :cond_8

    .line 718
    return v7

    .line 720
    :cond_8
    add-int/lit8 v1, v1, -0x1

    .line 721
    goto :goto_2

    .line 710
    :pswitch_5
    if-ne v3, v1, :cond_9

    .line 711
    return v6

    .line 713
    :cond_9
    add-int/lit8 v1, v1, -0x1

    .line 714
    nop

    .line 724
    :goto_2
    goto :goto_1

    .line 728
    :cond_a
    return v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method getExitDir()I
    .locals 6

    .line 744
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 747
    .local v1, "lastNonEmptyEmbeddingLevel":I
    :cond_0
    :goto_0
    iget v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_8

    .line 748
    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_6

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    packed-switch v2, :pswitch_data_0

    .line 786
    if-nez v1, :cond_0

    .line 787
    move v1, v0

    goto :goto_0

    .line 781
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 782
    goto :goto_0

    .line 775
    :pswitch_1
    if-ne v1, v0, :cond_1

    .line 776
    return v4

    .line 778
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 779
    goto :goto_0

    .line 759
    :pswitch_2
    if-ne v1, v0, :cond_2

    .line 760
    return v3

    .line 762
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 763
    goto :goto_0

    .line 784
    :cond_3
    goto :goto_0

    .line 766
    :cond_4
    if-nez v0, :cond_5

    .line 767
    return v4

    .line 769
    :cond_5
    if-nez v1, :cond_0

    .line 770
    move v1, v0

    goto :goto_0

    .line 750
    :cond_6
    if-nez v0, :cond_7

    .line 751
    return v3

    .line 753
    :cond_7
    if-nez v1, :cond_0

    .line 754
    move v1, v0

    goto :goto_0

    .line 792
    :cond_8
    const/4 v2, 0x0

    return v2

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
