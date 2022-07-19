.class public Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
.super Lcom/alipay/mobile/common/transport/Request;
.source "HttpUrlRequest.java"


# static fields
.field public static final TASK_STATE_END:B = 0x2t

.field public static final TASK_STATE_INIT:B = 0x0t

.field public static final TASK_STATE_RUNNING:B = 0x1t


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/lang/String;

.field public allowNonNet:Z

.field public allowRetry:Z

.field private b:[B

.field private c:Ljava/lang/String;

.field public capture:Z

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field protected failedException:Ljava/lang/Throwable;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcom/alipay/mobile/common/transport/http/HttpForm;

.field private m:Ljava/io/InputStream;

.field protected mPerformanceDataCallback:Lcom/alipay/mobile/common/transport/http/PerformanceDataCallback;

.field public mTimeout:J

.field private n:Z

.field protected networkThread:Ljava/lang/Thread;

.field private o:J

.field private p:Lorg/apache/http/HttpEntity;

.field private q:Lorg/apache/http/client/methods/HttpUriRequest;

.field private r:Lorg/apache/http/HttpResponse;

.field private s:Z

.field private t:Z

.field protected taskState:I

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 178
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/Request;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->h:Z

    .line 76
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->i:Z

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->j:Z

    .line 85
    const-string v1, "GET"

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->k:Ljava/lang/String;

    .line 92
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->n:Z

    .line 94
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->o:J

    .line 102
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->allowRetry:Z

    .line 104
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->mTimeout:J

    .line 106
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->allowNonNet:Z

    .line 112
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->s:Z

    .line 115
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->t:Z

    .line 117
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->capture:Z

    .line 119
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->u:Z

    .line 125
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->w:Z

    .line 128
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->x:Z

    .line 133
    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->taskState:I

    .line 140
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->y:Z

    .line 143
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->z:Z

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->A:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->B:Ljava/util/Map;

    .line 179
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/ZURLEncodedUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    .line 182
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->c:Ljava/lang/String;

    .line 183
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

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 223
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->l:Lcom/alipay/mobile/common/transport/http/HttpForm;

    .line 224
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpForm;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->o:J

    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;JLjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "dataLength"    # J
    .param p5, "headers"    # Ljava/util/ArrayList;
    .param p6, "tags"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p5, p6}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 252
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->m:Ljava/io/InputStream;

    .line 253
    iput-wide p3, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->o:J

    .line 254
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

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 237
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->p:Lorg/apache/http/HttpEntity;

    .line 238
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->o:J

    .line 239
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 3
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

    .line 194
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/Request;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->h:Z

    .line 76
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->i:Z

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->j:Z

    .line 85
    const-string v1, "GET"

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->k:Ljava/lang/String;

    .line 92
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->n:Z

    .line 94
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->o:J

    .line 102
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->allowRetry:Z

    .line 104
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->mTimeout:J

    .line 106
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->allowNonNet:Z

    .line 112
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->s:Z

    .line 115
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->t:Z

    .line 117
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->capture:Z

    .line 119
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->u:Z

    .line 125
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->w:Z

    .line 128
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->x:Z

    .line 133
    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->taskState:I

    .line 140
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->y:Z

    .line 143
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->z:Z

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->A:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->B:Ljava/util/Map;

    .line 195
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/ZURLEncodedUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    .line 196
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    .line 197
    if-eqz p2, :cond_0

    .line 198
    array-length v0, p2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->o:J

    .line 200
    :cond_0
    if-nez p3, :cond_1

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    goto :goto_0

    .line 203
    :cond_1
    iput-object p3, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    .line 205
    :goto_0
    if-nez p4, :cond_2

    .line 206
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    goto :goto_1

    .line 208
    :cond_2
    iput-object p4, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    .line 210
    :goto_1
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->c:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 4

    .line 152
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->q:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 155
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 157
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 158
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->q:Lorg/apache/http/client/methods/HttpUriRequest;

    instance-of v1, v0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v1, :cond_1

    .line 163
    check-cast v0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 164
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_1

    .line 166
    new-instance v2, Lcom/alipay/mobile/common/transport/http/ZNetworkHttpEntityWrapper;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/common/transport/http/ZNetworkHttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 170
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/RequestMethodUtils;->getMethodByHttpUriRequest(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setRequestMethod(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 172
    return-void
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 9
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v0, "alinet_tspi"

    const-string v1, "HttpUrlRequest"

    const-string v2, "bizId"

    .line 775
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 776
    .local v5, "params":Lorg/apache/http/params/HttpParams;
    move-object v5, v3

    if-nez v3, :cond_0

    .line 777
    return-void

    .line 781
    :cond_0
    const-string v3, ""

    .line 783
    .local v3, "bizId":Ljava/lang/String;
    :try_start_0
    invoke-interface {v5, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v3, v6

    .line 784
    invoke-interface {v5, v2}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    move-object v6, v4

    goto :goto_0

    .line 785
    :catchall_0
    move-exception v6

    .line 786
    .local v6, "e":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Get bizId from parameter fail. msg: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .end local v6    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 789
    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_1
    :try_start_1
    invoke-interface {v5, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 794
    .local v6, "targetSpiObj":Ljava/lang/Object;
    move-object v6, v2

    if-nez v2, :cond_2

    .line 795
    return-void

    .line 798
    :cond_2
    invoke-interface {v5, v0}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    .line 800
    instance-of v2, v6, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 801
    move-object v2, v6

    check-cast v2, Ljava/lang/String;

    .line 802
    .local v4, "targetSpi":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 803
    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    .end local v4    # "targetSpi":Ljava/lang/String;
    :cond_3
    return-void

    .line 806
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[paramsCopyToTags] Illegal target spi data type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 810
    .end local v6    # "targetSpiObj":Ljava/lang/Object;
    return-void

    .line 808
    :catchall_1
    move-exception v0

    .line 809
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[paramsCopyToTags] Not find target spi param. msg : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    return-void
.end method

.method public addHeader(Lorg/apache/http/Header;)V
    .locals 1
    .param p1, "header"    # Lorg/apache/http/Header;

    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    return-void
.end method

.method public addTags(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    return-void
.end method

.method public cancel()V
    .locals 4

    .line 617
    const-string v0, "HttpUrlRequest"

    invoke-super {p0}, Lcom/alipay/mobile/common/transport/Request;->cancel()V

    .line 618
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->q:Lorg/apache/http/client/methods/HttpUriRequest;

    if-nez v1, :cond_0

    .line 619
    return-void

    .line 622
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->closeRequestEntity()V

    .line 623
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->closeResponseStream()V

    .line 624
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->q:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    return-void

    .line 627
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->q:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 629
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isTaskStateRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 630
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->networkThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 631
    const-string v1, "invoke cancel, interrupt thread"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_2
    const-string v1, "invoke cancel, abort request"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    return-void

    .line 634
    :catchall_0
    move-exception v1

    .line 635
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "abort request exception. errMsg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 0
    .param p1, "cancelMsg"    # Ljava/lang/String;

    .line 641
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->v:Ljava/lang/String;

    .line 642
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->cancel()V

    .line 643
    return-void
.end method

.method protected closeRequestEntity()V
    .locals 4

    .line 646
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->q:Lorg/apache/http/client/methods/HttpUriRequest;

    if-nez v0, :cond_0

    .line 647
    return-void

    .line 650
    :cond_0
    instance-of v1, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-nez v1, :cond_1

    .line 651
    return-void

    .line 655
    :cond_1
    :try_start_0
    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    const/4 v1, 0x0

    move-object v2, v1

    .line 656
    .local v2, "httpEntityEnclosingRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    move-object v3, v1

    .line 657
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    move-object v3, v0

    if-nez v0, :cond_2

    .line 658
    return-void

    .line 660
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 661
    .local v1, "content":Ljava/io/InputStream;
    move-object v1, v0

    if-nez v0, :cond_3

    .line 662
    return-void

    .line 664
    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    .end local v1    # "content":Ljava/io/InputStream;
    .end local v2    # "httpEntityEnclosingRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    return-void

    .line 665
    :catchall_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeRequestEntity exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpUrlRequest"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected closeResponseStream()V
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->r:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_0

    .line 672
    return-void

    .line 675
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 676
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 677
    return-void

    .line 679
    :cond_1
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 680
    .local v1, "content":Ljava/io/InputStream;
    move-object v1, v0

    if-nez v0, :cond_2

    .line 681
    return-void

    .line 683
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    .end local v1    # "content":Ljava/io/InputStream;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    return-void

    .line 684
    :catchall_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeResponseStream exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpUrlRequest"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 470
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 471
    return v0

    .line 472
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 473
    return v1

    .line 474
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 475
    return v1

    .line 476
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 477
    .local v2, "other":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    if-nez v3, :cond_3

    .line 478
    iget-object v3, v2, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    if-eqz v3, :cond_4

    .line 479
    return v1

    .line 480
    :cond_3
    iget-object v4, v2, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    .line 481
    return v1

    .line 482
    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 483
    iget-object v3, v2, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 484
    return v1

    .line 485
    :cond_5
    iget-object v4, v2, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 486
    return v1

    .line 487
    :cond_6
    return v0
.end method

.method public getBizLog()Ljava/lang/String;
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getCancelMsg()Ljava/lang/String;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 312
    .local v1, "header":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 316
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->c:Ljava/lang/String;

    .line 317
    return-object v0

    .line 319
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_2
    goto :goto_0

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->c:Ljava/lang/String;

    return-object v0

    .line 309
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDataLength()J
    .locals 2

    .line 585
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->o:J

    return-wide v0
.end method

.method public getExtParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 878
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->B:Ljava/util/Map;

    return-object v0
.end method

.method public getFailedException()Ljava/lang/Throwable;
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->failedException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getHeaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHttpEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->p:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public getHttpForm()Lcom/alipay/mobile/common/transport/http/HttpForm;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->l:Lcom/alipay/mobile/common/transport/http/HttpForm;

    return-object v0
.end method

.method public getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->q:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->m:Ljava/io/InputStream;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getReqData()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPerformanceDataCallback()Lcom/alipay/mobile/common/transport/http/PerformanceDataCallback;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->mPerformanceDataCallback:Lcom/alipay/mobile/common/transport/http/PerformanceDataCallback;

    return-object v0
.end method

.method public getReqData()[B
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 424
    const/4 v0, 0x0

    return-object v0

    .line 426
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    return-object v0

    .line 451
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public getTaskState()I
    .locals 1

    .line 755
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->taskState:I

    return v0
.end method

.method public getTimeout()J
    .locals 2

    .line 698
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->mTimeout:J

    return-wide v0
.end method

.method public getUrgentFlag()Z
    .locals 1

    .line 582
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->n:Z

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 457
    const/4 v0, 0x1

    .line 459
    .local v0, "result":I
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "reqDataDigest"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x1f

    .line 463
    :cond_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    .line 464
    const-string/jumbo v4, "operationType"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_2
    add-int/2addr v1, v3

    .line 465
    return v1
.end method

.method protected innerSetDataLength(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 565
    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 566
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    .line 567
    .local v1, "available":I
    move v1, v0

    if-lez v0, :cond_0

    .line 568
    int-to-long v2, v1

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->o:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v1    # "available":I
    :cond_0
    return-void

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "HttpWorker"

    const-string v2, "HttpUrlRequest#setInputStream. available error!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 574
    .end local v0    # "e":Ljava/io/IOException;
    return-void
.end method

.method public isAllowNonNet()Z
    .locals 1

    .line 702
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->allowNonNet:Z

    return v0
.end method

.method public isBgRpc()Z
    .locals 1

    .line 491
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->f:Z

    return v0
.end method

.method public isCapture()Z
    .locals 1

    .line 727
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->capture:Z

    return v0
.end method

.method public isCompress()Z
    .locals 1

    .line 508
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->i:Z

    return v0
.end method

.method public isContainerHeader(Ljava/lang/String;)Z
    .locals 3
    .param p1, "headerName"    # Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 518
    .local v1, "header":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    const/4 v0, 0x1

    return v0

    .line 521
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_0
    goto :goto_0

    .line 522
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isDisableEncrypt()Z
    .locals 1

    .line 711
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->s:Z

    return v0
.end method

.method public isEnableEncrypt()Z
    .locals 1

    .line 719
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->t:Z

    return v0
.end method

.method public isFastReturnFailure()Z
    .locals 1

    .line 854
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->z:Z

    return v0
.end method

.method public isNeedSign()Z
    .locals 1

    .line 846
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->y:Z

    return v0
.end method

.method public isRadicalStrategy()Z
    .locals 1

    .line 826
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->x:Z

    return v0
.end method

.method public isResetCookie()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->g:Z

    return v0
.end method

.method public isSwitchLoginRpc()Z
    .locals 1

    .line 743
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->w:Z

    return v0
.end method

.method public isTaskStateEnd()Z
    .locals 2

    .line 771
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->taskState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTaskStateInit()Z
    .locals 1

    .line 763
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->taskState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTaskStateRunning()Z
    .locals 2

    .line 767
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->taskState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUseEtag()Z
    .locals 1

    .line 499
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->h:Z

    return v0
.end method

.method public isUseHttpStdRetryModel()Z
    .locals 1

    .line 735
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->u:Z

    return v0
.end method

.method public isUseSystemH2()Z
    .locals 1

    .line 814
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->j:Z

    return v0
.end method

.method public setAllowNonNet(Z)V
    .locals 0
    .param p1, "allowNonNet"    # Z

    .line 707
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->allowNonNet:Z

    .line 708
    return-void
.end method

.method public setBgRpc(Z)V
    .locals 0
    .param p1, "mBgRpc"    # Z

    .line 495
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->f:Z

    .line 496
    return-void
.end method

.method public setBizLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizLog"    # Ljava/lang/String;

    .line 862
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->A:Ljava/lang/String;

    .line 863
    return-void
.end method

.method public setCapture(Z)V
    .locals 0
    .param p1, "capture"    # Z

    .line 731
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->capture:Z

    .line 732
    return-void
.end method

.method public setCompress(Z)V
    .locals 0
    .param p1, "compress"    # Z

    .line 512
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->i:Z

    .line 513
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .line 330
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->c:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setDataLength(J)V
    .locals 0
    .param p1, "dataLength"    # J

    .line 589
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->o:J

    .line 590
    return-void
.end method

.method public setDisableEncrypt(Z)V
    .locals 0
    .param p1, "disableEncrypt"    # Z

    .line 715
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->s:Z

    .line 716
    return-void
.end method

.method public setEnableEncrypt(Z)V
    .locals 0
    .param p1, "enableEncrypt"    # Z

    .line 723
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->t:Z

    .line 724
    return-void
.end method

.method public setExtParams(Ljava/util/Map;)V
    .locals 1
    .param p1, "extMapParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 870
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 874
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->B:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 875
    return-void

    .line 871
    :cond_1
    :goto_0
    return-void
.end method

.method protected setFailedException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "failedException"    # Ljava/lang/Throwable;

    .line 834
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->failedException:Ljava/lang/Throwable;

    .line 835
    return-void
.end method

.method public setFastReturnFailure(Z)V
    .locals 0
    .param p1, "fastReturnFailure"    # Z

    .line 858
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->z:Z

    .line 859
    return-void
.end method

.method public setHeader(Lorg/apache/http/Header;)V
    .locals 4
    .param p1, "header"    # Lorg/apache/http/Header;

    .line 358
    if-nez p1, :cond_0

    .line 359
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/Header;

    .line 363
    .local v1, "current":Lorg/apache/http/Header;
    move-object v1, v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 364
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setHeadert. Conflict header , key=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], old_value=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] , new_value=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpUrlRequest"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 367
    return-void

    .line 361
    .end local v1    # "current":Lorg/apache/http/Header;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    return-void
.end method

.method public setHeaders(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "headers"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .line 340
    if-nez p1, :cond_0

    .line 341
    return-void

    .line 343
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    .line 344
    return-void
.end method

.method public setHttpEntity(Lorg/apache/http/HttpEntity;)V
    .locals 2
    .param p1, "httpEntity"    # Lorg/apache/http/HttpEntity;

    .line 597
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->p:Lorg/apache/http/HttpEntity;

    .line 598
    if-eqz p1, :cond_0

    .line 599
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->o:J

    .line 601
    :cond_0
    return-void
.end method

.method public setHttpForm(Lcom/alipay/mobile/common/transport/http/HttpForm;)V
    .locals 2
    .param p1, "httpForm"    # Lcom/alipay/mobile/common/transport/http/HttpForm;

    .line 538
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->m:Ljava/io/InputStream;

    if-nez v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    if-nez v0, :cond_1

    .line 544
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->l:Lcom/alipay/mobile/common/transport/http/HttpForm;

    .line 545
    if-eqz p1, :cond_0

    .line 546
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpForm;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->o:J

    .line 548
    :cond_0
    return-void

    .line 542
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have been set reqData \uff0c not allowed to set httpForm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have been set inputStream  \uff0c not allowed to set httpForm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHttpResponse(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .line 690
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->r:Lorg/apache/http/HttpResponse;

    .line 691
    return-void
.end method

.method public setHttpUriRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 608
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->q:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 609
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 551
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->l:Lcom/alipay/mobile/common/transport/http/HttpForm;

    if-nez v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    if-nez v0, :cond_1

    .line 557
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->m:Ljava/io/InputStream;

    .line 558
    if-eqz p1, :cond_0

    .line 559
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->innerSetDataLength(Ljava/io/InputStream;)V

    .line 561
    :cond_0
    return-void

    .line 555
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have been set mReqData \uff0c not allowed to set inputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have been set httpForm \uff0c not allowed to set inputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNeedSign(Z)V
    .locals 0
    .param p1, "needSign"    # Z

    .line 850
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->y:Z

    .line 851
    return-void
.end method

.method public setNetworkThread(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "networkThread"    # Ljava/lang/Thread;

    .line 751
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->networkThread:Ljava/lang/Thread;

    .line 752
    return-void
.end method

.method public setPerformanceDataCallback(Lcom/alipay/mobile/common/transport/http/PerformanceDataCallback;)V
    .locals 0
    .param p1, "mPerformanceDataCallback"    # Lcom/alipay/mobile/common/transport/http/PerformanceDataCallback;

    .line 842
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->mPerformanceDataCallback:Lcom/alipay/mobile/common/transport/http/PerformanceDataCallback;

    .line 843
    return-void
.end method

.method public setRadicalStrategy(Z)V
    .locals 0
    .param p1, "radicalStrategy"    # Z

    .line 822
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->x:Z

    .line 823
    return-void
.end method

.method public setReqData([B)V
    .locals 2
    .param p1, "reqData"    # [B

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->m:Ljava/io/InputStream;

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->l:Lcom/alipay/mobile/common/transport/http/HttpForm;

    if-nez v0, :cond_1

    .line 296
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    .line 297
    if-eqz p1, :cond_0

    .line 298
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->o:J

    .line 300
    :cond_0
    return-void

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have been set httpForm \uff0c not allowed to set reqData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have been set inputStream  \uff0c not allowed to set reqData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestMethod"    # Ljava/lang/String;

    .line 526
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->k:Ljava/lang/String;

    .line 527
    return-void
.end method

.method public setResetCookie(Z)V
    .locals 0
    .param p1, "resetCookie"    # Z

    .line 434
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->g:Z

    .line 435
    return-void
.end method

.method public setSwitchLoginRpc(Z)V
    .locals 0
    .param p1, "switchLoginRpc"    # Z

    .line 747
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->w:Z

    .line 748
    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 0
    .param p1, "tags"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 399
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    .line 400
    return-void
.end method

.method public setTaskState(I)V
    .locals 0
    .param p1, "taskState"    # I

    .line 759
    iput p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->taskState:I

    .line 760
    return-void
.end method

.method public setTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .line 694
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->mTimeout:J

    .line 695
    return-void
.end method

.method public setUrgentFlag(Z)V
    .locals 0
    .param p1, "isUrgent"    # Z

    .line 580
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->n:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 271
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/ZURLEncodedUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setUseEtag(Z)V
    .locals 0
    .param p1, "useEtag"    # Z

    .line 503
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->h:Z

    .line 504
    return-void
.end method

.method public setUseHttpStdRetryModel(Z)V
    .locals 0
    .param p1, "useHttpStdRetryModel"    # Z

    .line 739
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->u:Z

    .line 740
    return-void
.end method

.method public setUseSystemH2(Z)V
    .locals 0
    .param p1, "useSystemH2"    # Z

    .line 818
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->j:Z

    .line 819
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 443
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 444
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTags()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    :goto_0
    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 443
    const-string v1, "Url : %s,HttpHeader: %s, Tags: %s, Body:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
