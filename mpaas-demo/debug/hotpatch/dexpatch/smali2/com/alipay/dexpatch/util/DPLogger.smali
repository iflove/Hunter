.class public Lcom/alipay/dexpatch/util/DPLogger;
.super Ljava/lang/Object;
.source "DPLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;

.field private static b:Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alipay/dexpatch/util/DPLogger$1;

    invoke-direct {v0}, Lcom/alipay/dexpatch/util/DPLogger$1;-><init>()V

    sput-object v0, Lcom/alipay/dexpatch/util/DPLogger;->a:Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;

    .line 38
    sput-object v0, Lcom/alipay/dexpatch/util/DPLogger;->b:Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/dexpatch/util/DPLogger;->b:Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/dexpatch/util/DPLogger;->b:Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getImpl()Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/dexpatch/util/DPLogger;->b:Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/dexpatch/util/DPLogger;->b:Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/dexpatch/util/DPLogger;->b:Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1, p2}, Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setDPLogImpl(Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/alipay/dexpatch/util/DPLogger;->b:Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/dexpatch/util/DPLogger;->b:Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/dexpatch/util/DPLogger;->b:Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
