.class Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$2;
.super Ljava/lang/Object;
.source "FgBgMonitorImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$FgBgCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->onProcessFgBgWatcherInited()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private processName:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;

    .line 176
    iput-object p1, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$2;->this$0:Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$2;->processName:Ljava/lang/String;

    return-void
.end method

.method private getProcessName()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$2;->processName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$2;->processName:Ljava/lang/String;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$2;->processName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onMoveToBackground(Ljava/lang/String;)V
    .locals 5
    .param p1, "lastTopActivityName"    # Ljava/lang/String;

    .line 194
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 195
    .local v2, "message":Landroid/os/Message;
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v0, Landroid/os/Message;->what:I

    .line 196
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v1, v0

    const-string v3, "key_activity"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$2;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "key_process_name"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-string v0, "key_event_time"

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 200
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$2;->this$0:Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;

    # getter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->access$200(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sendMessage(Landroid/content/Context;Landroid/os/Message;)V

    .line 203
    return-void
.end method

.method public onMoveToForeground(Ljava/lang/String;)V
    .locals 5
    .param p1, "topActivityName"    # Ljava/lang/String;

    .line 181
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 182
    .local v2, "message":Landroid/os/Message;
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v0, Landroid/os/Message;->what:I

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v1, v0

    const-string v3, "key_activity"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$2;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "key_process_name"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-string v0, "key_event_time"

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 187
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$2;->this$0:Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;

    # getter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->access$200(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sendMessage(Landroid/content/Context;Landroid/os/Message;)V

    .line 190
    return-void
.end method
