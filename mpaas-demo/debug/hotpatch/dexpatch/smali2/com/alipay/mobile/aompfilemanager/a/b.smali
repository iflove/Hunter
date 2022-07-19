.class public final Lcom/alipay/mobile/aompfilemanager/a/b;
.super Ljava/lang/Object;
.source "ImageHelpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/aompfilemanager/a/b$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/aompfilemanager/a/b$a;
    .locals 4

    .line 25
    new-instance v0, Lcom/alipay/mobile/aompfilemanager/a/b$a;

    invoke-direct {v0}, Lcom/alipay/mobile/aompfilemanager/a/b$a;-><init>()V

    .line 27
    invoke-static {p3}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/alipay/mobile/aompfilemanager/a/b$a;->b:I

    .line 30
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/aompfilemanager/a/b$a;->c:I

    .line 39
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 40
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 41
    const-class v3, Lcom/alipay/mobileinno/biz/outservice/rpc/api/SFSResourceRpcService;

    .line 42
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobileinno/biz/outservice/rpc/api/SFSResourceRpcService;

    .line 43
    new-instance v3, Lcom/alipay/mobileinno/biz/outservice/rpc/request/SFSUploadReq;

    invoke-direct {v3}, Lcom/alipay/mobileinno/biz/outservice/rpc/request/SFSUploadReq;-><init>()V

    .line 44
    iput-object p0, v3, Lcom/alipay/mobileinno/biz/outservice/rpc/request/SFSUploadReq;->bizScene:Ljava/lang/String;

    .line 45
    iput-object p1, v3, Lcom/alipay/mobileinno/biz/outservice/rpc/request/SFSUploadReq;->scope:Ljava/lang/String;

    .line 46
    iput-object p3, v3, Lcom/alipay/mobileinno/biz/outservice/rpc/request/SFSUploadReq;->content:Ljava/lang/String;

    .line 47
    iput-object p2, v3, Lcom/alipay/mobileinno/biz/outservice/rpc/request/SFSUploadReq;->reference:Ljava/lang/String;

    .line 49
    invoke-interface {v2, v3}, Lcom/alipay/mobileinno/biz/outservice/rpc/api/SFSResourceRpcService;->sfsUpload(Lcom/alipay/mobileinno/biz/outservice/rpc/request/SFSUploadReq;)Lcom/alipay/mobileinno/biz/outservice/rpc/response/SFSUploadResult;

    move-result-object p0

    .line 50
    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/alipay/mobileinno/biz/outservice/rpc/response/SFSUploadResult;->path:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobileinno/biz/outservice/rpc/response/SFSUploadResult;->path:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/aompfilemanager/a/b$a;->a:Ljava/lang/String;

    .line 54
    iget-object p1, p0, Lcom/alipay/mobileinno/biz/outservice/rpc/response/SFSUploadResult;->bindId:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/aompfilemanager/a/b$a;->d:Ljava/lang/String;

    .line 55
    iget p0, p0, Lcom/alipay/mobileinno/biz/outservice/rpc/response/SFSUploadResult;->resultStatus:I

    iput p0, v0, Lcom/alipay/mobile/aompfilemanager/a/b$a;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    return-object v0

    .line 51
    :cond_2
    :goto_0
    return-object v1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageHelpUtil"

    invoke-static {p1, p0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-object v1
.end method
