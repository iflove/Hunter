.class public Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;
.super Ljava/lang/Object;
.source "H5BugmeIdGenerator.java"


# static fields
.field private static sId:I

.field private static sPid:I

.field private static sRequestId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sPid:I

    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sId:I

    .line 20
    sput v0, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sRequestId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBugmeViewId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    .locals 3
    .param p0, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 31
    if-eqz p0, :cond_0

    .line 32
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    .local v1, "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "view_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37
    .end local v1    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getSessionId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    .locals 3
    .param p0, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 41
    if-eqz p0, :cond_0

    .line 42
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    .local v1, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "session_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    .end local v1    # "session":Lcom/alipay/mobile/h5container/api/H5Session;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static declared-synchronized nextId()I
    .locals 3

    const-class v0, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;

    monitor-enter v0

    .line 27
    :try_start_0
    sget v1, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized nextRequestId()I
    .locals 3

    const-class v0, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;

    monitor-enter v0

    .line 23
    :try_start_0
    sget v1, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sRequestId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 23
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
