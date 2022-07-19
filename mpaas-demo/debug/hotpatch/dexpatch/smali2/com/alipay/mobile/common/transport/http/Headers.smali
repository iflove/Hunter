.class public final Lcom/alipay/mobile/common/transport/http/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/http/Headers$HeaderCallback;
    }
.end annotation


# static fields
.field public static final ACCEPT_RANGES:Ljava/lang/String; = "accept-ranges"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "cache-control"

.field public static final CONN_CLOSE:I = 0x1

.field public static final CONN_DIRECTIVE:Ljava/lang/String; = "connection"

.field public static final CONN_KEEP_ALIVE:I = 0x2

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "content-disposition"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "content-encoding"

.field public static final CONTENT_LEN:Ljava/lang/String; = "content-length"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last-modified"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final NO_CONN_TYPE:I = 0x0

.field public static final NO_CONTENT_LENGTH:J = -0x1L

.field public static final NO_TRANSFER_ENCODING:J = 0x0L

.field public static final PRAGMA:Ljava/lang/String; = "pragma"

.field public static final PROXY_AUTHENTICATE:Ljava/lang/String; = "proxy-authenticate"

.field public static final PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field public static final REFRESH:Ljava/lang/String; = "refresh"

.field public static final SET_COOKIE:Ljava/lang/String; = "set-cookie"

.field public static final TRANSFER_ENCODING:Ljava/lang/String; = "transfer-encoding"

.field public static final WWW_AUTHENTICATE:Ljava/lang/String; = "www-authenticate"

.field public static final X_PERMITTED_CROSS_DOMAIN_POLICIES:Ljava/lang/String; = "x-permitted-cross-domain-policies"

