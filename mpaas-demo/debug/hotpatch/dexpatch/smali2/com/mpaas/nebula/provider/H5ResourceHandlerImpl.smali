.class public Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl;
.super Ljava/lang/Object;
.source "H5ResourceHandlerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl$ResourceRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5ResourceHandlerImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 21
    const-string v0, "image"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->matchLocalId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "localId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    :try_start_0
    new-instance v1, Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl$ResourceRequest;

    invoke-direct {v1, p0, v0}, Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl$ResourceRequest;-><init>(Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl$ResourceRequest;->run()Ljava/io/InputStream;

    move-result-object v1

    .line 25
    .local v1, "ins":Ljava/io/InputStream;
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const-string v3, "image/jpeg"

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 26
    .end local v1    # "ins":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 27
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "H5ResourceHandlerImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
