.class final Landroidx/core/content/res/GradientColorInflaterCompat;
.super Ljava/lang/Object;
.source "GradientColorInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    }
.end annotation


# static fields
.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private static checkColors(Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;IIZI)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    .locals 1
    .param p0, "colorItems"    # Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    .param p1, "startColor"    # I
    .param p2, "endColor"    # I
    .param p3, "hasCenterColor"    # Z
    .param p4, "centerColor"    # I

    .line 192
    if-eqz p0, :cond_0

    .line 193
    return-object p0

    .line 194
    :cond_0
    if-eqz p3, :cond_1

    .line 195
    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    invoke-direct {v0, p1, p4, p2}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(III)V

    return-object v0

    .line 197
    :cond_1
    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    invoke-direct {v0, p1, p2}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(II)V

    return-object v0
.end method

.method static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 74
    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    if-ne v2, v3, :cond_1

    .line 83
    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/GradientColorInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;

    move-result-object v1

    return-object v1

    .line 80
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .locals 31
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 90
    move-object/from16 v0, p1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "name":Ljava/lang/String;
    const-string v2, "gradient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    sget-object v2, Landroidx/core/R$styleable;->GradientColor:[I

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-static {v3, v5, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 98
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v6, Landroidx/core/R$styleable;->GradientColor_android_startX:I

    const/4 v7, 0x0

    const-string v8, "startX"

    invoke-static {v2, v0, v8, v6, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v6

    .line 100
    .local v6, "startX":F
    sget v8, Landroidx/core/R$styleable;->GradientColor_android_startY:I

    const-string v9, "startY"

    invoke-static {v2, v0, v9, v8, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v8

    .line 102
    .local v8, "startY":F
    sget v9, Landroidx/core/R$styleable;->GradientColor_android_endX:I

    const-string v10, "endX"

    invoke-static {v2, v0, v10, v9, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v17

    .line 104
    .local v17, "endX":F
    sget v9, Landroidx/core/R$styleable;->GradientColor_android_endY:I

    const-string v10, "endY"

    invoke-static {v2, v0, v10, v9, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v18

    .line 106
    .local v18, "endY":F
    sget v9, Landroidx/core/R$styleable;->GradientColor_android_centerX:I

    const-string v10, "centerX"

    invoke-static {v2, v0, v10, v9, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v15

    .line 108
    .local v15, "centerX":F
    sget v9, Landroidx/core/R$styleable;->GradientColor_android_centerY:I

    const-string v10, "centerY"

    invoke-static {v2, v0, v10, v9, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v14

    .line 110
    .local v14, "centerY":F
    sget v9, Landroidx/core/R$styleable;->GradientColor_android_type:I

    const/4 v10, 0x0

    const-string v11, "type"

    invoke-static {v2, v0, v11, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v13

    .line 112
    .local v13, "type":I
    sget v9, Landroidx/core/R$styleable;->GradientColor_android_startColor:I

    const-string v11, "startColor"

    invoke-static {v2, v0, v11, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    .line 114
    .local v12, "startColor":I
    const-string v9, "centerColor"

    invoke-static {v0, v9}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    .line 115
    .local v11, "hasCenterColor":Z
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_centerColor:I

    invoke-static {v2, v0, v9, v7, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v7

    .line 117
    .local v7, "centerColor":I
    sget v9, Landroidx/core/R$styleable;->GradientColor_android_endColor:I

    const-string v3, "endColor"

    invoke-static {v2, v0, v3, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 119
    .local v3, "endColor":I
    sget v9, Landroidx/core/R$styleable;->GradientColor_android_tileMode:I

    const-string v4, "tileMode"

    invoke-static {v2, v0, v4, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    .line 121
    .local v4, "tileMode":I
    sget v9, Landroidx/core/R$styleable;->GradientColor_android_gradientRadius:I

    const-string v10, "gradientRadius"

    const/4 v5, 0x0

    invoke-static {v2, v0, v10, v9, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v26

    .line 123
    .local v26, "gradientRadius":F
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    invoke-static/range {p0 .. p3}, Landroidx/core/content/res/GradientColorInflaterCompat;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    move-result-object v5

    .line 126
    .local v5, "colorStops":Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    invoke-static {v5, v12, v3, v11, v7}, Landroidx/core/content/res/GradientColorInflaterCompat;->checkColors(Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;IIZI)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    move-result-object v5

    .line 128
    const/4 v9, 0x1

    if-eq v13, v9, :cond_1

    const/4 v9, 0x2

    if-eq v13, v9, :cond_0

    .line 141
    new-instance v19, Landroid/graphics/LinearGradient;

    iget-object v10, v5, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    iget-object v9, v5, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 142
    invoke-static {v4}, Landroidx/core/content/res/GradientColorInflaterCompat;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v16

    move-object/from16 v20, v9

    move-object/from16 v9, v19

    move-object/from16 v21, v10

    move v10, v6

    move/from16 v27, v11

    .end local v11    # "hasCenterColor":Z
    .local v27, "hasCenterColor":Z
    move v11, v8

    move/from16 v28, v12

    .end local v12    # "startColor":I
    .local v28, "startColor":I
    move/from16 v12, v17

    move/from16 v29, v13

    .end local v13    # "type":I
    .local v29, "type":I
    move/from16 v13, v18

    move v0, v14

    .end local v14    # "centerY":F
    .local v0, "centerY":F
    move-object/from16 v14, v21

    move-object/from16 v30, v2

    move v2, v15

    .end local v15    # "centerX":F
    .local v2, "centerX":F
    .local v30, "a":Landroid/content/res/TypedArray;
    move-object/from16 v15, v20

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v19

    .line 137
    .end local v0    # "centerY":F
    .end local v27    # "hasCenterColor":Z
    .end local v28    # "startColor":I
    .end local v29    # "type":I
    .end local v30    # "a":Landroid/content/res/TypedArray;
    .local v2, "a":Landroid/content/res/TypedArray;
    .restart local v11    # "hasCenterColor":Z
    .restart local v12    # "startColor":I
    .restart local v13    # "type":I
    .restart local v14    # "centerY":F
    .restart local v15    # "centerX":F
    :cond_0
    move-object/from16 v30, v2

    move/from16 v27, v11

    move v0, v14

    move v2, v15

    .end local v11    # "hasCenterColor":Z
    .end local v14    # "centerY":F
    .end local v15    # "centerX":F
    .restart local v0    # "centerY":F
    .local v2, "centerX":F
    .restart local v27    # "hasCenterColor":Z
    .restart local v30    # "a":Landroid/content/res/TypedArray;
    new-instance v9, Landroid/graphics/SweepGradient;

    iget-object v10, v5, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    iget-object v11, v5, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    invoke-direct {v9, v2, v0, v10, v11}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    return-object v9

    .line 130
    .end local v0    # "centerY":F
    .end local v27    # "hasCenterColor":Z
    .end local v30    # "a":Landroid/content/res/TypedArray;
    .local v2, "a":Landroid/content/res/TypedArray;
    .restart local v11    # "hasCenterColor":Z
    .restart local v14    # "centerY":F
    .restart local v15    # "centerX":F
    :cond_1
    move-object/from16 v30, v2

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    move v0, v14

    move v2, v15

    .end local v11    # "hasCenterColor":Z
    .end local v12    # "startColor":I
    .end local v13    # "type":I
    .end local v14    # "centerY":F
    .end local v15    # "centerX":F
    .restart local v0    # "centerY":F
    .local v2, "centerX":F
    .restart local v27    # "hasCenterColor":Z
    .restart local v28    # "startColor":I
    .restart local v29    # "type":I
    .restart local v30    # "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    cmpg-float v9, v26, v9

    if-lez v9, :cond_2

    .line 134
    new-instance v9, Landroid/graphics/RadialGradient;

    iget-object v10, v5, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    iget-object v11, v5, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 135
    invoke-static {v4}, Landroidx/core/content/res/GradientColorInflaterCompat;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v25

    move-object/from16 v19, v9

    move/from16 v20, v2

    move/from16 v21, v0

    move/from16 v22, v26

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    invoke-direct/range {v19 .. v25}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v9

    .line 131
    :cond_2
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v10, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 92
    .end local v0    # "centerY":F
    .end local v2    # "centerX":F
    .end local v3    # "endColor":I
    .end local v4    # "tileMode":I
    .end local v5    # "colorStops":Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    .end local v6    # "startX":F
    .end local v7    # "centerColor":I
    .end local v8    # "startY":F
    .end local v17    # "endX":F
    .end local v18    # "endY":F
    .end local v26    # "gradientRadius":F
    .end local v27    # "hasCenterColor":Z
    .end local v28    # "startColor":I
    .end local v29    # "type":I
    .end local v30    # "a":Landroid/content/res/TypedArray;
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": invalid gradient color tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 154
    .local v0, "innerDepth":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v2, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v4

    .line 157
    .local v3, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    if-eq v4, v1, :cond_5

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v6, v4

    .local v6, "depth":I
    if-ge v4, v0, :cond_1

    const/4 v4, 0x3

    if-eq v5, v4, :cond_5

    .line 160
    :cond_1
    const/4 v4, 0x2

    if-eq v5, v4, :cond_2

    .line 161
    goto :goto_0

    .line 163
    :cond_2
    if-gt v6, v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "item"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 164
    goto :goto_0

    .line 167
    :cond_3
    sget-object v4, Landroidx/core/R$styleable;->GradientColorItem:[I

    invoke-static {p0, p3, p2, v4}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 169
    .local v4, "a":Landroid/content/res/TypedArray;
    sget v7, Landroidx/core/R$styleable;->GradientColorItem_android_color:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    .line 170
    .local v7, "hasColor":Z
    sget v8, Landroidx/core/R$styleable;->GradientColorItem_android_offset:I

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    .line 171
    .local v8, "hasOffset":Z
    if-eqz v7, :cond_4

    if-eqz v8, :cond_4

    .line 178
    sget v9, Landroidx/core/R$styleable;->GradientColorItem_android_color:I

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 179
    .local v9, "color":I
    sget v10, Landroidx/core/R$styleable;->GradientColorItem_android_offset:I

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 180
    .local v10, "offset":F
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "depth":I
    .end local v7    # "hasColor":Z
    .end local v8    # "hasOffset":Z
    .end local v9    # "color":I
    .end local v10    # "offset":F
    goto :goto_0

    .line 172
    .restart local v4    # "a":Landroid/content/res/TypedArray;
    .restart local v6    # "depth":I
    .restart local v7    # "hasColor":Z
    .restart local v8    # "hasOffset":Z
    :cond_4
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": <item> tag requires a \'color\' attribute and a \'offset\' "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "attribute!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "depth":I
    .end local v7    # "hasColor":Z
    .end local v8    # "hasOffset":Z
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    new-instance v1, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    invoke-direct {v1, v3, v2}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1

    .line 186
    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1
    .param p0, "tileMode"    # I

    .line 202
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 209
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 206
    :cond_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 204
    :cond_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method
