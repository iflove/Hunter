.class public Lcom/alipay/mobile/common/transport/http/inner/RpcInputStreamEntity;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "RpcInputStreamEntity.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "dataLength"    # J

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 18
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outstream"    # Ljava/io/OutputStream;

    .line 22
    invoke-super {p0, p1}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 23
    return-void
.end method
