.class final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/SetupBundle$1;
.super Ljava/lang/Object;
.source "SetupBundle.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/SetupBundle;->setupBundle(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/SetupBundle$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getExternalExceptionInfo(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, "extInfo":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/SetupBundle$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/c;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    .line 31
    .local v2, "keys":Ljava/util/Set;
    move-object v2, v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 34
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    nop

    .end local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 40
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "keys":Ljava/util/Set;
    :cond_1
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "DynamicRelease"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method
