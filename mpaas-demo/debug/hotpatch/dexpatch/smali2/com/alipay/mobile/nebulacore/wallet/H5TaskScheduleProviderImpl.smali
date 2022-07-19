.class public Lcom/alipay/mobile/nebulacore/wallet/H5TaskScheduleProviderImpl;
.super Ljava/lang/Object;
.source "H5TaskScheduleProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5TaskScheduleProviderImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addIdleTask(Ljava/lang/Runnable;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "taskWeight"    # I

    .line 17
    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    const/4 v1, 0x0

    .line 19
    .local v1, "taskService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    move-object v1, v0

    const-string v2, "H5TaskScheduleProviderImpl"

    if-nez v0, :cond_0

    .line 20
    const-string v0, "taskService==null"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    return v0

    .line 23
    :cond_0
    const-string v0, "get taskService add addIdleTask"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1, p1, p2, p3}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->addIdleTask(Ljava/lang/Runnable;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
