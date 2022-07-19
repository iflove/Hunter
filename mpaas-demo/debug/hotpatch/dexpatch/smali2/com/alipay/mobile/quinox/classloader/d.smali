.class public Lcom/alipay/mobile/quinox/classloader/d;
.super Ljava/lang/Object;
.source "ThreadRelatedLock.java"


# static fields
.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/alipay/mobile/quinox/classloader/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/classloader/d;->b:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0
    .param p1, "threadId"    # J

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/alipay/mobile/quinox/classloader/d;->a:J

    .line 15
    return-void
.end method

.method public static a(J)Lcom/alipay/mobile/quinox/classloader/d;
    .locals 3
    .param p0, "threadId"    # J

    .line 31
    sget-object v0, Lcom/alipay/mobile/quinox/classloader/d;->b:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/d;

    const/4 v1, 0x0

    .line 32
    .local v1, "lock":Lcom/alipay/mobile/quinox/classloader/d;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/alipay/mobile/quinox/classloader/d;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/quinox/classloader/d;-><init>(J)V

    move-object v1, v0

    .line 34
    sget-object v0, Lcom/alipay/mobile/quinox/classloader/d;->b:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/alipay/mobile/quinox/classloader/d;->a:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThreadRelatedLock{mThreadId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/alipay/mobile/quinox/classloader/d;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
