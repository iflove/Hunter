.class Lcom/alipay/tianyan/mobilesdk/TianyanFactory$NullTianyanContext;
.super Ljava/lang/Object;
.source "TianyanFactory.java"

# interfaces
.implements Lcom/alipay/tianyan/mobilesdk/TianyanContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/tianyan/mobilesdk/TianyanFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullTianyanContext"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/tianyan/mobilesdk/TianyanFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/tianyan/mobilesdk/TianyanFactory$1;

    .line 31
    invoke-direct {p0}, Lcom/alipay/tianyan/mobilesdk/TianyanFactory$NullTianyanContext;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityAllStopped()V
    .locals 0

    .line 50
    # invokes: Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->a()V
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->access$100()V

    .line 51
    return-void
.end method

.method public onFrameworkActivityResume(Ljava/lang/String;)V
    .locals 0
    .param p1, "activityName"    # Ljava/lang/String;

    .line 45
    # invokes: Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->a()V
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->access$100()V

    .line 46
    return-void
.end method

.method public onFrameworkActivityUserLeavehint()V
    .locals 0

    .line 40
    # invokes: Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->a()V
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->access$100()V

    .line 41
    return-void
.end method

.method public onFrameworkBroughtToForeground()V
    .locals 0

    .line 35
    # invokes: Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->a()V
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->access$100()V

    .line 36
    return-void
.end method

.method public onPipelineClientStartup()V
    .locals 0

    .line 55
    # invokes: Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->a()V
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->access$100()V

    .line 56
    return-void
.end method
