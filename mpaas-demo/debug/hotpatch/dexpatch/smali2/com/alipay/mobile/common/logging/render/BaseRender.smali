.class public abstract Lcom/alipay/mobile/common/logging/render/BaseRender;
.super Ljava/lang/Object;
.source "BaseRender.java"


# static fields
.field protected static a:J


# instance fields
.field protected b:Lcom/alipay/mobile/common/logging/api/LogContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/common/logging/render/BaseRender;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V
    .locals 0
    .param p1, "logContext"    # Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/render/BaseRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 17
    return-void
.end method

.method protected static a()Ljava/lang/String;
    .locals 4

    .line 32
    sget-wide v0, Lcom/alipay/mobile/common/logging/render/BaseRender;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/alipay/mobile/common/logging/render/BaseRender;->a:J

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v1, Lcom/alipay/mobile/common/logging/render/BaseRender;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "target"    # Ljava/lang/String;

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    return-object p0

    .line 27
    :cond_0
    const-string v0, "\\$\\$"

    const-string v1, "**"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    return-object v0
.end method