.field private static final f:[Ljava/lang/String;


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:[Ljava/lang/String;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 128
    const-string/jumbo v0, "transfer-encoding"

    const-string v1, "content-length"

    const-string v2, "content-type"

    const-string v3, "content-encoding"

    const-string v4, "connection"

    const-string v5, "location"

    const-string/jumbo v6, "proxy-connection"

    const-string/jumbo v7, "www-authenticate"

    const-string/jumbo v8, "proxy-authenticate"

    const-string v9, "content-disposition"

    const-string v10, "accept-ranges"

    const-string v11, "expires"

    const-string v12, "cache-control"

    const-string v13, "last-modified"

    const-string v14, "etag"

    const-string/jumbo v15, "set-cookie"

    const-string/jumbo v16, "pragma"

    const-string/jumbo v17, "refresh"

    const-string/jumbo v18, "x-permitted-cross-domain-policies"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/Headers;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->d:Ljava/util/ArrayList;

    .line 127
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->g:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->h:Ljava/util/ArrayList;

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->a:J

    .line 156
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->b:J

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->c:I

    .line 158
    return-void
.end method

.method private a(Lorg/apache/http/util/CharArrayBuffer;I)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "pos"    # I

    .line 460
    const-string v0, "Close"

    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/common/transport/http/CharArrayBuffers;->containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->c:I

    return-void

    .line 463
    :cond_0
    const-string v0, "Keep-Alive"

    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/common/transport/http/CharArrayBuffers;->containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->c:I

    .line 467
    :cond_1
    return-void
.end method


# virtual methods
.method public final getAcceptRanges()Ljava/lang/String;
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getCacheControl()Ljava/lang/String;
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getConnectionType()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->c:I

    return v0
.end method

.method public final getContentDisposition()Ljava/lang/String;
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .line 314
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->b:J

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getExpires()Ljava/lang/String;
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getHeaders(Lcom/alipay/mobile/common/transport/http/Headers$HeaderCallback;)V
    .locals 4
    .param p1, "hcb"    # Lcom/alipay/mobile/common/transport/http/Headers$HeaderCallback;

    .line 441
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x13

    if-ge v0, v2, :cond_1

    .line 442
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 443
    .local v1, "h":Ljava/lang/String;
    move-object v1, v2

    if-eqz v2, :cond_0

    .line 444
    sget-object v2, Lcom/alipay/mobile/common/transport/http/Headers;->f:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {p1, v2, v1}, Lcom/alipay/mobile/common/transport/http/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .end local v1    # "h":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 448
    .local v0, "extraLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 453
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/Headers;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/Headers;->h:Ljava/util/ArrayList;

    .line 454
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 453
    invoke-interface {p1, v2, v3}, Lcom/alipay/mobile/common/transport/http/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 457
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public final getLastModified()Ljava/lang/String;
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getPragma()Ljava/lang/String;
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getProxyAuthenticate()Ljava/lang/String;
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getRefresh()Ljava/lang/String;
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getSetCookie()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTransferEncoding()J
    .locals 2

    .line 310
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->a:J

    return-wide v0
.end method

.method public final getWwwAuthenticate()Ljava/lang/String;
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getXPermittedCrossDomainPolicies()Ljava/lang/String;
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V
    .locals 8
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;

    .line 161
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/transport/http/CharArrayBuffers;->setLowercaseIndexOf(Lorg/apache/http/util/CharArrayBuffer;I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 162
    .local v2, "pos":I
    move v2, v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    invoke-virtual {p1, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 166
    .local v4, "name":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 167
    return-void

    .line 169
    :cond_1
    const/4 v0, 0x1

    add-int/2addr v2, v0

    .line 171
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "val":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 213
    :sswitch_0
    const-string v0, "content-encoding"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object v5, v0, v1

    return-void

    .line 224
    :sswitch_1
    const-string v0, "location"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x5

    aput-object v5, v0, v1

    return-void

    .line 250
    :sswitch_2
    const-string v0, "accept-ranges"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xa

    aput-object v5, v0, v1

    return-void

    .line 178
    :sswitch_3
    const-string/jumbo v0, "transfer-encoding"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    aput-object v5, v0, v1

    .line 180
    sget-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    new-instance v1, Lorg/apache/http/message/ParserCursor;

    .line 182
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v6

    invoke-direct {v1, v2, v6}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 181
    invoke-virtual {v0, p1, v1}, Lorg/apache/http/message/BasicHeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object v0

    move-object v1, v3

    .line 185
    .local v1, "encodings":[Lorg/apache/http/HeaderElement;
    move-object v1, v0

    array-length v0, v0

    .line 186
    .local v0, "len":I
    const-string v3, "identity"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 188
    if-lez v0, :cond_2

    add-int/lit8 v3, v0, -0x1

    aget-object v3, v1, v3

    .line 190
    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "chunked"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    const-wide/16 v6, -0x2

    iput-wide v6, p0, Lcom/alipay/mobile/common/transport/http/Headers;->a:J

    return-void

    .line 193
    :cond_2
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/alipay/mobile/common/transport/http/Headers;->a:J

    .line 195
    .end local v0    # "len":I
    .end local v1    # "encodings":[Lorg/apache/http/HeaderElement;
    return-void

    .line 282
    :sswitch_4
    const-string/jumbo v0, "set-cookie"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xf

    aput-object v5, v0, v1

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 293
    :sswitch_5
    const-string/jumbo v0, "refresh"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x11

    aput-object v5, v0, v1

    return-void

    .line 208
    :sswitch_6
    const-string v0, "content-type"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object v5, v0, v1

    return-void

    .line 229
    :sswitch_7
    const-string/jumbo v0, "proxy-connection"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x6

    aput-object v5, v0, v1

    .line 231
    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/common/transport/http/Headers;->a(Lorg/apache/http/util/CharArrayBuffer;I)V

    return-void

    .line 272
    :sswitch_8
    const-string v0, "last-modified"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xd

    aput-object v5, v0, v1

    return-void

    .line 277
    :sswitch_9
    const-string v0, "etag"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xe

    aput-object v5, v0, v1

    return-void

    .line 260
    :sswitch_a
    const-string v0, "cache-control"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v3, v0, v1

    if-eqz v3, :cond_3

    aget-object v0, v0, v1

    .line 264
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    aget-object v6, v3, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    return-void

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    aput-object v5, v0, v1

    return-void

    .line 235
    :sswitch_b
    const-string/jumbo v0, "www-authenticate"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x7

    aput-object v5, v0, v1

    return-void

    .line 240
    :sswitch_c
    const-string/jumbo v0, "proxy-authenticate"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x8

    aput-object v5, v0, v1

    return-void

    .line 218
    :sswitch_d
    const-string v0, "connection"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x4

    aput-object v5, v0, v1

    .line 220
    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/common/transport/http/Headers;->a(Lorg/apache/http/util/CharArrayBuffer;I)V

    return-void

    .line 288
    :sswitch_e
    const-string/jumbo v0, "pragma"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x10

    aput-object v5, v0, v1

    return-void

    .line 198
    :sswitch_f
    const-string v1, "content-length"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 199
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    aput-object v5, v1, v0

    .line 201
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->b:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "HASH_CONTENT_LEN parseLong("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") exception : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HttpWorker"

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    return-void

    .line 245
    :sswitch_10
    const-string v0, "content-disposition"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x9

    aput-object v5, v0, v1

    return-void

    .line 255
    :sswitch_11
    const-string v0, "expires"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object v5, v0, v1

    return-void

    .line 298
    :sswitch_12
    const-string/jumbo v0, "x-permitted-cross-domain-policies"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x12

    aput-object v5, v0, v1

    return-void

    .line 307
    :cond_4
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5034229e -> :sswitch_12
        -0x4e0958cc -> :sswitch_11
        -0x4b88f79d -> :sswitch_10
        -0x4384d946 -> :sswitch_f
        -0x3a6d1ac4 -> :sswitch_e
        -0x2e3b8122 -> :sswitch_d
        -0x11fc9c2c -> :sswitch_c
        -0xe7c74b5 -> :sswitch_b
        -0xc71a9ee -> :sswitch_a
        0x2fa915 -> :sswitch_9
        0x8f17c20 -> :sswitch_8
        0x110aef9d -> :sswitch_7
        0x2ed4600e -> :sswitch_6
        0x40b292db -> :sswitch_5
        0x49be662f -> :sswitch_4
        0x4bf6b0f5 -> :sswitch_3
        0x53476b3b -> :sswitch_2
        0x714f9fb5 -> :sswitch_1
        0x7ce07427 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setAcceptRanges(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xa

    aput-object p1, v0, v1

    .line 411
    return-void
.end method

.method public final setCacheControl(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xc

    aput-object p1, v0, v1

    .line 419
    return-void
.end method

.method public final setContentDisposition(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x9

    aput-object p1, v0, v1

    .line 407
    return-void
.end method

.method public final setContentEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 391
    return-void
.end method

.method public final setContentLength(J)V
    .locals 0
    .param p1, "value"    # J

    .line 382
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/http/Headers;->b:J

    .line 383
    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 387
    return-void
.end method

.method public final setEtag(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xe

    aput-object p1, v0, v1

    .line 427
    return-void
.end method

.method public final setExpires(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object p1, v0, v1

    .line 415
    return-void
.end method

.method public final setLastModified(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xd

    aput-object p1, v0, v1

    .line 423
    return-void
.end method

.method public final setLocation(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 395
    return-void
.end method

.method public final setProxyAuthenticate(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x8

    aput-object p1, v0, v1

    .line 403
    return-void
.end method

.method public final setWwwAuthenticate(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x7

    aput-object p1, v0, v1

    .line 399
    return-void
.end method

.method public final setXPermittedCrossDomainPolicies(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x12

    aput-object p1, v0, v1

    .line 431
    return-void
.end method
