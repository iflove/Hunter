.class public Lcom/alipay/mobile/common/transport/http/ZDefaultClientConnection;
.super Lorg/apache/http/impl/conn/DefaultClientConnection;
.source "ZDefaultClientConnection.java"


# instance fields
.field protected mShutdownZ:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lorg/apache/http/impl/conn/DefaultClientConnection;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/ZDefaultClientConnection;->mShutdownZ:Z

    return-void
.end method


# virtual methods
.method protected createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .line 26
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/http/ZHttpClientSocketOutputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    new-instance v0, Lorg/apache/http/impl/io/SocketOutputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/impl/io/SocketOutputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public isShutdownZ()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/ZDefaultClientConnection;->mShutdownZ:Z

    return v0
.end method

.method public setShutdownZ(Z)V
    .locals 0
    .param p1, "mZShutdown"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/ZDefaultClientConnection;->mShutdownZ:Z

    .line 44
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/ZDefaultClientConnection;->mShutdownZ:Z

    .line 35
    invoke-super {p0}, Lorg/apache/http/impl/conn/DefaultClientConnection;->shutdown()V

    .line 36
    return-void
.end method
