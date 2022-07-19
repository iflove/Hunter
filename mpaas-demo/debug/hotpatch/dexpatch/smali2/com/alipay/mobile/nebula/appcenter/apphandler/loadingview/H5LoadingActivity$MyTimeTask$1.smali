.class Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;
.super Ljava/lang/Object;
.source "H5LoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    .line 157
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->isFinishing()Z

    move-result v0

    const-string v1, "H5LoadingActivity"

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "isFinishing not handler timeout"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "timeout  type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->type:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->type:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->isSyncType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    const-string v0, "h5_show_nebulaApp_timeout_page"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->appId:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->type:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->timeout:I
    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->access$200(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->sendToWebFail()V

    return-void

    .line 175
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5StartAppInfo()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v0

    .line 176
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingManager()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    move-result-object v1

    .line 175
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitAndStartApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 178
    return-void
.end method
