.class public Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;
.super Ljava/lang/Object;
.source "MPLifecycleInside.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/common/logging/api/BizType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "visibleActivityCount"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;->b:Z

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;->c:Ljava/util/Set;

    .line 18
    iput p1, p0, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;->a:I

    .line 19
    return-void
.end method


# virtual methods
.method public addBizType(Lcom/alipay/mobile/common/logging/api/BizType;)V
    .locals 1
    .param p1, "bizType"    # Lcom/alipay/mobile/common/logging/api/BizType;

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 24
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 65
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 42
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 37
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 60
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 28
    iget v0, p0, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;->a:I

    .line 29
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;->b:Z

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;->b:Z

    .line 32
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 46
    iget v0, p0, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;->a:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;->a:I

    .line 47
    if-gtz v0, :cond_0

    .line 48
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;->b:Z

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/MPLifecycleInside;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/logging/api/BizType;

    .line 52
    .local v1, "bizType":Lcom/alipay/mobile/common/logging/api/BizType;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->uploadAfterSync(Ljava/lang/String;)V

    .line 53
    .end local v1    # "bizType":Lcom/alipay/mobile/common/logging/api/BizType;
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method
