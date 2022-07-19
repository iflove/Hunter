.class public Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "MultipartEntity.java"


# static fields
.field public static final MULTIPART_BOUNDARY:Ljava/lang/String; = "http.method.multipart.boundary"

.field private static a:[B


# instance fields
.field private b:[B

.field private c:Lorg/apache/http/params/HttpParams;

.field private d:Z

.field protected parts:[Lcom/alipay/mobile/common/transport/http/multipart/Part;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "parts"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/transport/http/multipart/Part;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alipay/mobile/common/transport/http/multipart/Part;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transport/http/multipart/Part;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;-><init>([Lcom/alipay/mobile/common/transport/http/multipart/Part;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "parts"    # Ljava/util/List;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/transport/http/multipart/Part;",
            ">;",
            "Lorg/apache/http/params/HttpParams;",
            ")V"
        }
    .end annotation

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alipay/mobile/common/transport/http/multipart/Part;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transport/http/multipart/Part;

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;-><init>([Lcom/alipay/mobile/common/transport/http/multipart/Part;Lorg/apache/http/params/HttpParams;)V

    .line 165
    return-void
.end method

.method public constructor <init>([Lcom/alipay/mobile/common/transport/http/multipart/Part;)V
    .locals 2
    .param p1, "parts"    # [Lcom/alipay/mobile/common/transport/http/multipart/Part;

    .line 143
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->d:Z

    .line 144
    const-string/jumbo v0, "multipart/form-data"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->setContentType(Ljava/lang/String;)V

    .line 145
    if-eqz p1, :cond_0

    .line 148
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->parts:[Lcom/alipay/mobile/common/transport/http/multipart/Part;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->c:Lorg/apache/http/params/HttpParams;

    .line 150
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([Lcom/alipay/mobile/common/transport/http/multipart/Part;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "parts"    # [Lcom/alipay/mobile/common/transport/http/multipart/Part;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .line 132
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->d:Z

    .line 133
    if-eqz p1, :cond_1

    .line 136
    if-eqz p2, :cond_0

    .line 139
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->parts:[Lcom/alipay/mobile/common/transport/http/multipart/Part;

    .line 140
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->c:Lorg/apache/http/params/HttpParams;

    .line 141
    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a()[B
    .locals 5

    .line 110
    const/4 v0, 0x0

    .local v0, "rand":Ljava/util/Random;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 111
    move-object v0, v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    new-array v1, v1, [B

    .line 112
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 113
    sget-object v3, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->a:[B

    array-length v4, v3

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 4

    .line 233
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content has been consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->d:Z

    .line 238
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 239
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->parts:[Lcom/alipay/mobile/common/transport/http/multipart/Part;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->b:[B

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/alipay/mobile/common/transport/http/multipart/Part;[B)V

    .line 240
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 241
    return-object v0
.end method

.method public getContentLength()J
    .locals 3

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->parts:[Lcom/alipay/mobile/common/transport/http/multipart/Part;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->getLengthOfParts([Lcom/alipay/mobile/common/transport/http/multipart/Part;[B)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultipartEntity"

    const-string v2, "An exception occurred while getting the length of the parts"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 4

    .line 214
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 215
    .local v1, "buffer":Ljava/lang/StringBuffer;
    move-object v1, v0

    const-string v2, "; boundary="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-direct {v0, v3, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getMultipartBoundary()[B
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->b:[B

    if-nez v0, :cond_2

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "temp":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->c:Lorg/apache/http/params/HttpParams;

    if-eqz v1, :cond_0

    .line 180
    const-string v2, "http.method.multipart.boundary"

    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 182
    :cond_0
    if-eqz v0, :cond_1

    .line 183
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->b:[B

    goto :goto_0

    .line 185
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->a()[B

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->b:[B

    .line 188
    .end local v0    # "temp":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->b:[B

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 3

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->parts:[Lcom/alipay/mobile/common/transport/http/multipart/Part;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 196
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->isRepeatable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const/4 v1, 0x0

    return v1

    .line 195
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 206
    const-string v0, "MultipartEntity"

    const-string/jumbo v1, "writeTo(OutputStream out)"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->parts:[Lcom/alipay/mobile/common/transport/http/multipart/Part;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/common/transport/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/alipay/mobile/common/transport/http/multipart/Part;[B)V

    .line 208
    return-void
.end method
