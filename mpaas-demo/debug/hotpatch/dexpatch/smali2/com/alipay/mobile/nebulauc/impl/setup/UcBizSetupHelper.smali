.class public Lcom/alipay/mobile/nebulauc/impl/setup/UcBizSetupHelper;
.super Ljava/lang/Object;
.source "UcBizSetupHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 21
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 22
    .local v0, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    .line 24
    .local v1, "size":I
    new-array v2, v1, [Ljava/lang/String;

    .line 25
    .local v2, "hostArray":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 26
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 25
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x1

    invoke-static {v3, v3, p1, v2}, Lcom/uc/webview/export/extension/UCSettings;->updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 32
    .end local v1    # "size":I
    .end local v2    # "hostArray":[Ljava/lang/String;
    :cond_1
    return-void
.end method
