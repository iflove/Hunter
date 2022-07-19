.class public Lcom/alipay/mobile/quinox/utils/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadUtil"

.field private static volatile sFakeThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/quinox/utils/ThreadUtil;->sFakeThreadId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentThreadId(J)J
    .locals 8
    .param p0, "defaultValue"    # J

    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    .local v1, "currentThread":Ljava/lang/Thread;
    move-object v1, v0

    if-nez v0, :cond_2

    .line 29
    move-wide v2, p0

    .line 30
    .local v2, "threadId":J
    const-wide/16 v4, 0x0

    cmp-long v0, p0, v4

    if-gez v0, :cond_1

    .line 31
    sget-wide v4, Lcom/alipay/mobile/quinox/utils/ThreadUtil;->sFakeThreadId:J

    const-wide v6, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    .line 32
    const-wide v4, 0x7fffffffffffffffL

    sput-wide v4, Lcom/alipay/mobile/quinox/utils/ThreadUtil;->sFakeThreadId:J

    .line 35
    :cond_0
    sget-wide v4, Lcom/alipay/mobile/quinox/utils/ThreadUtil;->sFakeThreadId:J

    const-wide/16 v6, 0x1

    sub-long v6, v4, v6

    sput-wide v6, Lcom/alipay/mobile/quinox/utils/ThreadUtil;->sFakeThreadId:J

    move-wide v2, v4

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Thread.currentThread() == null, return fake id : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ThreadUtil"

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-wide v2

    .line 42
    .end local v2    # "threadId":J
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getCurrentThreadName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "defaultValue"    # Ljava/lang/String;

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 49
    .local v2, "currentThread":Ljava/lang/Thread;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 50
    move-object v0, v1

    .line 51
    .local v0, "threadName":Ljava/lang/String;
    move-object v0, p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "fake_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/ThreadUtil;->getCurrentThreadId(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Thread.currentThread() == null, return fake name : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ThreadUtil"

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-object v0

    .line 59
    .end local v0    # "threadName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
