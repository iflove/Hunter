.class final Lcom/alipay/mobile/nebula/util/H5Utils$1;
.super Ljava/lang/Object;
.source "H5Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/util/H5Utils;->landingMonitor(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$bizScenario:Ljava/lang/String;

.field final synthetic val$origUrl:Ljava/lang/String;

.field final synthetic val$parsedUrl:Ljava/lang/String;

.field final synthetic val$publicId:Ljava/lang/String;

.field final synthetic val$result:Z

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$origUrl:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$result:Z

    iput-object p3, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$parsedUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$appId:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$publicId:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$bizScenario:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 817
    const-string v0, "H5_STRPLANDING_RESULT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$origUrl:Ljava/lang/String;

    const-string/jumbo v2, "origUrl"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 818
    .local v0, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$result:Z

    const-string v2, "in"

    const-string/jumbo v3, "result"

    if-eqz v1, :cond_0

    .line 819
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$parsedUrl:Ljava/lang/String;

    const-string/jumbo v5, "parsedUrl"

    invoke-virtual {v1, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    goto :goto_0

    .line 821
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v3, "unknown"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 823
    :goto_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$appId:Ljava/lang/String;

    const-string v3, "appId"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$publicId:Ljava/lang/String;

    const-string/jumbo v3, "publicId"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 824
    const-string/jumbo v2, "refViewID"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$bizScenario:Ljava/lang/String;

    .line 825
    const-string v3, "bizScenario"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 826
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 827
    return-void
.end method
