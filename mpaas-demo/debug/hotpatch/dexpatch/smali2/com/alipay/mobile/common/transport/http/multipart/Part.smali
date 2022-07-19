.class public abstract Lcom/alipay/mobile/common/transport/http/multipart/Part;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field protected static final BOUNDARY:Ljava/lang/String; = "----------------314159265358979323846"

.field protected static final BOUNDARY_BYTES:[B

.field protected static final CHARSET:Ljava/lang/String; = "; charset="

.field protected static final CHARSET_BYTES:[B

.field protected static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition: form-data; name="

.field protected static final CONTENT_DISPOSITION_BYTES:[B

.field protected static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding: "

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B

.field protected static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type: "

.field protected static final CONTENT_TYPE_BYTES:[B

.field protected static final CRLF:Ljava/lang/String; = "\r\n"

.field protected static final CRLF_BYTES:[B

.field protected static final EXTRA:Ljava/lang/String; = "--"

.field protected static final EXTRA_BYTES:[B

.field protected static final FILE_NAME:Ljava/lang/String; = "; filename="

.field public static final FILE_NAME_BYTES:[B

.field protected static final QUOTE:Ljava/lang/String; = "\""

.field protected static final QUOTE_BYTES:[B

.field private static final a:[B


# instance fields
.field private b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-string v0, "----------------314159265358979323846"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 62
    sput-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->BOUNDARY_BYTES:[B

    sput-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->a:[B

    .line 68
    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->CRLF_BYTES:[B

    .line 74
    nop

    .line 75
    const-string v0, "\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->QUOTE_BYTES:[B

    .line 81
    nop

    .line 82
    const-string v0, "--"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->EXTRA_BYTES:[B

    .line 88
    nop

    .line 89
    const-string v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    .line 95
    nop

    .line 96
    const-string v0, "Content-Type: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->CONTENT_TYPE_BYTES:[B

    .line 102
    nop

    .line 103
    const-string v0, "; charset="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->CHARSET_BYTES:[B

    .line 109
    nop

    .line 110
    const-string v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    .line 116
    nop

    .line 117
    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->FILE_NAME_BYTES:[B

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoundary()Ljava/lang/String;
    .locals 1

    .line 125
    const-string v0, "----------------314159265358979323846"

    return-object v0
.end method

.method public static getLengthOfParts([Lcom/alipay/mobile/common/transport/http/multipart/Part;)J
    .locals 2
    .param p0, "parts"    # [Lcom/alipay/mobile/common/transport/http/multipart/Part;

    .line 416
    sget-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->a:[B

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->getLengthOfParts([Lcom/alipay/mobile/common/transport/http/multipart/Part;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLengthOfParts([Lcom/alipay/mobile/common/transport/http/multipart/Part;[B)J
    .locals 10
    .param p0, "parts"    # [Lcom/alipay/mobile/common/transport/http/multipart/Part;
    .param p1, "partBoundary"    # [B

    .line 431
    if-eqz p0, :cond_2

    .line 434
    const-wide/16 v0, 0x0

    .line 435
    .local v0, "total":J
    const/4 v2, 0x0

    .local v2, "i":I
    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    array-length v7, p0

    if-ge v2, v7, :cond_1

    .line 437
    aget-object v7, p0, v2

    invoke-virtual {v7, p1}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->setPartBoundary([B)V

    .line 438
    aget-object v7, p0, v2

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->length()J

    move-result-wide v7

    .line 439
    .local v5, "l":J
    move-wide v5, v7

    cmp-long v9, v7, v3

    if-gez v9, :cond_0

    .line 440
    const-wide/16 v3, -0x1

    return-wide v3

    .line 442
    :cond_0
    add-long/2addr v0, v5

    .line 435
    .end local v5    # "l":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 444
    .end local v2    # "i":I
    :cond_1
    sget-object v2, Lcom/alipay/mobile/common/transport/http/multipart/Part;->EXTRA_BYTES:[B

    array-length v3, v2

    int-to-long v3, v3

    add-long/2addr v3, v0

    .line 445
    array-length v5, p1

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 446
    array-length v2, v2

    int-to-long v5, v2

    add-long/2addr v3, v5

    .line 447
    sget-object v2, Lcom/alipay/mobile/common/transport/http/multipart/Part;->CRLF_BYTES:[B

    array-length v2, v2

    int-to-long v5, v2

    add-long/2addr v3, v5

    .line 448
    return-wide v3

    .line 432
    .end local v0    # "total":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parts may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/alipay/mobile/common/transport/http/multipart/Part;)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "parts"    # [Lcom/alipay/mobile/common/transport/http/multipart/Part;

    .line 372
    sget-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->a:[B

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/alipay/mobile/common/transport/http/multipart/Part;[B)V

    .line 373
    return-void
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/alipay/mobile/common/transport/http/multipart/Part;[B)V
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "parts"    # [Lcom/alipay/mobile/common/transport/http/multipart/Part;
    .param p2, "partBoundary"    # [B

    .line 389
    if-eqz p1, :cond_2

    .line 392
    if-eqz p2, :cond_1

    array-length v0, p2

    if-eqz v0, :cond_1

    .line 395
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 397
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->setPartBoundary([B)V

    .line 398
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->send(Ljava/io/OutputStream;)V

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 401
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 402
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 403
    sget-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 404
    return-void

    .line 393
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "partBoundary may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parts may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getCharSet()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getPartBoundary()[B
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->b:[B

    if-nez v0, :cond_0

    .line 175
    sget-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->a:[B

    return-object v0

    .line 177
    :cond_0
    return-object v0
.end method

.method public abstract getTransferEncoding()Ljava/lang/String;
.end method

.method public isRepeatable()Z
    .locals 1

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public length()J
    .locals 5

    .line 339
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->lengthOfData()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 340
    const-wide/16 v0, -0x1

    return-wide v0

    .line 342
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 343
    .local v0, "overhead":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 344
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 345
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 346
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 347
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 348
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 349
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->lengthOfData()J

    move-result-wide v3

    add-long/2addr v1, v3

    return-wide v1
.end method

.method protected abstract lengthOfData()J
.end method

.method public send(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 320
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 321
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 322
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 323
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 324
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 325
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->sendData(Ljava/io/OutputStream;)V

    .line 326
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 327
    return-void
.end method

.method protected sendContentTypeHeader(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 247
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 248
    .local v2, "contentType":Ljava/lang/String;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 250
    sget-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->CONTENT_TYPE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 251
    invoke-static {v2}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 252
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->getCharSet()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v1, "charSet":Ljava/lang/String;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->CHARSET_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 255
    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 258
    .end local v1    # "charSet":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected abstract sendData(Ljava/io/OutputStream;)V
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 220
    sget-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 221
    sget-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 222
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 223
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 227
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->getFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 228
    .local v2, "fileName":Ljava/lang/String;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 232
    move-object v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 233
    return-void

    .line 235
    :cond_1
    sget-object v1, Lcom/alipay/mobile/common/transport/http/multipart/Part;->FILE_NAME_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 236
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 237
    invoke-static {v2}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 238
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 239
    return-void
.end method

.method protected sendEnd(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 307
    sget-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 308
    return-void
.end method

.method protected sendEndOfHeader(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 282
    sget-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 283
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 284
    return-void
.end method

.method protected sendStart(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 208
    sget-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 209
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->getPartBoundary()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 210
    sget-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 211
    return-void
.end method

.method protected sendTransferEncodingHeader(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 268
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 269
    .local v1, "transferEncoding":Ljava/lang/String;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 271
    sget-object v0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 272
    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 274
    :cond_0
    return-void
.end method

.method setPartBoundary([B)V
    .locals 0
    .param p1, "boundaryBytes"    # [B

    .line 189
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/multipart/Part;->b:[B

    .line 190
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 359
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
