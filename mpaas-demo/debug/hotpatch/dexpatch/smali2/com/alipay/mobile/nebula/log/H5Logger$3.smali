.class final Lcom/alipay/mobile/nebula/log/H5Logger$3;
.super Ljava/lang/Object;
.source "H5Logger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/log/H5Logger;->h5BehaviorLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$abTestInfo:Ljava/lang/String;

.field final synthetic val$actionId:Ljava/lang/String;

.field final synthetic val$entityId:Ljava/lang/String;

.field final synthetic val$logLevel:I

.field final synthetic val$pageId:Ljava/lang/String;

.field final synthetic val$param1:Ljava/lang/String;

.field final synthetic val$param2:Ljava/lang/String;

.field final synthetic val$param3:Ljava/lang/String;

.field final synthetic val$params4:Ljava/lang/String;

.field final synthetic val$seedID:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$ucId:Ljava/lang/String;

.field final synthetic val$uniteParam4:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$type:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$seedID:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$abTestInfo:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$entityId:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$pageId:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$ucId:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$param1:Ljava/lang/String;

    iput-object p8, p0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$param2:Ljava/lang/String;

    iput-object p9, p0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$param3:Ljava/lang/String;

    iput-object p10, p0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$params4:Ljava/lang/String;

    iput-object p11, p0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$uniteParam4:Ljava/lang/String;

    iput p12, p0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$logLevel:I

    iput-object p13, p0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$actionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 156
    move-object/from16 v0, p0

    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$type:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$seedID:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$abTestInfo:Ljava/lang/String;

    iget-object v6, v0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$entityId:Ljava/lang/String;

    iget-object v7, v0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$pageId:Ljava/lang/String;

    iget-object v8, v0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$ucId:Ljava/lang/String;

    iget-object v9, v0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$param1:Ljava/lang/String;

    iget-object v10, v0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$param2:Ljava/lang/String;

    iget-object v11, v0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$param3:Ljava/lang/String;

    iget-object v12, v0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$params4:Ljava/lang/String;

    iget-object v13, v0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$uniteParam4:Ljava/lang/String;

    iget v14, v0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$logLevel:I

    iget-object v15, v0, Lcom/alipay/mobile/nebula/log/H5Logger$3;->val$actionId:Ljava/lang/String;

    sget-object v16, Lcom/alipay/mobile/nebula/log/H5Logger;->bizScenario:Ljava/lang/String;

    invoke-interface/range {v2 .. v16}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->h5BehaviorLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method
