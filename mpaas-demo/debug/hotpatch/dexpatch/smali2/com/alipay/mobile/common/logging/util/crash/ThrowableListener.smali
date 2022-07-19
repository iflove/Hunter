.class public abstract Lcom/alipay/mobile/common/logging/util/crash/ThrowableListener;
.super Ljava/lang/Object;
.source "ThrowableListener.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/logging/util/crash/ThrowableListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/logging/util/crash/ThrowableListener;->a:Lcom/alipay/mobile/common/logging/util/crash/ThrowableListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addThrowableListener(Lcom/alipay/mobile/common/logging/util/crash/ThrowableListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/alipay/mobile/common/logging/util/crash/ThrowableListener;

    .line 12
    :try_start_0
    sput-object p0, Lcom/alipay/mobile/common/logging/util/crash/ThrowableListener;->a:Lcom/alipay/mobile/common/logging/util/crash/ThrowableListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 16
    return-void
.end method

.method public static processThrowable(Ljava/lang/String;)V
    .locals 1
    .param p0, "trString"    # Ljava/lang/String;

    .line 20
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/logging/util/crash/ThrowableListener;->a:Lcom/alipay/mobile/common/logging/util/crash/ThrowableListener;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/logging/util/crash/ThrowableListener;->onThrowable(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_0
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 26
    return-void
.end method


# virtual methods
.method public abstract onThrowable(Ljava/lang/String;)V
.end method
