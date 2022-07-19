.class public Lcom/alipay/mobile/nebula/callback/H5ShareCallback;
.super Ljava/lang/Object;
.source "H5ShareCallback.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CallBack;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5ShareCallback"

.field public static TIMEOUT:I


# instance fields
.field private h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

.field private shareCallBack:Z

.field private shareResult:Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/16 v0, 0x3e8

    sput v0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;)V
    .locals 2
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "shareResult"    # Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 36
    iput-object p2, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareResult:Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareCallBack:Z

    .line 38
    sget v0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->TIMEOUT:I

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 39
    return-void
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .line 95
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getNebulaResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7
    .param p1, "result"    # Lcom/alibaba/fastjson/JSONObject;

    .line 43
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareCallBack:Z

    if-eqz v0, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareCallBack:Z

    .line 47
    const-string v0, "H5ShareCallback"

    const-string v1, "getShare or getCollect from share.js"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v1, :cond_1

    .line 49
    return-void

    .line 51
    :cond_1
    if-nez p1, :cond_3

    .line 52
    const-string v1, "getShare or getCollect from share.js but get nothing"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, ""

    .line 54
    .local v0, "defaultImageUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "defaultDesc":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 56
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_shareurl:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "defaultTitle":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v4, 0x0

    move-object v5, v4

    .line 59
    .local v5, "defaultResult":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v3

    const-string v6, "imgUrl"

    invoke-virtual {v3, v6, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v3, "desc"

    invoke-virtual {v5, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v3, "title"

    invoke-virtual {v5, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v3, "link"

    invoke-virtual {v5, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "fromMeta"

    invoke-virtual {v5, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v3, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareResult:Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;

    invoke-interface {v3, v5}, Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;->shareResult(Lcom/alibaba/fastjson/JSONObject;)V

    .line 65
    .end local v0    # "defaultImageUrl":Ljava/lang/String;
    .end local v1    # "defaultDesc":Ljava/lang/String;
    .end local v2    # "defaultTitle":Ljava/lang/String;
    .end local v5    # "defaultResult":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareResult:Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;->shareResult(Lcom/alibaba/fastjson/JSONObject;)V

    .line 68
    return-void
.end method

.method public run()V
    .locals 7

    .line 72
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareCallBack:Z

    if-eqz v0, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareCallBack:Z

    .line 76
    const-string v0, "H5ShareCallback"

    const-string v1, "getShare or getCollect timeout return default"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_1

    .line 78
    return-void

    .line 80
    :cond_1
    const-string v1, ""

    .line 81
    .local v1, "defaultImageUrl":Ljava/lang/String;
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "defaultDesc":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 83
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_shareurl:I

    .line 84
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "defaultTitle":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v4, 0x0

    move-object v5, v4

    .line 86
    .local v5, "defaultResult":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v3

    const-string v6, "imgUrl"

    invoke-virtual {v3, v6, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v3, "desc"

    invoke-virtual {v5, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string/jumbo v3, "title"

    invoke-virtual {v5, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v3, "link"

    invoke-virtual {v5, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "fromMeta"

    invoke-virtual {v5, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v3, p0, Lcom/alipay/mobile/nebula/callback/H5ShareCallback;->shareResult:Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;

    invoke-interface {v3, v5}, Lcom/alipay/mobile/nebula/callback/H5ShareCallback$ShareResult;->shareResult(Lcom/alibaba/fastjson/JSONObject;)V

    .line 92
    return-void
.end method
