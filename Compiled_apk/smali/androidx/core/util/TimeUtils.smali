.class public final Landroidx/core/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 41
    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 1
    .param p0, "amt"    # I
    .param p1, "suffix"    # I
    .param p2, "always"    # Z
    .param p3, "zeropad"    # I

    .line 44
    const/16 v0, 0x63

    if-gt p0, v0, :cond_5

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    if-lt p3, v0, :cond_0

    goto :goto_2

    .line 47
    :cond_0
    const/16 v0, 0x9

    if-gt p0, v0, :cond_4

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-lt p3, v0, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    if-nez p2, :cond_3

    if-lez p0, :cond_2

    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 51
    :cond_3
    :goto_0
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 48
    :cond_4
    :goto_1
    add-int/lit8 v0, p1, 0x2

    return v0

    .line 45
    :cond_5
    :goto_2
    add-int/lit8 v0, p1, 0x3

    return v0
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 3
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .line 178
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 179
    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    return-void

    .line 182
    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 183
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 1
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 172
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 173
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 5
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "fieldLen"    # I

    .line 163
    sget-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    invoke-static {p0, p1, p3}, Landroidx/core/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v1

    .line 165
    .local v1, "len":I
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    .end local v1    # "len":I
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4
    .param p0, "duration"    # J
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .line 154
    sget-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroidx/core/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v2

    .line 156
    .local v2, "len":I
    sget-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    invoke-virtual {p2, v3, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 157
    nop

    .end local v2    # "len":I
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .locals 27
    .param p0, "duration"    # J
    .param p2, "fieldLen"    # I

    .line 81
    move-wide/from16 v0, p0

    move/from16 v2, p2

    sget-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    array-length v3, v3

    if-ge v3, v2, :cond_0

    .line 82
    new-array v3, v2, [C

    sput-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    .line 85
    :cond_0
    sget-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    .line 87
    .local v3, "formatStr":[C
    const/16 v4, 0x20

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_2

    .line 88
    const/4 v5, 0x0

    .line 89
    .local v5, "pos":I
    add-int/lit8 v2, v2, -0x1

    .line 90
    .end local p2    # "fieldLen":I
    .local v2, "fieldLen":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 91
    aput-char v4, v3, v5

    goto :goto_0

    .line 93
    :cond_1
    const/16 v4, 0x30

    aput-char v4, v3, v5

    .line 94
    add-int/lit8 v4, v5, 0x1

    return v4

    .line 98
    .end local v2    # "fieldLen":I
    .end local v5    # "pos":I
    .restart local p2    # "fieldLen":I
    :cond_2
    cmp-long v7, v0, v5

    if-lez v7, :cond_3

    .line 99
    const/16 v5, 0x2b

    move v10, v5

    .local v5, "prefix":C
    goto :goto_1

    .line 101
    .end local v5    # "prefix":C
    :cond_3
    const/16 v5, 0x2d

    .line 102
    .restart local v5    # "prefix":C
    neg-long v0, v0

    move v10, v5

    .line 105
    .end local v5    # "prefix":C
    .end local p0    # "duration":J
    .local v0, "duration":J
    .local v10, "prefix":C
    :goto_1
    const-wide/16 v5, 0x3e8

    rem-long v7, v0, v5

    long-to-int v11, v7

    .line 106
    .local v11, "millis":I
    div-long v5, v0, v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 107
    .local v5, "seconds":I
    const/4 v6, 0x0

    .local v6, "days":I
    const/4 v7, 0x0

    .local v7, "hours":I
    const/4 v8, 0x0

    .line 109
    .local v8, "minutes":I
    const v9, 0x15180

    if-le v5, v9, :cond_4

    .line 110
    div-int v6, v5, v9

    .line 111
    mul-int v9, v9, v6

    sub-int/2addr v5, v9

    move v12, v6

    goto :goto_2

    .line 109
    :cond_4
    move v12, v6

    .line 113
    .end local v6    # "days":I
    .local v12, "days":I
    :goto_2
    const/16 v6, 0xe10

    if-le v5, v6, :cond_5

    .line 114
    div-int/lit16 v6, v5, 0xe10

    .line 115
    .end local v7    # "hours":I
    .local v6, "hours":I
    mul-int/lit16 v7, v6, 0xe10

    sub-int/2addr v5, v7

    move v13, v6

    goto :goto_3

    .line 113
    .end local v6    # "hours":I
    .restart local v7    # "hours":I
    :cond_5
    move v13, v7

    .line 117
    .end local v7    # "hours":I
    .local v13, "hours":I
    :goto_3
    const/16 v6, 0x3c

    if-le v5, v6, :cond_6

    .line 118
    div-int/lit8 v6, v5, 0x3c

    .line 119
    .end local v8    # "minutes":I
    .local v6, "minutes":I
    mul-int/lit8 v7, v6, 0x3c

    sub-int/2addr v5, v7

    move v15, v5

    move v14, v6

    goto :goto_4

    .line 117
    .end local v6    # "minutes":I
    .restart local v8    # "minutes":I
    :cond_6
    move v15, v5

    move v14, v8

    .line 122
    .end local v5    # "seconds":I
    .end local v8    # "minutes":I
    .local v14, "minutes":I
    .local v15, "seconds":I
    :goto_4
    const/4 v5, 0x0

    .line 124
    .local v5, "pos":I
    const/16 v16, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_b

    .line 125
    invoke-static {v12, v7, v8, v8}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v6

    .line 126
    .local v6, "myLen":I
    if-lez v6, :cond_7

    const/4 v8, 0x1

    :cond_7
    invoke-static {v13, v7, v8, v9}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v6, v8

    .line 127
    if-lez v6, :cond_8

    const/4 v8, 0x1

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    invoke-static {v14, v7, v8, v9}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v6, v8

    .line 128
    if-lez v6, :cond_9

    const/4 v8, 0x1

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    invoke-static {v15, v7, v8, v9}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v6, v8

    .line 129
    if-lez v6, :cond_a

    const/4 v8, 0x3

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    :goto_7
    invoke-static {v11, v9, v7, v8}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v8, v7

    add-int/2addr v6, v8

    .line 130
    :goto_8
    if-ge v6, v2, :cond_b

    .line 131
    aput-char v4, v3, v5

    .line 132
    add-int/lit8 v5, v5, 0x1

    .line 133
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 137
    .end local v6    # "myLen":I
    :cond_b
    aput-char v10, v3, v5

    .line 138
    add-int/lit8 v17, v5, 0x1

    .line 140
    .end local v5    # "pos":I
    .local v17, "pos":I
    move/from16 v8, v17

    .line 141
    .local v8, "start":I
    if-eqz v2, :cond_c

    const/4 v4, 0x1

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    :goto_9
    move/from16 v18, v4

    .line 142
    .local v18, "zeropad":Z
    const/16 v6, 0x64

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v4, v3

    move v5, v12

    const/16 v21, 0x1

    move/from16 v7, v17

    move/from16 v22, v8

    const/16 v23, 0x0

    .end local v8    # "start":I
    .local v22, "start":I
    move/from16 v8, v19

    const/16 v19, 0x2

    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    .line 143
    .end local v17    # "pos":I
    .local v9, "pos":I
    const/16 v6, 0x68

    move/from16 v8, v22

    .end local v22    # "start":I
    .restart local v8    # "start":I
    if-eq v9, v8, :cond_d

    const/16 v17, 0x1

    goto :goto_a

    :cond_d
    const/16 v17, 0x0

    :goto_a
    if-eqz v18, :cond_e

    const/16 v20, 0x2

    goto :goto_b

    :cond_e
    const/16 v20, 0x0

    :goto_b
    move-object v4, v3

    move v5, v13

    move v7, v9

    move/from16 v24, v8

    .end local v8    # "start":I
    .local v24, "start":I
    move/from16 v8, v17

    move/from16 v17, v9

    .end local v9    # "pos":I
    .restart local v17    # "pos":I
    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    .line 144
    .end local v17    # "pos":I
    .restart local v9    # "pos":I
    const/16 v6, 0x6d

    move/from16 v8, v24

    .end local v24    # "start":I
    .restart local v8    # "start":I
    if-eq v9, v8, :cond_f

    const/16 v17, 0x1

    goto :goto_c

    :cond_f
    const/16 v17, 0x0

    :goto_c
    if-eqz v18, :cond_10

    const/16 v20, 0x2

    goto :goto_d

    :cond_10
    const/16 v20, 0x0

    :goto_d
    move-object v4, v3

    move v5, v14

    move v7, v9

    move/from16 v25, v8

    .end local v8    # "start":I
    .local v25, "start":I
    move/from16 v8, v17

    move/from16 v17, v9

    .end local v9    # "pos":I
    .restart local v17    # "pos":I
    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    .line 145
    .end local v17    # "pos":I
    .restart local v9    # "pos":I
    const/16 v6, 0x73

    move/from16 v8, v25

    .end local v25    # "start":I
    .restart local v8    # "start":I
    if-eq v9, v8, :cond_11

    goto :goto_e

    :cond_11
    const/16 v21, 0x0

    :goto_e
    if-eqz v18, :cond_12

    goto :goto_f

    :cond_12
    const/16 v19, 0x0

    :goto_f
    move-object v4, v3

    move v5, v15

    move v7, v9

    move/from16 v26, v8

    .end local v8    # "start":I
    .local v26, "start":I
    move/from16 v8, v21

    move/from16 v17, v9

    .end local v9    # "pos":I
    .restart local v17    # "pos":I
    move/from16 v9, v19

    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    .line 146
    .end local v17    # "pos":I
    .restart local v9    # "pos":I
    const/16 v6, 0x6d

    const/4 v8, 0x1

    if-eqz v18, :cond_13

    move/from16 v7, v26

    .end local v26    # "start":I
    .local v7, "start":I
    if-eq v9, v7, :cond_14

    goto :goto_10

    .end local v7    # "start":I
    .restart local v26    # "start":I
    :cond_13
    move/from16 v7, v26

    .end local v26    # "start":I
    .restart local v7    # "start":I
    :cond_14
    const/16 v16, 0x0

    :goto_10
    move-object v4, v3

    move v5, v11

    move/from16 v17, v7

    .end local v7    # "start":I
    .local v17, "start":I
    move v7, v9

    move/from16 v19, v9

    .end local v9    # "pos":I
    .local v19, "pos":I
    move/from16 v9, v16

    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v4

    .line 147
    .end local v19    # "pos":I
    .local v4, "pos":I
    const/16 v5, 0x73

    aput-char v5, v3, v4

    .line 148
    add-int/lit8 v5, v4, 0x1

    return v5
.end method

.method private static printField([CICIZI)I
    .locals 3
    .param p0, "formatStr"    # [C
    .param p1, "amt"    # I
    .param p2, "suffix"    # C
    .param p3, "pos"    # I
    .param p4, "always"    # Z
    .param p5, "zeropad"    # I

    .line 58
    if-nez p4, :cond_0

    if-lez p1, :cond_7

    .line 59
    :cond_0
    move v0, p3

    .line 60
    .local v0, "startPos":I
    if-eqz p4, :cond_1

    const/4 v1, 0x3

    if-ge p5, v1, :cond_2

    :cond_1
    const/16 v1, 0x63

    if-le p1, v1, :cond_3

    .line 61
    :cond_2
    div-int/lit8 v1, p1, 0x64

    .line 62
    .local v1, "dig":I
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 63
    add-int/lit8 p3, p3, 0x1

    .line 64
    mul-int/lit8 v2, v1, 0x64

    sub-int/2addr p1, v2

    .line 66
    .end local v1    # "dig":I
    :cond_3
    if-eqz p4, :cond_4

    const/4 v1, 0x2

    if-ge p5, v1, :cond_5

    :cond_4
    const/16 v1, 0x9

    if-gt p1, v1, :cond_5

    if-eq v0, p3, :cond_6

    .line 67
    :cond_5
    div-int/lit8 v1, p1, 0xa

    .line 68
    .restart local v1    # "dig":I
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 69
    add-int/lit8 p3, p3, 0x1

    .line 70
    mul-int/lit8 v2, v1, 0xa

    sub-int/2addr p1, v2

    .line 72
    .end local v1    # "dig":I
    :cond_6
    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    aput-char v1, p0, p3

    .line 73
    add-int/lit8 p3, p3, 0x1

    .line 74
    aput-char p2, p0, p3

    .line 75
    add-int/lit8 p3, p3, 0x1

    .line 77
    .end local v0    # "startPos":I
    :cond_7
    return p3
.end method
