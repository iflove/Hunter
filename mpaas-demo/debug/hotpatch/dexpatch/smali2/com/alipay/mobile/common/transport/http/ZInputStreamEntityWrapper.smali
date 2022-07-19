.class public Lcom/alipay/mobile/common/transport/http/ZInputStreamEntityWrapper;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "ZInputStreamEntityWrapper.java"


# instance fields
.field private a:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/HttpEntity;)V
    .locals 2
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "originHttpEntity"    # Lorg/apache/http/HttpEntity;

    .line 20
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 21
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/ZInputStreamEntityWrapper;->a:Lorg/apache/http/HttpEntity;

    .line 22
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 4

    .line 27
    const-string v0, "ZInputStreamEntityWrapper"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/ZInputStreamEntityWrapper;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mOriginHttpEntity consumeContent exception."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    invoke-super {p0}, Lorg/apache/http/entity/InputStreamEntity;->consumeContent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    return-void

    .line 33
    :catchall_1
    move-exception v1

    .line 34
    .restart local v1    # "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "consumeContent exception."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method
