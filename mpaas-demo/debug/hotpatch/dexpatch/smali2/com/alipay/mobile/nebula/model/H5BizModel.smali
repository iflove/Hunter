.class public Lcom/alipay/mobile/nebula/model/H5BizModel;
.super Ljava/lang/Object;
.source "H5BizModel.java"


# instance fields
.field private messenger:Landroid/os/Messenger;

.field private result:Lcom/alibaba/fastjson/JSONObject;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/nebula/model/H5BizModel;->messenger:Landroid/os/Messenger;

    .line 22
    return-void
.end method


# virtual methods
.method public getMessenger()Landroid/os/Messenger;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebula/model/H5BizModel;->messenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public getResult()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebula/model/H5BizModel;->result:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebula/model/H5BizModel;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public setMessenger(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/nebula/model/H5BizModel;->messenger:Landroid/os/Messenger;

    .line 30
    return-void
.end method

.method public setResult(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/fastjson/JSONObject;

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/nebula/model/H5BizModel;->result:Lcom/alibaba/fastjson/JSONObject;

    .line 38
    return-void
.end method

.method public setRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/nebula/model/H5BizModel;->runnable:Ljava/lang/Runnable;

    .line 46
    return-void
.end method
