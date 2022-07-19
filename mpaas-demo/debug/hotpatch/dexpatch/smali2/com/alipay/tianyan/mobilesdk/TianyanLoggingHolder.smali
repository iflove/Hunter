.class public Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;
.super Ljava/lang/Object;
.source "TianyanLoggingHolder.java"


# static fields
.field public static INSTANCE:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;


# instance fields
.field private a:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$LoggingHttpClientGetter;

.field private b:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;
    .locals 2

    const-class v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->INSTANCE:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;

    invoke-direct {v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;-><init>()V

    sput-object v1, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->INSTANCE:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;

    .line 18
    :cond_0
    sget-object v1, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->INSTANCE:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getLoggingHttpClientGetter()Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$LoggingHttpClientGetter;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->a:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$LoggingHttpClientGetter;

    return-object v0
.end method

.method public getTaskDiagnosis()Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->b:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;

    return-object v0
.end method

.method public setLoggingHttpClientGetter(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$LoggingHttpClientGetter;)V
    .locals 0
    .param p1, "loggingHttpClientGetter"    # Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$LoggingHttpClientGetter;

    .line 26
    iput-object p1, p0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->a:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$LoggingHttpClientGetter;

    .line 27
    return-void
.end method

.method public setTaskDiagnosis(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;)V
    .locals 0
    .param p1, "taskDiagnosis"    # Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;

    .line 34
    iput-object p1, p0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->b:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;

    .line 35
    return-void
.end method
