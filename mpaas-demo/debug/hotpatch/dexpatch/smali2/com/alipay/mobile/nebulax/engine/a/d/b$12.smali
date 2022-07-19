.class Lcom/alipay/mobile/nebulax/engine/a/d/b$12;
.super Ljava/lang/Object;
.source "NXH5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Lcom/alipay/mobile/nebulax/engine/a/d/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;ZLcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1513
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->g:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->a:Z

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->b:Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;

    iput-object p4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->c:Landroid/net/Uri;

    iput-object p5, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->e:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1516
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->g:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->g:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string v1, "page ==null not log"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    return-void

    .line 1522
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->g:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->b(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getResPkgInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1523
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->g:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->b(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->getResPkgInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1524
    nop

    .line 1525
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->b:Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;

    if-eqz v1, :cond_1

    .line 1526
    iget-object v1, v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->contentPackageStatus:Ljava/lang/String;

    goto :goto_0

    .line 1525
    :cond_1
    const-string v1, ""

    .line 1528
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->g:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->b(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->setResPkgInfo(Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->g:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->e(Lcom/alipay/mobile/nebulax/engine/a/d/b;)V

    .line 1530
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->g:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->b(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "h5AppVersion"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/service/GlobalInfoRecorder$Utils;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->g:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->b(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getResPkgInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "h5ResPkgInfo"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/service/GlobalInfoRecorder$Utils;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->g:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebulax/engine/a/d/b;Landroid/net/Uri;)V

    .line 1536
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->g:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->b(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->e:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->a:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebulax/engine/a/d/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1537
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 1538
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProviderUseCache(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 1539
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->f:Z

    if-eqz v1, :cond_3

    .line 1540
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->g:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->e:Ljava/lang/String;

    invoke-static {v1, v0, v3, v4, v2}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebulax/engine/a/d/b;Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1543
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->g:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->f(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->g:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->f(Lcom/alipay/mobile/nebulax/engine/a/d/b;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1544
    const-string v0, "h5_goto_fallback"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1545
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1546
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$12;->f:Z

    if-eqz v1, :cond_4

    const-string v1, "false"

    goto :goto_1

    :cond_4
    const-string v1, "true"

    :goto_1
    const-string v2, "goto_fallback"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1544
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1548
    :cond_5
    return-void
.end method
