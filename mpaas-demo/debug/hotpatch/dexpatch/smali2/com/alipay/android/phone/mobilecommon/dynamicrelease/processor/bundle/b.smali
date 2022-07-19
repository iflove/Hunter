.class public final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/b;
.super Ljava/lang/Object;
.source "BundleRequestParameter.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/b;->a:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public final getRequestParam()Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;
    .locals 6

    .line 35
    new-instance v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;

    invoke-direct {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 36
    .local v2, "param":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;
    move-object v2, v0

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    iput-object v3, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 37
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getBundleVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;->updateVersion:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/c;->c(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    move-object v3, v1

    .line 40
    .local v3, "updateBundles":Ljava/util/Map;
    move-object v3, v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;->dynamicResourceIdv:Ljava/util/List;

    .line 43
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 44
    .local v4, "bundleName":Ljava/lang/String;
    new-instance v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;

    invoke-direct {v5}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;-><init>()V

    .line 45
    .local v1, "dynamicResourceIdv":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;
    move-object v1, v5

    iput-object v4, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;->resId:Ljava/lang/String;

    .line 46
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;->resVersion:Ljava/lang/String;

    .line 47
    iget-object v5, v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;->dynamicResourceIdv:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v1    # "dynamicResourceIdv":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;
    .end local v4    # "bundleName":Ljava/lang/String;
    goto :goto_0

    .line 89
    :cond_0
    return-object v2
.end method
