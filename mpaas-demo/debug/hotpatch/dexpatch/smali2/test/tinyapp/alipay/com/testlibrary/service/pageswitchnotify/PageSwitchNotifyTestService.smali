.class public Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;
.super Ljava/lang/Object;
.source "PageSwitchNotifyTestService.java"

# interfaces
.implements Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:[Ljava/lang/String;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "pushWindow"

    const-string v1, "h5_switch_sessiontab"

    const-string v2, "h5PageResume"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;->b:[Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;->c:Ljava/util/Set;

    .line 55
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;->d:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 60
    return-void
.end method

.method public final a(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 96
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 69
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "eventAction":Ljava/lang/String;
    const-string v1, ""

    .line 71
    .local v1, "userAction":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v2, "extraData":Landroid/os/Bundle;
    const-string v3, "pushWindow"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    const-string v1, "com.tinyapp.alipay.action.switchPage"

    goto :goto_0

    .line 75
    :cond_0
    const-string v3, "h5_switch_sessiontab"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    const-string v1, "com.tinyapp.alipay.action.switchTab"

    goto :goto_0

    .line 77
    :cond_1
    const-string v3, "h5PageResume"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    sget-object v3, Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;->a:Ljava/lang/String;

    const-string v4, "tiny app resume"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, "com.tinyapp.alipay.action.pageResume"

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-string v5, "page_resume_start_time"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 82
    :cond_2
    sget-object v3, Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 86
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 87
    .local v4, "intent":Landroid/content/Intent;
    move-object v4, v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 88
    iget-object v3, p0, Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;->d:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v3, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 91
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public final b()V
    .locals 0

    .line 65
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;->b:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
