.class Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;
.super Ljava/lang/Object;
.source "MicroApplicationContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

.field final synthetic val$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$sceneParams:Landroid/os/Bundle;

.field final synthetic val$sourceAppId:Ljava/lang/String;

.field final synthetic val$startParams:Landroid/os/Bundle;

.field final synthetic val$targetAppId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    .line 992
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    iput-object p2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$sourceAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$targetAppId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$startParams:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$sceneParams:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doStartApp(): onCall [sourceAppId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$sourceAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], [targetAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$targetAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroAppContextImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # getter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Lcom/alipay/mobile/core/impl/MACWorkerMonitor;
    invoke-static {v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$000(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Lcom/alipay/mobile/core/impl/MACWorkerMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # getter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Lcom/alipay/mobile/core/impl/MACWorkerMonitor;
    invoke-static {v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$000(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Lcom/alipay/mobile/core/impl/MACWorkerMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$targetAppId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobile/core/impl/MACWorkerMonitor;->processingAppId:Ljava/lang/String;

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$startParams:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1000
    .local v0, "startParamsCopy":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$sceneParams:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1001
    .local v2, "sceneParamsNotNull":Landroid/os/Bundle;
    :goto_0
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$sourceAppId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$targetAppId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    aput-object v5, v3, v4

    move-object v9, v3

    .line 1002
    .local v9, "args":[Ljava/lang/Object;
    const-string/jumbo v10, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    invoke-static {v10, p0, v9}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1004
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v11, v3

    .line 1005
    .local v11, "rejectAdvices":Ljava/util/Set;
    invoke-static {v10, p0, v9, v11}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object v12

    .line 1006
    .local v12, "aroundResult":Landroid/util/Pair;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doStartApp(): onCall "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", onCallAround.aroundResult=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    if-eqz v12, :cond_3

    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 1015
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$targetAppId:Ljava/lang/String;

    const-string v5, "2002"

    invoke-virtual {v3, v4, v5, v11}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleAppStartupReject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 1016
    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # getter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->o:Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;
    invoke-static {v3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$200(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$targetAppId:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v5}, Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;->onStartAppReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1012
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # getter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;
    invoke-static {v1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$100(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Lcom/alipay/mobile/core/ApplicationManager;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$targetAppId:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/alipay/mobile/core/ApplicationManager;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 1013
    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    iget-object v4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$sourceAppId:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$targetAppId:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    move-object v6, v0

    move-object v7, v2

    invoke-virtual/range {v3 .. v8}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->doStartApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 1018
    :goto_2
    invoke-static {v10, p0, v9}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1019
    return-void
.end method
