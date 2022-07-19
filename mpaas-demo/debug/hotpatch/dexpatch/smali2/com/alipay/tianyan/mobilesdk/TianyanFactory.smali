.class public Lcom/alipay/tianyan/mobilesdk/TianyanFactory;
.super Ljava/lang/Object;
.source "TianyanFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/tianyan/mobilesdk/TianyanFactory$NullTianyanContext;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TianyanFactory"

.field private static a:Lcom/alipay/tianyan/mobilesdk/TianyanContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/alipay/tianyan/mobilesdk/TianyanFactory$NullTianyanContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanFactory$NullTianyanContext;-><init>(Lcom/alipay/tianyan/mobilesdk/TianyanFactory$1;)V

    sput-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->a:Lcom/alipay/tianyan/mobilesdk/TianyanContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    const-string v1, "need invoke bind before use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "TianyanFactory"

    const-string v2, "reportNoInitialization"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 10
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->a()V

    return-void
.end method

.method public static bind(Lcom/alipay/tianyan/mobilesdk/TianyanContext;)V
    .locals 3
    .param p0, "tianyanContext"    # Lcom/alipay/tianyan/mobilesdk/TianyanContext;

    .line 21
    if-eqz p0, :cond_0

    .line 22
    sput-object p0, Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->a:Lcom/alipay/tianyan/mobilesdk/TianyanContext;

    .line 24
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TianyanFactory.bind invoked by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TianyanFactory"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static getTianyanContext()Lcom/alipay/tianyan/mobilesdk/TianyanContext;
    .locals 1

    .line 17
    sget-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanFactory;->a:Lcom/alipay/tianyan/mobilesdk/TianyanContext;

    return-object v0
.end method
