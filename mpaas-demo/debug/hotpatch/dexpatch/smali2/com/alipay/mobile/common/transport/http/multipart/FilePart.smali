.class public Lcom/alipay/mobile/common/transport/http/multipart/FilePart;
.super Lcom/alipay/mobile/common/transport/http/multipart/PartBase;
.source "FilePart.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final DEFAULT_TRANSFER_ENCODING:Ljava/lang/String; = "binary"


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/http/multipart/PartSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/multipart/PartSource;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "partSource"    # Lcom/alipay/mobile/common/transport/http/multipart/PartSource;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transport/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/multipart/PartSource;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/multipart/PartSource;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "partSource"    # Lcom/alipay/mobile/common/transport/http/multipart/PartSource;
    .param p3, "contentType"    # Ljava/lang/String;

    .line 71
    if-nez p3, :cond_0

    const-string v0, "application/octet-stream"

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    const/4 v1, 0x0

    const-string v2, "binary"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    if-eqz p2, :cond_1

    .line 81
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/multipart/FilePart;->a:Lcom/alipay/mobile/common/transport/http/multipart/PartSource;

    .line 82
    return-void

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 105
    new-instance v0, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;

    invoke-direct {v0, p2}, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transport/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/multipart/PartSource;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "contentType"    # Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;

    invoke-direct {v0, p2}, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/alipay/mobile/common/transport/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/multipart/PartSource;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;

    .line 136
    new-instance v0, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;

    invoke-direct {v0, p2, p3}, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transport/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/multipart/PartSource;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "contentType"    # Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;

    invoke-direct {v0, p2, p3}, Lcom/alipay/mobile/common/transport/http/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p4}, Lcom/alipay/mobile/common/transport/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/multipart/PartSource;Ljava/lang/String;)V

    .line 154
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/FilePart;->a:Lcom/alipay/mobile/common/transport/http/multipart/PartSource;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/http/multipart/PartSource;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSource()Lcom/alipay/mobile/common/transport/http/multipart/PartSource;
    .locals 2

    .line 198
    const-string v0, "FilePart"

    const-string v1, "enter getSource()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/FilePart;->a:Lcom/alipay/mobile/common/transport/http/multipart/PartSource;

    return-object v0
.end method

.method protected lengthOfData()J
    .locals 2

    .line 209
    const-string v0, "FilePart"

    const-string v1, "enter lengthOfData()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/FilePart;->a:Lcom/alipay/mobile/common/transport/http/multipart/PartSource;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/http/multipart/PartSource;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 169
    const-string v0, "FilePart"

    const-string v1, "enter sendData(OutputStream out)"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/multipart/FilePart;->lengthOfData()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 175
    const-string v1, "No data to send."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void

    .line 179
    :cond_0
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 180
    .local v0, "tmp":[B
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/multipart/FilePart;->a:Lcom/alipay/mobile/common/transport/http/multipart/PartSource;

    invoke-interface {v1}, Lcom/alipay/mobile/common/transport/http/multipart/PartSource;->createInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 183
    .local v1, "instream":Ljava/io/InputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "len":I
    if-ltz v2, :cond_1

    .line 184
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 188
    .end local v3    # "len":I
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
.end method
