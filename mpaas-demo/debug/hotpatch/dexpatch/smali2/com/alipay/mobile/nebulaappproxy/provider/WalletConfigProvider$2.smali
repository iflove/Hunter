.class Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider$2;
.super Ljava/lang/Object;
.source "WalletConfigProvider.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->getConfigJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;

    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider$2;->b:Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sJsonArrayCache onChange: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5ConfigProvider"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 123
    .local v2, "array":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider$2;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider$2;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    nop

    .end local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    return-void

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v2, "getConfigJSONArray onChange"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
