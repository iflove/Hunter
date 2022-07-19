.class final Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;
.super Ljava/lang/Object;
.source "TinyAppSubPackagePlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappproxy/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;->prepareSubPackage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulaappproxy/utils/Callback<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;

.field final synthetic e:Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;ZLcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;

    .line 218
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->e:Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->a:Z

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->d:Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 9
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 222
    if-nez p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->d:Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 223
    return-void

    .line 226
    :cond_0
    :try_start_0
    const-string/jumbo v0, "rootAttrib"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "rootAttrib":Ljava/lang/String;
    const-string v1, "downloadStatus"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    move-object v3, v2

    .line 229
    .local v3, "downloadStatus":Ljava/lang/Boolean;
    move-object v7, v1

    .end local v3    # "downloadStatus":Ljava/lang/Boolean;
    .local v7, "downloadStatus":Ljava/lang/Boolean;
    const-string v3, "TinyAppSubPackagePlugin"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "prepareSubPackage callback...download failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->a:Z

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v1, :cond_1

    .line 234
    const/16 v2, 0xe

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u4e0b\u8f7d\u5931\u8d25_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->d:Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 237
    return-void

    .line 240
    :cond_2
    :try_start_2
    const-string v1, "installStatus"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 241
    .local v2, "installStatus":Ljava/lang/Boolean;
    move-object v8, v1

    .end local v2    # "installStatus":Ljava/lang/Boolean;
    .local v8, "installStatus":Ljava/lang/Boolean;
    if-eqz v1, :cond_4

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "prepareSubPackage callback...install failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->a:Z

    if-eqz v1, :cond_3

    .line 245
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v1, :cond_3

    .line 246
    const/16 v2, 0xf

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5b89\u88c5\u5931\u8d25_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->d:Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 249
    return-void

    .line 253
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->e:Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->c:Ljava/lang/String;

    const-string v3, "downloadUrl"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->a:Z

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-object v3, v0

    # invokes: Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;->packageParse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;->access$100(Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    .end local v0    # "rootAttrib":Ljava/lang/String;
    .end local v7    # "downloadStatus":Ljava/lang/Boolean;
    .end local v8    # "installStatus":Ljava/lang/Boolean;
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->d:Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 257
    return-void

    .line 256
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->d:Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;->a(Lcom/alibaba/fastjson/JSONObject;)V

    throw v0
.end method


# virtual methods
.method public final synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 218
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method
