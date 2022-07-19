.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setUpPage(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 733
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "H5PageImpl"

    .line 736
    const-string v1, "0"

    .line 737
    .local v1, "walletMem":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 741
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/h5container/api/H5PageCount;->totalRamMemorySize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 742
    .local v2, "totalMem":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5PageCount;->getAll()Ljava/lang/String;

    move-result-object v3

    .line 743
    .local v3, "recordUrls":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "H5PAGE_INDEX create "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget v5, v5, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " walletMem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " urls "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " totalRam "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget v4, v4, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    const/16 v5, 0x8

    if-le v4, v5, :cond_1

    .line 746
    const-string v4, "H5PAGE_INDEX > 8 send monitor"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v5, 0x0

    .line 748
    .local v5, "monitorInfo":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v4

    const-string v6, "urls"

    invoke-virtual {v4, v6, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const-string v4, "usedMemory"

    invoke-virtual {v5, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    const-string v4, "totalMemory"

    invoke-virtual {v5, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v6, "H5_VC_OverLimit"

    invoke-virtual {v4, v6, v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    .end local v2    # "totalMem":Ljava/lang/String;
    .end local v3    # "recordUrls":Ljava/lang/String;
    .end local v5    # "monitorInfo":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    return-void

    .line 753
    :catchall_0
    move-exception v2

    .line 754
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 757
    .end local v2    # "e":Ljava/lang/Throwable;
    return-void

    .line 738
    :cond_2
    :goto_0
    return-void
.end method
