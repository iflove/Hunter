.class public Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
.super Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
.source "H5HttpUrlRequest.java"


# static fields
.field public static final HTTP_LINK:B = 0x2t

.field public static final OPERATION_TYPE:Ljava/lang/String; = "h5_http_request"

.field public static final SPDY_LINK:B = 0x1t


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field public linkType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->linkType:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->a:Z

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->b:Z

    .line 36
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->c:Z

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/HttpForm;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpForm"    # Lcom/alipay/mobile/common/transport/http/HttpForm;
    .param p3, "headers"    # Ljava/util/ArrayList;
    .param p4, "tags"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/http/HttpForm;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/HttpForm;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->linkType:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->a:Z

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->b:Z

    .line 36
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->c:Z

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;ILjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .param p4, "headers"    # Ljava/util/ArrayList;
    .param p5, "tags"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    int-to-long v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;Ljava/io/InputStream;JLjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->linkType:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->a:Z

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->b:Z

    .line 36
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->c:Z

    .line 92
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->init()V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpEntity"    # Lorg/apache/http/HttpEntity;
    .param p3, "headers"    # Ljava/util/ArrayList;
    .param p4, "tags"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->linkType:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->a:Z

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->b:Z

    .line 36
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->c:Z

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->init()V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "reqData"    # [B
    .param p3, "headers"    # Ljava/util/ArrayList;
    .param p4, "tags"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->linkType:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->a:Z

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->b:Z

    .line 36
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->c:Z

    .line 54
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 2
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 96
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->linkType:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->a:Z

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->b:Z

    .line 36
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->c:Z

    .line 97
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->init()V

    .line 98
    return-void
.end method


# virtual methods
.method public getRefer()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCache()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->c:Z

    return v0
.end method

.method protected init()V
    .locals 2

    .line 101
    const-string/jumbo v0, "operationType"

    const-string v1, "h5_http_request"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setCompress(Z)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setBgRpc(Z)V

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setUseHttpStdRetryModel(Z)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5HttpUrlRequest"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public isAsyncMonitorLog()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->a:Z

    return v0
.end method

.method public isGoHttp()Z
    .locals 2

    .line 113
    iget v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->linkType:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGoSpdy()Z
    .locals 2

    .line 109
    iget v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->linkType:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPrintUrlToMonitorLog()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->b:Z

    return v0
.end method

.method public setAsyncMonitorLog(Z)V
    .locals 0
    .param p1, "asyncMonitorLog"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->a:Z

    .line 122
    return-void
.end method

.method public setPrintUrlToMonitorLog(Z)V
    .locals 0
    .param p1, "printUrlToMonitorLog"    # Z

    .line 130
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->b:Z

    .line 131
    return-void
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 0
    .param p1, "refer"    # Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->d:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setUseCache(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->c:Z

    .line 135
    return-void
.end method
