.class public Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;
.super Ljava/lang/Object;
.source "FilePartSource.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/http/multipart/PartSource;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;->a:Ljava/io/File;

    .line 50
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;->b:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;->a:Ljava/io/File;

    .line 62
    if-eqz p1, :cond_2

    .line 63
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;->b:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "File is not readable."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "File is not a normal file."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 84
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;->b:Ljava/lang/String;

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "noname"

    :cond_0
    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 99
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
