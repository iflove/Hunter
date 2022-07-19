.class public Lcom/alipay/mobile/nebulax/engine/common/c/b$a;
.super Ljava/lang/Object;
.source "CommonBackPerform.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/engine/common/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:J

.field public c:Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;

.field final synthetic d:Lcom/alipay/mobile/nebulax/engine/common/c/b;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/common/c/b;)V
    .locals 2

    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b$a;->d:Lcom/alipay/mobile/nebulax/engine/common/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b$a;->a:Z

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b$a;->b:J

    .line 121
    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b$a;->c:Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;

    .line 125
    return-void
.end method

.method public onCallBack(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;)V
    .locals 3

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b$a;->a:Z

    .line 130
    iget-object v1, p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "prevent"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulax/common/utils/JSONUtils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewResult;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    .line 131
    const-string v1, "prevented"

    invoke-static {p1, v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/JSONUtils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b$a;->d:Lcom/alipay/mobile/nebulax/engine/common/c/b;

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/common/c/b;->a(Lcom/alipay/mobile/nebulax/engine/common/c/b;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back event prevent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    if-eqz v0, :cond_2

    .line 134
    return-void

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b$a;->d:Lcom/alipay/mobile/nebulax/engine/common/c/b;

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b$a;->c:Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulax/engine/common/c/b;->b(Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V

    .line 138
    return-void
.end method
