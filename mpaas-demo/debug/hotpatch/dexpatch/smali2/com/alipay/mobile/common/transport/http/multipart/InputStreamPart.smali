.class public Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;
.super Lcom/alipay/mobile/common/transport/http/multipart/PartBase;
.source "InputStreamPart.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/InputStream;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 82
    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "contentLength"    # I

    .line 92
    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 93
    iput p3, p0, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;->c:I

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "contentLength"    # I
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "contentType"    # Ljava/lang/String;

    .line 34
    if-nez p5, :cond_0

    const-string v0, "application/octet-stream"

    goto :goto_0

    :cond_0
    move-object v0, p5

    :goto_0
    const/4 v1, 0x0

    const-string v2, "binary"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;->c:I

    .line 35
    if-eqz p2, :cond_1

    .line 38
    iput-object p4, p0, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;->b:Ljava/io/InputStream;

    .line 40
    iput p3, p0, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;->c:I

    .line 41
    return-void

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputStream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "contentType"    # Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "contentLength"    # I

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput p4, p0, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;->c:I

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;

    .line 51
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;-><init>(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method protected lengthOfData()J
    .locals 2

    .line 124
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 102
    const-string/jumbo v0, "sendData. Sum len: "

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;->lengthOfData()J

    move-result-wide v1

    const-string v3, "InputStreamPart"

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    .line 103
    const-string v0, "No data to send."

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void

    .line 107
    :cond_0
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 108
    .local v1, "tmp":[B
    const/4 v2, 0x0

    .line 111
    .local v2, "sumLen":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;->b:Ljava/io/InputStream;

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 112
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 113
    add-int/2addr v2, v5

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v5    # "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 119
    return-void

    .line 117
    :catchall_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v4
.end method

.method public setContentLength(I)V
    .locals 0
    .param p1, "contentLength"    # I

    .line 97
    iput p1, p0, Lcom/alipay/mobile/common/transport/http/multipart/InputStreamPart;->c:I

    .line 98
    return-void
.end method
