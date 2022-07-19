.class public Lcom/alipay/mobile/common/transport/http/multipart/StringPart;
.super Lcom/alipay/mobile/common/transport/http/multipart/PartBase;
.source "StringPart.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "US-ASCII"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "text/plain"

.field public static final DEFAULT_TRANSFER_ENCODING:Ljava/lang/String; = "8bit"


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transport/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    .line 76
    if-nez p3, :cond_0

    const-string v0, "US-ASCII"

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    const-string/jumbo v1, "text/plain"

    const-string v2, "8bit"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/alipay/mobile/common/transport/http/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    if-eqz p2, :cond_2

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 89
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/multipart/StringPart;->b:Ljava/lang/String;

    .line 90
    return-void

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULs may not be present in string parts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()[B
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/StringPart;->a:[B

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/StringPart;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/multipart/StringPart;->getCharSet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/StringPart;->a:[B

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/StringPart;->a:[B

    return-object v0
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method protected lengthOfData()J
    .locals 2

    .line 138
    const-string v0, "StringPart"

    const-string v1, "enter lengthOfData()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/multipart/StringPart;->a()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 127
    const-string v0, "StringPart"

    const-string v1, "enter sendData(OutputStream)"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/multipart/StringPart;->a()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 129
    return-void
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 1
    .param p1, "charSet"    # Ljava/lang/String;

    .line 147
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/http/multipart/PartBase;->setCharSet(Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/StringPart;->a:[B

    .line 149
    return-void
.end method
