.class public Lcom/alipay/mobile/nebulax/engine/cube/a/e;
.super Ljava/lang/Object;
.source "LogHandlerAdapter.java"

# interfaces
.implements Lcom/antfin/cube/platform/handler/ICKLogHandler;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "MF_JS"

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jsLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/cube/a/e;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public log(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 19
    const/4 p1, 0x3

    if-eq p1, p2, :cond_3

    const/4 p1, 0x4

    if-eq p1, p2, :cond_3

    const/4 p1, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    const/4 p1, 0x6

    if-eq p1, p2, :cond_2

    const/4 p1, 0x7

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x5

    if-ne p1, p2, :cond_4

    .line 24
    invoke-static {p3, p4, p5}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 22
    :cond_2
    :goto_0
    invoke-static {p3, p4, p5}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 20
    :cond_3
    :goto_1
    invoke-static {p3, p4}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_4
    :goto_2
    return-void
.end method
