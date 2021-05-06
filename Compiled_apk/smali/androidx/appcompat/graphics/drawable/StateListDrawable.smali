.class Landroidx/appcompat/graphics/drawable/StateListDrawable;
.super Landroidx/appcompat/graphics/drawable/DrawableContainer;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StateListDrawable"


# instance fields
.field private mMutated:Z

.field private mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    .line 87
    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;)V
    .locals 0
    .param p1, "state"    # Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    .line 412
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;-><init>()V

    .line 413
    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 416
    :cond_0
    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 401
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;-><init>()V

    .line 403
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-direct {v0, p1, p0, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .line 404
    .local v0, "newState":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 405
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 406
    return-void
.end method

.method private inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "r"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    iget-object v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    .line 178
    .local v2, "state":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 181
    .local v3, "innerDepth":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    if-eq v5, v4, :cond_a

    .line 182
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    move v7, v5

    .local v7, "depth":I
    if-ge v5, v3, :cond_1

    const/4 v5, 0x3

    if-eq v6, v5, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v13, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    goto/16 :goto_5

    .line 184
    :cond_1
    :goto_1
    const/4 v5, 0x2

    if-eq v6, v5, :cond_2

    .line 185
    goto :goto_0

    .line 187
    :cond_2
    if-gt v7, v3, :cond_9

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 188
    goto :goto_0

    .line 192
    :cond_3
    sget-object v8, Landroidx/appcompat/R$styleable;->StateListDrawableItem:[I

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    invoke-static {v9, v10, v1, v8}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 194
    .local v8, "a":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    .line 195
    .local v11, "dr":Landroid/graphics/drawable/Drawable;
    sget v12, Landroidx/appcompat/R$styleable;->StateListDrawableItem_android_drawable:I

    const/4 v13, -0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 197
    .local v12, "drawableId":I
    if-lez v12, :cond_4

    .line 198
    move-object/from16 v13, p1

    invoke-static {v13, v12}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_2

    .line 197
    :cond_4
    move-object/from16 v13, p1

    .line 200
    :goto_2
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->extractStateSet(Landroid/util/AttributeSet;)[I

    move-result-object v14

    .line 205
    .local v14, "states":[I
    if-nez v11, :cond_8

    .line 206
    :goto_3
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    move v6, v15

    const/4 v4, 0x4

    if-ne v15, v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    .line 209
    :cond_5
    if-ne v6, v5, :cond_7

    .line 215
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_6

    .line 216
    invoke-static/range {p2 .. p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_4

    .line 218
    :cond_6
    invoke-static/range {p2 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_4

    .line 210
    :cond_7
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "child tag defining a drawable"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 221
    :cond_8
    :goto_4
    invoke-virtual {v2, v14, v11}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    .line 222
    .end local v7    # "depth":I
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v11    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v12    # "drawableId":I
    .end local v14    # "states":[I
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 187
    .restart local v7    # "depth":I
    :cond_9
    move-object/from16 v13, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 181
    .end local v7    # "depth":I
    :cond_a
    move-object/from16 v13, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    .line 223
    :goto_5
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 154
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    .line 156
    .local v0, "state":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 157
    iget v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mChangingConfigurations:I

    .line 159
    :cond_0
    sget v1, Landroidx/appcompat/R$styleable;->StateListDrawable_android_variablePadding:I

    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mVariablePadding:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mVariablePadding:Z

    .line 161
    sget v1, Landroidx/appcompat/R$styleable;->StateListDrawable_android_constantSize:I

    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mConstantSize:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mConstantSize:Z

    .line 163
    sget v1, Landroidx/appcompat/R$styleable;->StateListDrawable_android_enterFadeDuration:I

    iget v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mEnterFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mEnterFadeDuration:I

    .line 165
    sget v1, Landroidx/appcompat/R$styleable;->StateListDrawable_android_exitFadeDuration:I

    iget v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mExitFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mExitFadeDuration:I

    .line 167
    sget v1, Landroidx/appcompat/R$styleable;->StateListDrawable_android_dither:I

    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mDither:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mDither:Z

    .line 169
    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 97
    if-eqz p2, :cond_0

    .line 98
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    .line 100
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 102
    :cond_0
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 389
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 390
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 391
    return-void
.end method

.method clearMutated()V
    .locals 1

    .line 322
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->clearMutated()V

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    .line 324
    return-void
.end method

.method bridge synthetic cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    move-result-object v0

    return-object v0
.end method

.method cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    .locals 3

    .line 317
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method extractStateSet(Landroid/util/AttributeSet;)[I
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "j":I
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    .line 234
    .local v1, "numAttrs":I
    new-array v2, v1, [I

    .line 235
    .local v2, "states":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 236
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    .line 237
    .local v4, "stateResId":I
    if-eqz v4, :cond_2

    const v5, 0x10100d0

    if-eq v4, v5, :cond_1

    const v5, 0x1010199

    if-eq v4, v5, :cond_1

    .line 246
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "j":I
    .local v5, "j":I
    const/4 v6, 0x0

    invoke-interface {p1, v3, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    neg-int v6, v4

    :goto_1
    aput v6, v2, v0

    move v0, v5

    goto :goto_2

    .line 244
    .end local v5    # "j":I
    .restart local v0    # "j":I
    :cond_1
    goto :goto_2

    .line 239
    :cond_2
    nop

    .line 235
    .end local v4    # "stateResId":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    .end local v3    # "i":I
    :cond_3
    invoke-static {v2, v0}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v2

    .line 251
    return-object v2
.end method

.method getStateCount()I
    .locals 1

    .line 266
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v0

    return v0
.end method

.method getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "index"    # I

    .line 290
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getStateDrawableIndex([I)I
    .locals 1
    .param p1, "stateSet"    # [I

    .line 302
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v0

    return v0
.end method

.method getStateListState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    .locals 1

    .line 255
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    return-object v0
.end method

.method getStateSet(I)[I
    .locals 1
    .param p1, "index"    # I

    .line 278
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "r"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    sget-object v0, Landroidx/appcompat/R$styleable;->StateListDrawable:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 142
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/appcompat/R$styleable;->StateListDrawable_android_visible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    .line 143
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 144
    invoke-virtual {p0, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->updateDensity(Landroid/content/res/Resources;)V

    .line 145
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 147
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 148
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 308
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 309
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mutate()V

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    .line 312
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    .line 111
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    move-result v0

    .line 112
    .local v0, "changed":Z
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v1, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v1

    .line 117
    .local v1, "idx":I
    if-gez v1, :cond_0

    .line 118
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v1

    .line 120
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method protected setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 395
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 396
    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    if-eqz v0, :cond_0

    .line 397
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    .line 399
    :cond_0
    return-void
.end method
