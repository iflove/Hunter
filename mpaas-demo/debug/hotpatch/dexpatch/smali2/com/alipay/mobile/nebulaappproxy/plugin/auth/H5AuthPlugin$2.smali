.class Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;
.super Ljava/lang/Object;
.source "H5AuthPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->d(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic d:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;

    .line 553
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->a:Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, ""

    const-string v1, "H5AuthPlugin"

    .line 557
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;

    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;)Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;

    move-result-object v3

    if-nez v3, :cond_0

    .line 558
    return-void

    .line 560
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;

    .line 561
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;)Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->a:Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;

    invoke-interface {v3, v4}, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;->createAuthCodeUrl(Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;)Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/res/WalletAuthCodeCreateRes;

    move-result-object v3

    const/4 v4, 0x0

    .line 562
    .local v4, "result":Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/res/WalletAuthCodeCreateRes;
    move-object v4, v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    iget-boolean v3, v4, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/res/WalletAuthCodeCreateRes;->success:Z

    if-eqz v3, :cond_1

    iget-object v3, v4, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/res/WalletAuthCodeCreateRes;->authDestUrl:Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 564
    .local v3, "succeed":Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "requestAuthUrl success "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->b:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(ZLjava/lang/String;)V

    .line 566
    if-eqz v3, :cond_2

    .line 567
    iget-object v6, v4, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/res/WalletAuthCodeCreateRes;->authDestUrl:Ljava/lang/String;

    .line 568
    .local v6, "authUrl":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "requestAuthUrl authUrl "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v5, v7, v6, v8}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 570
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 571
    .end local v6    # "authUrl":Ljava/lang/String;
    return-void

    .line 572
    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v2, v5, v0, v6}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 573
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    .end local v3    # "succeed":Z
    .end local v4    # "result":Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/res/WalletAuthCodeCreateRes;
    return-void

    .line 575
    :catchall_0
    move-exception v3

    .line 576
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "requestAuthUrl exception "

    invoke-static {v1, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 577
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v2, v1, v0, v4}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 578
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin$2;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthPlugin;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 580
    .end local v3    # "e":Ljava/lang/Throwable;
    return-void
.end method
