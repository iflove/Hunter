.class Lcom/alipay/mobile/core/loading/impl/LoadingPage$2;
.super Ljava/util/TimerTask;
.source "LoadingPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/loading/impl/LoadingPage;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPage;

.field final synthetic val$timeout:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/loading/impl/LoadingPage;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/loading/impl/LoadingPage;

    .line 139
    iput-object p1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage$2;->this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPage;

    iput-object p2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage$2;->val$timeout:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage$2;->this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPage;

    # getter for: Lcom/alipay/mobile/core/loading/impl/LoadingPage;->g:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;
    invoke-static {v0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->access$100(Lcom/alipay/mobile/core/loading/impl/LoadingPage;)Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage$2;->this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPage;

    # getter for: Lcom/alipay/mobile/core/loading/impl/LoadingPage;->c:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->access$000(Lcom/alipay/mobile/core/loading/impl/LoadingPage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->findLoadingRecordByAppId(Ljava/lang/String;)Lcom/alipay/mobile/core/loading/impl/LoadingRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LoadingPagePending: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage$2;->this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPage;

    # getter for: Lcom/alipay/mobile/core/loading/impl/LoadingPage;->c:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->access$000(Lcom/alipay/mobile/core/loading/impl/LoadingPage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage$2;->this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPage;

    # getter for: Lcom/alipay/mobile/core/loading/impl/LoadingPage;->c:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->access$000(Lcom/alipay/mobile/core/loading/impl/LoadingPage;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage$2;->val$timeout:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleLoadingPagePending(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method
