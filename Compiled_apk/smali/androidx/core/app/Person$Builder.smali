.class public Landroidx/core/app/Person$Builder;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field mIsBot:Z

.field mIsImportant:Z

.field mKey:Ljava/lang/String;

.field mName:Ljava/lang/CharSequence;

.field mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/core/app/Person;)V
    .locals 1
    .param p1, "person"    # Landroidx/core/app/Person;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iget-object v0, p1, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/core/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    .line 217
    iget-object v0, p1, Landroidx/core/app/Person;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v0, p0, Landroidx/core/app/Person$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 218
    iget-object v0, p1, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/app/Person$Builder;->mUri:Ljava/lang/String;

    .line 219
    iget-object v0, p1, Landroidx/core/app/Person;->mKey:Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/app/Person$Builder;->mKey:Ljava/lang/String;

    .line 220
    iget-boolean v0, p1, Landroidx/core/app/Person;->mIsBot:Z

    iput-boolean v0, p0, Landroidx/core/app/Person$Builder;->mIsBot:Z

    .line 221
    iget-boolean v0, p1, Landroidx/core/app/Person;->mIsImportant:Z

    iput-boolean v0, p0, Landroidx/core/app/Person$Builder;->mIsImportant:Z

    .line 222
    return-void
.end method


# virtual methods
.method public build()Landroidx/core/app/Person;
    .locals 1

    .line 300
    new-instance v0, Landroidx/core/app/Person;

    invoke-direct {v0, p0}, Landroidx/core/app/Person;-><init>(Landroidx/core/app/Person$Builder;)V

    return-object v0
.end method

.method public setBot(Z)Landroidx/core/app/Person$Builder;
    .locals 0
    .param p1, "bot"    # Z

    .line 281
    iput-boolean p1, p0, Landroidx/core/app/Person$Builder;->mIsBot:Z

    .line 282
    return-object p0
.end method

.method public setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;
    .locals 0
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;

    .line 242
    iput-object p1, p0, Landroidx/core/app/Person$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 243
    return-object p0
.end method

.method public setImportant(Z)Landroidx/core/app/Person$Builder;
    .locals 0
    .param p1, "important"    # Z

    .line 293
    iput-boolean p1, p0, Landroidx/core/app/Person$Builder;->mIsImportant:Z

    .line 294
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Landroidx/core/app/Person$Builder;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 271
    iput-object p1, p0, Landroidx/core/app/Person$Builder;->mKey:Ljava/lang/String;

    .line 272
    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 230
    iput-object p1, p0, Landroidx/core/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    .line 231
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .line 260
    iput-object p1, p0, Landroidx/core/app/Person$Builder;->mUri:Ljava/lang/String;

    .line 261
    return-object p0
.end method
