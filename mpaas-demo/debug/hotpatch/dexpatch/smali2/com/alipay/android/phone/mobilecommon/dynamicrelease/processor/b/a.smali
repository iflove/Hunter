.class public final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b/a;
.super Ljava/lang/Object;
.source "BirdnestRequestParameter.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b/a;->a:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public final getRequestParam()Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;
    .locals 3

    .line 24
    new-instance v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;

    invoke-direct {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;-><init>()V

    const/4 v1, 0x0

    .line 25
    .local v1, "param":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;
    move-object v1, v0

    sget-object v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BIRDNEST:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 26
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getBirdNestVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;->updateVersion:Ljava/lang/String;

    .line 27
    return-object v1
.end method
