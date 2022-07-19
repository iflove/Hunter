.class Lcom/alipay/euler/andfix/log/a$a;
.super Lcom/alipay/euler/andfix/log/Logger;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/euler/andfix/log/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static b:Lcom/alipay/euler/andfix/log/a$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alipay/euler/andfix/log/Logger;-><init>()V

    .line 18
    return-void
.end method

.method public static a()Lcom/alipay/euler/andfix/log/a$a;
    .locals 2

    .line 23
    sget-object v0, Lcom/alipay/euler/andfix/log/a$a;->b:Lcom/alipay/euler/andfix/log/a$a;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lcom/alipay/euler/andfix/log/a$a;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/alipay/euler/andfix/log/a$a;->b:Lcom/alipay/euler/andfix/log/a$a;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/alipay/euler/andfix/log/a$a;

    invoke-direct {v1}, Lcom/alipay/euler/andfix/log/a$a;-><init>()V

    sput-object v1, Lcom/alipay/euler/andfix/log/a$a;->b:Lcom/alipay/euler/andfix/log/a$a;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/euler/andfix/log/a$a;->b:Lcom/alipay/euler/andfix/log/a$a;

    return-object v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 p1, 0x0

    return p1
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 59
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 p1, 0x0

    return p1
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 47
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 p1, 0x0

    return p1
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 35
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 p1, 0x0

    return p1
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 53
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 p1, 0x0

    return p1
.end method
