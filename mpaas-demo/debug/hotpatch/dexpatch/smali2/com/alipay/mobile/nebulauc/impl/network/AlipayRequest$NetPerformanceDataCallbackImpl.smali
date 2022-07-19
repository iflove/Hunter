.class Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;
.super Lcom/alipay/mobile/common/transport/http/PerformanceDataCallback;
.source "AlipayRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetPerformanceDataCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)V
    .locals 0

    .line 2010
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/PerformanceDataCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    .param p2, "x1"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;

    .line 2010
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;-><init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)V

    return-void
.end method


# virtual methods
.method public callback(Ljava/util/Map;)V
    .locals 11
    .param p1, "performanceMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2013
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # setter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mNetPerformanceData:Ljava/util/Map;
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1602(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Ljava/util/Map;)Ljava/util/Map;

    .line 2014
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleResponseGetError:Z
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1200(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1500(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sEnableUploadNetInfoWhenSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 2015
    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$200(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->canUploadNetInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$100(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mNetPerformanceData:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1600(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 2017
    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->protocol:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1700(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mHighPriorityRequest:Z
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1800(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Z

    move-result v4

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->statusCode:I
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1900(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)I

    move-result v5

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mHandleRequestTime:J
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$2000(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mRequestDuration:J
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$2100(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)J

    move-result-wide v8

    const/4 v10, 0x0

    .line 2016
    invoke-static/range {v1 .. v10}, Lcom/alipay/mobile/nebulauc/impl/network/NetInfoGenerator;->generateNetInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZIJJZ)Ljava/lang/String;

    move-result-object v0

    .line 2018
    .local v0, "netInfo":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1500(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$NetPerformanceDataCallbackImpl;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$200(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->addNetRequestInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    .end local v0    # "netInfo":Ljava/lang/String;
    :cond_0
    return-void
.end method
