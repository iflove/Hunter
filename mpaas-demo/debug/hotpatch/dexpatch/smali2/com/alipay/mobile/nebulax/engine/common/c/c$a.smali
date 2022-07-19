.class Lcom/alipay/mobile/nebulax/engine/common/c/c$a;
.super Ljava/lang/Object;
.source "CommonExitPerform.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/engine/common/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;

.field final synthetic c:Lcom/alipay/mobile/nebulax/engine/common/c/c;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/common/c/c;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c$a;->c:Lcom/alipay/mobile/nebulax/engine/common/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c$a;->a:Z

    .line 84
    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;)V
    .locals 6

    .line 88
    iget-object p1, p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c$a;->a:Z

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c$a;->c:Lcom/alipay/mobile/nebulax/engine/common/c/c;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/common/c/c;->b(Lcom/alipay/mobile/nebulax/engine/common/c/c;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collectJsApi param : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "syncJsApis"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/nebulax/common/utils/JSONUtils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 92
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 94
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 95
    if-eqz v3, :cond_0

    .line 96
    const-string v4, "apiName"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulax/common/utils/JSONUtils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    const-string v5, "params"

    invoke-static {v3, v5, v2}, Lcom/alipay/mobile/nebulax/common/utils/JSONUtils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 98
    iget-object v5, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c$a;->c:Lcom/alipay/mobile/nebulax/engine/common/c/c;

    invoke-virtual {v5, v4, v3}, Lcom/alipay/mobile/nebulax/engine/common/c/c;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c$a;->c:Lcom/alipay/mobile/nebulax/engine/common/c/c;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/common/c/c;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 103
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c$a;->c:Lcom/alipay/mobile/nebulax/engine/common/c/c;

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c$a;->b:Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulax/engine/common/c/c;->a(Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V

    goto :goto_1

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c$a;->b:Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;->afterProcess(Z)V

    .line 107
    :goto_1
    return-void
.end method
